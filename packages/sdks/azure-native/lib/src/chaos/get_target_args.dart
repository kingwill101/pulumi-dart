// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_chaos_get_target_args_doc}
/// Arguments for getTarget.
/// {@endtemplate}
/// {@macro pulumi_chaos_get_target_args_doc}
class GetTargetArgs {
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

  /// Creates a new [GetTargetArgs].
  /// [parentProviderNamespace] String that represents a resource provider namespace.
  /// [parentResourceName] String that represents a resource name.
  /// [parentResourceType] String that represents a resource type.
  /// [resourceGroupName] String that represents an Azure resource group.
  /// [targetName] String that represents a Target resource name.
  GetTargetArgs({
    required this.parentProviderNamespace,
    required this.parentResourceName,
    required this.parentResourceType,
    required this.resourceGroupName,
    required this.targetName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parentProviderNamespace': parentProviderNamespace,
      'parentResourceName': parentResourceName,
      'parentResourceType': parentResourceType,
      'resourceGroupName': resourceGroupName,
      'targetName': targetName,
    };
  }

  factory GetTargetArgs.fromMap(Map<String, dynamic> map) {
    return GetTargetArgs(
      parentProviderNamespace: (map['parentProviderNamespace'] as String).input(),
      parentResourceName: (map['parentResourceName'] as String).input(),
      parentResourceType: (map['parentResourceType'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      targetName: (map['targetName'] as String).input(),
    );
  }
}

