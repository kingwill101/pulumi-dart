// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_policy_args_doc}
/// The set of arguments for Policy.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_policy_args_doc}
class PolicyArgs {
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

  /// Creates a new [PolicyArgs].
  /// [format] Format of the policyContent.
  /// [policyId] The identifier of the Policy.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [value] Contents of the Policy as defined by the format.
  PolicyArgs({
    String? format,
    String? policyId,
    required String resourceGroupName,
    required String serviceName,
    required String value,
  }) :
      format = pulumi.Input.asOptionalInput<String>(format),
      policyId = pulumi.Input.asOptionalInput<String>(policyId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      value = pulumi.Input.asInput<String>(value);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'format': ?format,
      'policyId': ?policyId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'value': value,
    };
  }

  factory PolicyArgs.fromMap(Map<String, dynamic> map) {
    return PolicyArgs(
      format: map['format'] == null ? null : map['format'] as String,
      policyId: map['policyId'] == null ? null : map['policyId'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serviceName: map['serviceName'] as String,
      value: map['value'] as String,
    );
  }
}

