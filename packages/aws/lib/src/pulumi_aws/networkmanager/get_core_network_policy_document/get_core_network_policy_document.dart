import 'package:pulumi/pulumi.dart';
import 'get_core_network_policy_document_args.dart';
import 'get_core_network_policy_document_result.dart';

/// Generates a Core Network policy document in JSON format for use with resources that expect core network policy documents such as `awscc_networkmanager_core_network`. It follows the API definition from the [core-network-policy documentation](https://docs.aws.amazon.com/vpc/latest/cloudwan/cloudwan-policies-json.html).
///
/// Using this data source to generate policy documents is *optional*. It is also valid to use literal JSON strings in your configuration or to use the `file` interpolation function to read a raw JSON policy document from a file.
///
///
///
/// ## Example Usage
///
/// ### Basic Example
///
///
///
/// `data.aws_networkmanager_core_network_policy_document.test.json` will evaluate to:
///
/// ```json
/// {
/// "version": "2021.12",
/// "core-network-configuration": {
/// "asn-ranges": [
/// "64512-64555"
/// ],
/// "vpn-ecmp-support": false,
/// "edge-locations": [
/// {
/// "location": "us-east-1",
/// "asn": 64512
/// },
/// {
/// "location": "eu-central-1",
/// "asn": 64513
/// }
/// ]
/// },
/// "segments": [
/// {
/// "name": "shared",
/// "description": "Segment for shared services",
/// "require-attachment-acceptance": true
/// },
/// {
/// "name": "prod",
/// "description": "Segment for prod services",
/// "require-attachment-acceptance": true
/// }
/// ],
/// "attachment-policies": [
/// {
/// "rule-number": 100,
/// "action": {
/// "association-method": "constant",
/// "segment": "shared"
/// },
/// "conditions": [
/// {
/// "type": "tag-value",
/// "operator": "equals",
/// "key": "segment",
/// "value": "shared"
/// }
/// ],
/// "condition-logic": "or"
/// },
/// {
/// "rule-number": 200,
/// "action": {
/// "association-method": "constant",
/// "segment": "prod"
/// },
/// "conditions": [
/// {
/// "type": "tag-value",
/// "operator": "equals",
/// "key": "segment",
/// "value": "prod"
/// }
/// ],
/// "condition-logic": "or"
/// }
/// ],
/// "segment-actions": [
/// {
/// "action": "share",
/// "mode": "attachment-route",
/// "segment": "shared",
/// "share-with": "*"
/// }
/// ]
/// }
/// ```
Future<GetCoreNetworkPolicyDocumentResult> getCoreNetworkPolicyDocument(
  GetCoreNetworkPolicyDocumentArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:networkmanager/getCoreNetworkPolicyDocument:getCoreNetworkPolicyDocument',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCoreNetworkPolicyDocumentResult.fromMap(result);
}
