// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_binding_properties.dart';

/// {@template pulumi_containerservice_identity_binding_args_doc}
/// The set of arguments for IdentityBinding.
/// {@endtemplate}
/// {@macro pulumi_containerservice_identity_binding_args_doc}
class IdentityBindingArgs {
  /// The name of the identity binding.
  final pulumi.Input<String>? identityBindingName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<IdentityBindingProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the managed cluster resource.
  final pulumi.Input<String> resourceName;

  /// Creates a new [IdentityBindingArgs].
  /// [identityBindingName] The name of the identity binding.
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the managed cluster resource.
  const IdentityBindingArgs({
    this.identityBindingName,
    this.properties,
    required this.resourceGroupName,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityBindingName': ?identityBindingName,
      'properties': ?pulumi.Input.mapOptionalInputValue<IdentityBindingProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory IdentityBindingArgs.fromMap(Map<String, dynamic> map) {
    return IdentityBindingArgs(
      identityBindingName: (() { final guardedValue = map['identityBindingName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IdentityBindingProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
    );
  }
}

