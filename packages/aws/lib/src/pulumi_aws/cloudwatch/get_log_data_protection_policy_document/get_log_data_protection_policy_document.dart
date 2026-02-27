import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_log_data_protection_policy_document_args.dart';
import 'get_log_data_protection_policy_document_result.dart';

/// Generates a CloudWatch Log Group Data Protection Policy document in JSON format for use with the `aws.cloudwatch.LogDataProtectionPolicy` resource.
///
/// > For more information about data protection policies, see the [Help protect sensitive log data with masking](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/mask-sensitive-log-data.html).
Future<GetLogDataProtectionPolicyDocumentResult>
    getLogDataProtectionPolicyDocument(
  GetLogDataProtectionPolicyDocumentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudwatch/getLogDataProtectionPolicyDocument:getLogDataProtectionPolicyDocument',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLogDataProtectionPolicyDocumentResult.fromMap(result);
}
