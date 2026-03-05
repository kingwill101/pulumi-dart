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
    required this.azureMonitorWorkspaceName,
    this.issueName,
    this.properties,
    this.related,
    required this.resourceGroupName,
    this.startInvestigation,
  });

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
      azureMonitorWorkspaceName: pulumi.Input.fromValue(map['azureMonitorWorkspaceName'] as String),
      issueName: (() { final guardedValue = map['issueName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IssueProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      related: (() { final guardedValue = map['related']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      startInvestigation: (() { final guardedValue = map['startInvestigation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

