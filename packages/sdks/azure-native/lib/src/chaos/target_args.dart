// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_chaos_target_args_doc}
/// The set of arguments for Target.
/// {@endtemplate}
/// {@macro pulumi_chaos_target_args_doc}
class TargetArgs {
  /// Location of the target resource.
  final pulumi.Input<String>? location;
  /// String that represents a resource provider namespace.
  final pulumi.Input<String> parentProviderNamespace;
  /// String that represents a resource name.
  final pulumi.Input<String> parentResourceName;
  /// String that represents a resource type.
  final pulumi.Input<String> parentResourceType;
  /// The properties of the target resource.
  final pulumi.Input<dynamic> properties;
  /// String that represents an Azure resource group.
  final pulumi.Input<String> resourceGroupName;
  /// String that represents a Target resource name.
  final pulumi.Input<String>? targetName;

  /// Creates a new [TargetArgs].
  /// [location] Location of the target resource.
  /// [parentProviderNamespace] String that represents a resource provider namespace.
  /// [parentResourceName] String that represents a resource name.
  /// [parentResourceType] String that represents a resource type.
  /// [properties] The properties of the target resource.
  /// [resourceGroupName] String that represents an Azure resource group.
  /// [targetName] String that represents a Target resource name.
  TargetArgs({
    this.location,
    required this.parentProviderNamespace,
    required this.parentResourceName,
    required this.parentResourceType,
    required this.properties,
    required this.resourceGroupName,
    this.targetName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'parentProviderNamespace': parentProviderNamespace,
      'parentResourceName': parentResourceName,
      'parentResourceType': parentResourceType,
      'properties': properties,
      'resourceGroupName': resourceGroupName,
      'targetName': ?targetName,
    };
  }

  factory TargetArgs.fromMap(Map<String, dynamic> map) {
    return TargetArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parentProviderNamespace: pulumi.Input.fromValue(map['parentProviderNamespace'] as String),
      parentResourceName: pulumi.Input.fromValue(map['parentResourceName'] as String),
      parentResourceType: pulumi.Input.fromValue(map['parentResourceType'] as String),
      properties: pulumi.Input.fromValue(map['properties']),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      targetName: (() { final guardedValue = map['targetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

