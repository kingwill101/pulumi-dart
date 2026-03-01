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
    String? location,
    required String parentProviderNamespace,
    required String parentResourceName,
    required String parentResourceType,
    required dynamic properties,
    required String resourceGroupName,
    String? targetName,
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
      location: map['location'] == null ? null : map['location'] as String,
      parentProviderNamespace: map['parentProviderNamespace'] as String,
      parentResourceName: map['parentResourceName'] as String,
      parentResourceType: map['parentResourceType'] as String,
      properties: map['properties'],
      resourceGroupName: map['resourceGroupName'] as String,
      targetName: map['targetName'] == null ? null : map['targetName'] as String,
    );
  }
}

