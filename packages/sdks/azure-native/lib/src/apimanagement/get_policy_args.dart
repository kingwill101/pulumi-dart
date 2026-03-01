// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_get_policy_args_doc}
/// Arguments for getPolicy.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_get_policy_args_doc}
class GetPolicyArgs {
  /// Policy Export Format.
  final pulumi.Input<String>? format;
  /// The identifier of the Policy.
  final pulumi.Input<String> policyId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetPolicyArgs].
  /// [format] Policy Export Format.
  /// [policyId] The identifier of the Policy.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  GetPolicyArgs({
    pulumi.Output<String>? format,
    required pulumi.Output<String> policyId,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
  }) :
      format = pulumi.Input.asOptionalInput<String>(format),
      policyId = pulumi.Input.asInput<String>(policyId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'format': ?format,
      'policyId': policyId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GetPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetPolicyArgs(
      format: map['format'] == null ? null : pulumi.Output.create<String>(map['format'] as String),
      policyId: pulumi.Output.create<String>(map['policyId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
    );
  }
}

