import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_account_elb_args.dart';
import 'get_service_account_elb_result.dart';

/// Use this data source to get the Account ID of the [AWS Elastic Load Balancing Service Account](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-access-logs.html#attach-bucket-policy)
/// in a given region for the purpose of permitting in S3 bucket policy.
///
/// > **Note:** For AWS Regions opened since Jakarta (`ap-southeast-3`) in December 2021, AWS [documents that](https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-access-logs.html#attach-bucket-policy) a [service principal name](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html#principal-services) should be used instead of an AWS account ID in any relevant IAM policy.
Future<GetServiceAccountElbResult> getServiceAccountElb(
  GetServiceAccountElbArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:elb/getServiceAccount:getServiceAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceAccountElbResult.fromMap(result);
}
