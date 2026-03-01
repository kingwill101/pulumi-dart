// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerservice_get_identity_binding_args_doc}
/// Arguments for getIdentityBinding.
/// {@endtemplate}
/// {@macro pulumi_containerservice_get_identity_binding_args_doc}
class GetIdentityBindingArgs {
  /// The name of the identity binding.
  final pulumi.Input<String> identityBindingName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the managed cluster resource.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetIdentityBindingArgs].
  /// [identityBindingName] The name of the identity binding.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the managed cluster resource.
  GetIdentityBindingArgs({
    required String identityBindingName,
    required String resourceGroupName,
    required String resourceName,
  }) :
      identityBindingName = pulumi.Input.asInput<String>(identityBindingName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityBindingName': identityBindingName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetIdentityBindingArgs.fromMap(Map<String, dynamic> map) {
    return GetIdentityBindingArgs(
      identityBindingName: map['identityBindingName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      resourceName: map['resourceName'] as String,
    );
  }
}

