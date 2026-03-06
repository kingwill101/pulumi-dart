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
  const SlsGroupSlsGroupConfig({
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
      slsLogstore: pulumi.Input.fromValue(map['slsLogstore'] as String),
      slsProject: pulumi.Input.fromValue(map['slsProject'] as String),
      slsRegion: pulumi.Input.fromValue(map['slsRegion'] as String),
      slsUserId: (() { final guardedValue = map['slsUserId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

