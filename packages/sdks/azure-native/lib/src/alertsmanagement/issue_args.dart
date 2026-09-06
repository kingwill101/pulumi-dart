// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'issue_properties.dart';

/// {@template pulumi_alertsmanagement_issue_args_doc}
/// The set of arguments for Issue.
/// {@endtemplate}
/// {@macro pulumi_alertsmanagement_issue_args_doc}
class IssueArgs {
  /// The name of the IssueResource
  final pulumi.Input<String?>? issueName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<IssueProperties?>? properties;
  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> resourceUri;

  /// Creates a new [IssueArgs].
  /// [issueName] The name of the IssueResource
  /// [properties] The resource-specific properties for this resource.
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the resource.
  const IssueArgs({
    this.issueName,
    this.properties,
    required this.resourceUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'issueName': ?issueName,
      'properties': ?pulumi.Input.mapOptionalInputValue<IssueProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceUri': resourceUri,
    };
  }

  factory IssueArgs.fromMap(Map<String, dynamic> map) {
    return IssueArgs(
      issueName: (() { final guardedValue = map['issueName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IssueProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceUri: pulumi.Input.fromValue(map['resourceUri'] as String),
    );
  }
}
