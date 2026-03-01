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
    required pulumi.Output<String> modernizeProjectName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? subscriptionId,
  }) :
      modernizeProjectName = pulumi.Input.asInput<String>(modernizeProjectName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      subscriptionId = pulumi.Input.asOptionalInput<String>(subscriptionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modernizeProjectName': modernizeProjectName,
      'resourceGroupName': resourceGroupName,
      'subscriptionId': ?subscriptionId,
    };
  }

  factory GetModernizeProjectArgs.fromMap(Map<String, dynamic> map) {
    return GetModernizeProjectArgs(
      modernizeProjectName: pulumi.Output.create<String>(map['modernizeProjectName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      subscriptionId: map['subscriptionId'] == null ? null : pulumi.Output.create<String>(map['subscriptionId'] as String),
    );
  }
}

