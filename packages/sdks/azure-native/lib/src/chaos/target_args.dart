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
    pulumi.Output<String>? location,
    required pulumi.Output<String> parentProviderNamespace,
    required pulumi.Output<String> parentResourceName,
    required pulumi.Output<String> parentResourceType,
    required pulumi.Output<dynamic> properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? targetName,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      parentProviderNamespace = pulumi.Input.asInput<String>(parentProviderNamespace),
      parentResourceName = pulumi.Input.asInput<String>(parentResourceName),
      parentResourceType = pulumi.Input.asInput<String>(parentResourceType),
      properties = pulumi.Input.asInput<dynamic>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      targetName = pulumi.Input.asOptionalInput<String>(targetName);

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
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      parentProviderNamespace: pulumi.Output.create<String>(map['parentProviderNamespace'] as String),
      parentResourceName: pulumi.Output.create<String>(map['parentResourceName'] as String),
      parentResourceType: pulumi.Output.create<String>(map['parentResourceType'] as String),
      properties: pulumi.Output.create<dynamic>(map['properties']),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      targetName: map['targetName'] == null ? null : pulumi.Output.create<String>(map['targetName'] as String),
    );
  }
}

