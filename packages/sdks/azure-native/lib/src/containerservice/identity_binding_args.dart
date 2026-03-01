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
  IdentityBindingArgs({
    pulumi.Output<String>? identityBindingName,
    pulumi.Output<IdentityBindingProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> resourceName,
  }) :
      identityBindingName = pulumi.Input.asOptionalInput<String>(identityBindingName),
      properties = pulumi.Input.asOptionalInput<IdentityBindingProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName);

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
      identityBindingName: map['identityBindingName'] == null ? null : pulumi.Output.create<String>(map['identityBindingName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<IdentityBindingProperties>(IdentityBindingProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: pulumi.Output.create<String>(map['resourceName'] as String),
    );
  }
}

