// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrate_get_modernize_project_args_doc}
/// Arguments for getModernizeProject.
/// {@endtemplate}
/// {@macro pulumi_migrate_get_modernize_project_args_doc}
class GetModernizeProjectArgs {
  /// Modernize project name.
  final pulumi.Input<String> modernizeProjectName;
  /// Name of the Azure Resource Group that project is part of.
  final pulumi.Input<String> resourceGroupName;
  /// Azure Subscription Id in which project was created.
  final pulumi.Input<String>? subscriptionId;

  /// Creates a new [GetModernizeProjectArgs].
  /// [modernizeProjectName] Modernize project name.
  /// [resourceGroupName] Name of the Azure Resource Group that project is part of.
  /// [subscriptionId] Azure Subscription Id in which project was created.
  GetModernizeProjectArgs({
    required this.modernizeProjectName,
    required this.resourceGroupName,
    this.subscriptionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modernizeProjectName': modernizeProjectName,
      'resourceGroupName': resourceGroupName,
      'subscriptionId': ?subscriptionId,
    };
  }

  factory GetModernizeProjectArgs.fromMap(Map<String, dynamic> map) {
    return GetModernizeProjectArgs(
      modernizeProjectName: (map['modernizeProjectName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      subscriptionId: map['subscriptionId'] == null ? null : (map['subscriptionId'] as String).input(),
    );
  }
}

