// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_get_api_operation_policy_args_doc}
/// Arguments for getApiOperationPolicy.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_get_api_operation_policy_args_doc}
class GetApiOperationPolicyArgs {
  /// API revision identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number.
  final pulumi.Input<String> apiId;
  /// Policy Export Format.
  final pulumi.Input<String>? format;
  /// Operation identifier within an API. Must be unique in the current API Management service instance.
  final pulumi.Input<String> operationId;
  /// The identifier of the Policy.
  final pulumi.Input<String> policyId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetApiOperationPolicyArgs].
  /// [apiId] API revision identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number.
  /// [format] Policy Export Format.
  /// [operationId] Operation identifier within an API. Must be unique in the current API Management service instance.
  /// [policyId] The identifier of the Policy.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  GetApiOperationPolicyArgs({
    required pulumi.Output<String> apiId,
    pulumi.Output<String>? format,
    required pulumi.Output<String> operationId,
    required pulumi.Output<String> policyId,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
  }) :
      apiId = pulumi.Input.asInput<String>(apiId),
      format = pulumi.Input.asOptionalInput<String>(format),
      operationId = pulumi.Input.asInput<String>(operationId),
      policyId = pulumi.Input.asInput<String>(policyId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'format': ?format,
      'operationId': operationId,
      'policyId': policyId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GetApiOperationPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetApiOperationPolicyArgs(
      apiId: pulumi.Output.create<String>(map['apiId'] as String),
      format: map['format'] == null ? null : pulumi.Output.create<String>(map['format'] as String),
      operationId: pulumi.Output.create<String>(map['operationId'] as String),
      policyId: pulumi.Output.create<String>(map['policyId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
    );
  }
}

