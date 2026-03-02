// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerinstance_get_ngroup_args_doc}
/// Arguments for getNGroup.
/// {@endtemplate}
/// {@macro pulumi_containerinstance_get_ngroup_args_doc}
class GetNGroupArgs {
  /// The NGroups name.
  final pulumi.Input<String> ngroupsName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNGroupArgs].
  /// [ngroupsName] The NGroups name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetNGroupArgs({
    required this.ngroupsName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ngroupsName': ngroupsName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetNGroupArgs(
      ngroupsName: (map['ngroupsName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

