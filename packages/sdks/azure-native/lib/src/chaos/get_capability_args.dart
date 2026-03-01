// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_chaos_get_capability_args_doc}
/// Arguments for getCapability.
/// {@endtemplate}
/// {@macro pulumi_chaos_get_capability_args_doc}
class GetCapabilityArgs {
  /// String that represents a Capability resource name.
  final pulumi.Input<String> capabilityName;
  /// String that represents a resource provider namespace.
  final pulumi.Input<String> parentProviderNamespace;
  /// String that represents a resource name.
  final pulumi.Input<String> parentResourceName;
  /// String that represents a resource type.
  final pulumi.Input<String> parentResourceType;
  /// String that represents an Azure resource group.
  final pulumi.Input<String> resourceGroupName;
  /// String that represents a Target resource name.
  final pulumi.Input<String> targetName;

  /// Creates a new [GetCapabilityArgs].
  /// [capabilityName] String that represents a Capability resource name.
  /// [parentProviderNamespace] String that represents a resource provider namespace.
  /// [parentResourceName] String that represents a resource name.
  /// [parentResourceType] String that represents a resource type.
  /// [resourceGroupName] String that represents an Azure resource group.
  /// [targetName] String that represents a Target resource name.
  GetCapabilityArgs({
    required pulumi.Output<String> capabilityName,
    required pulumi.Output<String> parentProviderNamespace,
    required pulumi.Output<String> parentResourceName,
    required pulumi.Output<String> parentResourceType,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> targetName,
  }) :
      capabilityName = pulumi.Input.asInput<String>(capabilityName),
      parentProviderNamespace = pulumi.Input.asInput<String>(parentProviderNamespace),
      parentResourceName = pulumi.Input.asInput<String>(parentResourceName),
      parentResourceType = pulumi.Input.asInput<String>(parentResourceType),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      targetName = pulumi.Input.asInput<String>(targetName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capabilityName': capabilityName,
      'parentProviderNamespace': parentProviderNamespace,
      'parentResourceName': parentResourceName,
      'parentResourceType': parentResourceType,
      'resourceGroupName': resourceGroupName,
      'targetName': targetName,
    };
  }

  factory GetCapabilityArgs.fromMap(Map<String, dynamic> map) {
    return GetCapabilityArgs(
      capabilityName: pulumi.Output.create<String>(map['capabilityName'] as String),
      parentProviderNamespace: pulumi.Output.create<String>(map['parentProviderNamespace'] as String),
      parentResourceName: pulumi.Output.create<String>(map['parentResourceName'] as String),
      parentResourceType: pulumi.Output.create<String>(map['parentResourceType'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      targetName: pulumi.Output.create<String>(map['targetName'] as String),
    );
  }
}

