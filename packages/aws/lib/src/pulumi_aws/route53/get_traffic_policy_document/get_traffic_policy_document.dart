import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_traffic_policy_document_args.dart';
import 'get_traffic_policy_document_result.dart';

/// Generates an Route53 traffic policy document in JSON format for use with resources that expect policy documents such as `aws.route53.TrafficPolicy`.
///
/// ## Example Usage
///
/// ### Basic Example
///
///
///
/// ### Complex Example
///
/// The following example showcases the use of nested rules within the traffic policy document and introduces the `geoproximity` rule type.
Future<GetTrafficPolicyDocumentResult> getTrafficPolicyDocument(
  GetTrafficPolicyDocumentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:route53/getTrafficPolicyDocument:getTrafficPolicyDocument',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTrafficPolicyDocumentResult.fromMap(result);
}
