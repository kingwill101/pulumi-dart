import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_account_args.dart';
import 'get_service_account_result.dart';

/// Use this data source to get the Account ID of the [AWS CloudTrail Service Account](http://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-supported-regions.html)
/// in a given region for the purpose of allowing CloudTrail to store trail data in S3.
///
/// > **Warning:** This data source is deprecated. The AWS documentation [states that](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/create-s3-bucket-policy-for-cloudtrail.html#troubleshooting-s3-bucket-policy) a [service principal name](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html#principal-services) should be used instead of an AWS account ID in any relevant IAM policy.
Future<GetServiceAccountResult> getServiceAccount(
  GetServiceAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudtrail/getServiceAccount:getServiceAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceAccountResult.fromMap(result);
}
