// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of group resource.
class GroupPropertiesResponse {
  /// If the assessments are in running state.
  final pulumi.Input<bool> areAssessmentsRunning;
  /// List of References to Assessments created on this group.
  final pulumi.Input<List<String>> assessments;
  /// Time when this group was created. Date-Time represented in ISO-8601 format.
  final pulumi.Input<String> createdTimestamp;
  /// Whether the group has been created and is valid.
  final pulumi.Input<String> groupStatus;
  /// The type of group.
  final pulumi.Input<String>? groupType;
  /// Number of machines part of this group.
  final pulumi.Input<int> machineCount;
  /// Time when this group was last updated. Date-Time represented in ISO-8601 format.
  final pulumi.Input<String> updatedTimestamp;

  /// Creates a new [GroupPropertiesResponse].
  /// [areAssessmentsRunning] If the assessments are in running state.
  /// [assessments] List of References to Assessments created on this group.
  /// [createdTimestamp] Time when this group was created. Date-Time represented in ISO-8601 format.
  /// [groupStatus] Whether the group has been created and is valid.
  /// [groupType] The type of group.
  /// [machineCount] Number of machines part of this group.
  /// [updatedTimestamp] Time when this group was last updated. Date-Time represented in ISO-8601 format.
  GroupPropertiesResponse({
    required this.areAssessmentsRunning,
    required this.assessments,
    required this.createdTimestamp,
    required this.groupStatus,
    this.groupType,
    required this.machineCount,
    required this.updatedTimestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'areAssessmentsRunning': areAssessmentsRunning,
      'assessments': assessments,
      'createdTimestamp': createdTimestamp,
      'groupStatus': groupStatus,
      'groupType': ?groupType,
      'machineCount': machineCount,
      'updatedTimestamp': updatedTimestamp,
    };
  }

  factory GroupPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return GroupPropertiesResponse(
      areAssessmentsRunning: (map['areAssessmentsRunning'] as bool).input(),
      assessments: ((map['assessments'] as List).cast<String>()).input(),
      createdTimestamp: (map['createdTimestamp'] as String).input(),
      groupStatus: (map['groupStatus'] as String).input(),
      groupType: map['groupType'] == null ? null : (map['groupType'] as String).input(),
      machineCount: (map['machineCount'] as int).input(),
      updatedTimestamp: (map['updatedTimestamp'] as String).input(),
    );
  }
}

