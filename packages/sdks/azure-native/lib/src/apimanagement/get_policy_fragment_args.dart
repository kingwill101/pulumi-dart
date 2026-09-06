// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_get_policy_fragment_args_doc}
/// Arguments for getPolicyFragment.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_get_policy_fragment_args_doc}
class GetPolicyFragmentArgs {
  /// Policy fragment content format.
  final pulumi.Input<String?>? format;
  /// A resource identifier.
  final pulumi.Input<String> id;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetPolicyFragmentArgs].
  /// [format] Policy fragment content format.
  /// [id] A resource identifier.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  const GetPolicyFragmentArgs({
    this.format,
    required this.id,
    required this.resourceGroupName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'format': ?format,
      'id': id,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GetPolicyFragmentArgs.fromMap(Map<String, dynamic> map) {
    return GetPolicyFragmentArgs(
      format: (() { final guardedValue = map['format']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}
