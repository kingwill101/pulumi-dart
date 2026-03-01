// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_api_policy_args_doc}
/// The set of arguments for ApiPolicy.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_api_policy_args_doc}
class ApiPolicyArgs {
  /// API revision identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number.
  final pulumi.Input<String> apiId;
  /// Format of the policyContent.
  final pulumi.Input<String>? format;
  /// The identifier of the Policy.
  final pulumi.Input<String>? policyId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// Contents of the Policy as defined by the format.
  final pulumi.Input<String> value;

  /// Creates a new [ApiPolicyArgs].
  /// [apiId] API revision identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number.
  /// [format] Format of the policyContent.
  /// [policyId] The identifier of the Policy.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [value] Contents of the Policy as defined by the format.
  ApiPolicyArgs({
    required String apiId,
    String? format,
    String? policyId,
    required String resourceGroupName,
    required String serviceName,
    required String value,
  }) :
      apiId = pulumi.Input.asInput<String>(apiId),
      format = pulumi.Input.asOptionalInput<String>(format),
      policyId = pulumi.Input.asOptionalInput<String>(policyId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      value = pulumi.Input.asInput<String>(value);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'format': ?format,
      'policyId': ?policyId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'value': value,
    };
  }

  factory ApiPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ApiPolicyArgs(
      apiId: map['apiId'] as String,
      format: map['format'] == null ? null : map['format'] as String,
      policyId: map['policyId'] == null ? null : map['policyId'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serviceName: map['serviceName'] as String,
      value: map['value'] as String,
    );
  }
}

