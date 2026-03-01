// ignore_for_file: unused_element, unnecessary_cast


class SlsGroupSlsGroupConfig {
  /// The name of the Log Store.
  final String slsLogstore;
  /// The name of the Project.
  final String slsProject;
  /// The Sls Region.
  final String slsRegion;
  /// The ID of the Sls User.
  final String? slsUserId;

  /// Creates a new [SlsGroupSlsGroupConfig].
  /// [slsLogstore] The name of the Log Store.
  /// [slsProject] The name of the Project.
  /// [slsRegion] The Sls Region.
  /// [slsUserId] The ID of the Sls User.
  SlsGroupSlsGroupConfig({
    required this.slsLogstore,
    required this.slsProject,
    required this.slsRegion,
    this.slsUserId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'slsLogstore': slsLogstore,
      'slsProject': slsProject,
      'slsRegion': slsRegion,
      'slsUserId': ?slsUserId,
    };
  }

  factory SlsGroupSlsGroupConfig.fromMap(Map<String, dynamic> map) {
    return SlsGroupSlsGroupConfig(
      slsLogstore: map['slsLogstore'] as String,
      slsProject: map['slsProject'] as String,
      slsRegion: map['slsRegion'] as String,
      slsUserId: map['slsUserId'] == null ? null : map['slsUserId'] as String,
    );
  }
}

