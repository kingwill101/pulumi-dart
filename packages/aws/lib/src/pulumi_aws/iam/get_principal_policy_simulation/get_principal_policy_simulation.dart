import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_principal_policy_simulation_args.dart';
import 'get_principal_policy_simulation_iam_result.dart';

/// Runs a simulation of the IAM policies of a particular principal against a given hypothetical request.
///
/// You can use this data source in conjunction with
/// Preconditions and Postconditions so that your configuration can test either whether it should have sufficient access to do its own work, or whether policies your configuration declares itself are sufficient for their intended use elsewhere.
///
/// > **Note:** Correctly using this data source requires familiarity with various details of AWS Identity and Access Management, and how various AWS services integrate with it. For general information on the AWS IAM policy simulator, see [Testing IAM policies with the IAM policy simulator](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_testing-policies.html). This data source wraps the `iam:SimulatePrincipalPolicy` API action described on that page.
///
/// ## Example Usage
///
/// ### Self Access-checking Example
///
/// The following example raises an error if the credentials passed to the AWS provider do not have access to perform the three actions `s3:GetObject`, `s3:PutObject`, and `s3:DeleteObject` on the S3 bucket with the given ARN.
///
///
///
/// If you intend to use this data source to quickly raise an error when the given credentials are insufficient then you must use `depends_on` inside any resource which would require those credentials, to ensure that the policy check will run first:
///
///
///
/// ### Testing the Effect of a Declared Policy
///
/// The following example declares an S3 bucket and a user that should have access to the bucket, and then uses `aws.iam.getPrincipalPolicySimulation` to verify that the user does indeed have access to perform needed operations against the bucket.
///
///
///
/// When using `aws.iam.getPrincipalPolicySimulation` to test the effect of a policy declared elsewhere in the same configuration, it's important to use `depends_on` to make sure that the needed policy has been fully created or updated before running the simulation.
Future<GetPrincipalPolicySimulationIamResult> getPrincipalPolicySimulation(
  GetPrincipalPolicySimulationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:iam/getPrincipalPolicySimulation:getPrincipalPolicySimulation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrincipalPolicySimulationIamResult.fromMap(result);
}
