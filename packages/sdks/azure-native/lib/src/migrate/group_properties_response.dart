// ignore_for_file: unused_element, unnecessary_cast


/// Properties of group resource.
class GroupPropertiesResponse {
  /// If the assessments are in running state.
  final bool areAssessmentsRunning;
  /// List of References to Assessments created on this group.
  final List<String> assessments;
  /// Time when this group was created. Date-Time represented in ISO-8601 format.
  final String createdTimestamp;
  /// Whether the group has been created and is valid.
  final String groupStatus;
  /// The type of group.
  final String? groupType;
  /// Number of machines part of this group.
  final int machineCount;
  /// Time when this group was last updated. Date-Time represented in ISO-8601 format.
  final String updatedTimestamp;

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
      areAssessmentsRunning: map['areAssessmentsRunning'] as bool,
      assessments: (map['assessments'] as List).cast<String>(),
      createdTimestamp: map['createdTimestamp'] as String,
      groupStatus: map['groupStatus'] as String,
      groupType: map['groupType'] == null ? null : map['groupType'] as String,
      machineCount: map['machineCount'] as int,
      updatedTimestamp: map['updatedTimestamp'] as String,
    );
  }
}

