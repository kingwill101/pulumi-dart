// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'issue_properties.dart';

/// {@template pulumi_monitor_issue_args_doc}
/// The set of arguments for Issue.
/// {@endtemplate}
/// {@macro pulumi_monitor_issue_args_doc}
class IssueArgs {
  /// The name of the Azure Monitor Workspace. The name is case insensitive
  final pulumi.Input<String> azureMonitorWorkspaceName;
  /// The name of the IssueResource
  final pulumi.Input<String>? issueName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<IssueProperties>? properties;
  /// Related resource or alert that is to be added to the issue (default: empty - the issue will be created without any related resources or alerts)
  final pulumi.Input<String>? related;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Whether to automatically start an investigation once the issue is created (default: false)
  final pulumi.Input<bool>? startInvestigation;

  /// Creates a new [IssueArgs].
  /// [azureMonitorWorkspaceName] The name of the Azure Monitor Workspace. The name is case insensitive
  /// [issueName] The name of the IssueResource
  /// [properties] The resource-specific properties for this resource.
  /// [related] Related resource or alert that is to be added to the issue (default: empty - the issue will be created without any related resources or alerts)
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [startInvestigation] Whether to automatically start an investigation once the issue is created (default: false)
  IssueArgs({
    required pulumi.Output<String> azureMonitorWorkspaceName,
    pulumi.Output<String>? issueName,
    pulumi.Output<IssueProperties>? properties,
    pulumi.Output<String>? related,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<bool>? startInvestigation,
  }) :
      azureMonitorWorkspaceName = pulumi.Input.asInput<String>(azureMonitorWorkspaceName),
      issueName = pulumi.Input.asOptionalInput<String>(issueName),
      properties = pulumi.Input.asOptionalInput<IssueProperties>(properties),
      related = pulumi.Input.asOptionalInput<String>(related),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      startInvestigation = pulumi.Input.asOptionalInput<bool>(startInvestigation);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureMonitorWorkspaceName': azureMonitorWorkspaceName,
      'issueName': ?issueName,
      'properties': ?pulumi.Input.mapOptionalInputValue<IssueProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'related': ?related,
      'resourceGroupName': resourceGroupName,
      'startInvestigation': ?startInvestigation,
    };
  }

  factory IssueArgs.fromMap(Map<String, dynamic> map) {
    return IssueArgs(
      azureMonitorWorkspaceName: pulumi.Output.create<String>(map['azureMonitorWorkspaceName'] as String),
      issueName: map['issueName'] == null ? null : pulumi.Output.create<String>(map['issueName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<IssueProperties>(IssueProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      related: map['related'] == null ? null : pulumi.Output.create<String>(map['related'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      startInvestigation: map['startInvestigation'] == null ? null : pulumi.Output.create<bool>(map['startInvestigation'] as bool),
    );
  }
}

