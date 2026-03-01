// ignore_for_file: unused_element, unnecessary_cast


class GetSlsGroupsGroupSlsGroupConfig {
  /// The name of the Log Store.
  final String slsLogstore;
  /// The name of the Project.
  final String slsProject;
  /// The Sls Region.
  final String slsRegion;
  /// The ID of the Sls User.
  final String slsUserId;

  /// Creates a new [GetSlsGroupsGroupSlsGroupConfig].
  /// [slsLogstore] The name of the Log Store.
  /// [slsProject] The name of the Project.
  /// [slsRegion] The Sls Region.
  /// [slsUserId] The ID of the Sls User.
  GetSlsGroupsGroupSlsGroupConfig({
    required this.slsLogstore,
    required this.slsProject,
    required this.slsRegion,
    required this.slsUserId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'slsLogstore': slsLogstore,
      'slsProject': slsProject,
      'slsRegion': slsRegion,
      'slsUserId': slsUserId,
    };
  }

  factory GetSlsGroupsGroupSlsGroupConfig.fromMap(Map<String, dynamic> map) {
    return GetSlsGroupsGroupSlsGroupConfig(
      slsLogstore: map['slsLogstore'] as String,
      slsProject: map['slsProject'] as String,
      slsRegion: map['slsRegion'] as String,
      slsUserId: map['slsUserId'] as String,
    );
  }
}

