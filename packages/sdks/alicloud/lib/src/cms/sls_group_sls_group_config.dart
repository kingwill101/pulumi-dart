// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SlsGroupSlsGroupConfig {
  /// The name of the Log Store.
  final pulumi.Input<String> slsLogstore;
  /// The name of the Project.
  final pulumi.Input<String> slsProject;
  /// The Sls Region.
  final pulumi.Input<String> slsRegion;
  /// The ID of the Sls User.
  final pulumi.Input<String>? slsUserId;

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
      slsLogstore: (map['slsLogstore'] as String).input(),
      slsProject: (map['slsProject'] as String).input(),
      slsRegion: (map['slsRegion'] as String).input(),
      slsUserId: map['slsUserId'] == null ? null : (map['slsUserId']! as String).input(),
    );
  }
}

