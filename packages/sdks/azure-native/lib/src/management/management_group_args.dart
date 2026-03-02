// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'create_management_group_details.dart';

/// {@template pulumi_management_management_group_args_doc}
/// The set of arguments for ManagementGroup.
/// {@endtemplate}
/// {@macro pulumi_management_management_group_args_doc}
class ManagementGroupArgs {
  /// The details of a management group used during creation.
  final pulumi.Input<CreateManagementGroupDetails>? details;
  /// The friendly name of the management group. If no value is passed then this  field will be set to the groupId.
  final pulumi.Input<String>? displayName;
  /// Management Group ID.
  final pulumi.Input<String>? groupId;
  /// The name of the management group. For example, 00000000-0000-0000-0000-000000000000
  final pulumi.Input<String>? name;

  /// Creates a new [ManagementGroupArgs].
  /// [details] The details of a management group used during creation.
  /// [displayName] The friendly name of the management group. If no value is passed then this  field will be set to the groupId.
  /// [groupId] Management Group ID.
  /// [name] The name of the management group. For example, 00000000-0000-0000-0000-000000000000
  ManagementGroupArgs({
    this.details,
    this.displayName,
    this.groupId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'details': ?pulumi.Input.mapOptionalInputValue<CreateManagementGroupDetails, Map<String, dynamic>>(details, (value) => value.toMap()),
      'displayName': ?displayName,
      'groupId': ?groupId,
      'name': ?name,
    };
  }

  factory ManagementGroupArgs.fromMap(Map<String, dynamic> map) {
    return ManagementGroupArgs(
      details: map['details'] == null ? null : (CreateManagementGroupDetails.fromMap((map['details'] as Map).cast<String, dynamic>())).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      groupId: map['groupId'] == null ? null : (map['groupId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

