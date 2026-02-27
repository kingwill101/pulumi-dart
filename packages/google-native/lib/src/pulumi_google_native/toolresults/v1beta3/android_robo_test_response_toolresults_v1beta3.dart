// ignore_for_file: unused_element, unnecessary_cast

/// A test of an android application that explores the application on a virtual or physical Android device, finding culprits and crashes as it goes.
class AndroidRoboTestResponseToolresultsV1beta3 {
  /// The initial activity that should be used to start the app. Optional
  final String appInitialActivity;

  /// The java package for the bootstrap. Optional
  final String bootstrapPackageId;

  /// The runner class for the bootstrap. Optional
  final String bootstrapRunnerClass;

  /// The max depth of the traversal stack Robo can explore. Optional
  final int maxDepth;

  /// The max number of steps/actions Robo can execute. Default is no limit (0). Optional
  final int maxSteps;

  AndroidRoboTestResponseToolresultsV1beta3({
    required this.appInitialActivity,
    required this.bootstrapPackageId,
    required this.bootstrapRunnerClass,
    required this.maxDepth,
    required this.maxSteps,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appInitialActivity'] = appInitialActivity;
    map['bootstrapPackageId'] = bootstrapPackageId;
    map['bootstrapRunnerClass'] = bootstrapRunnerClass;
    map['maxDepth'] = maxDepth;
    map['maxSteps'] = maxSteps;
    return map;
  }

  factory AndroidRoboTestResponseToolresultsV1beta3.fromMap(
      Map<String, dynamic> map) {
    return AndroidRoboTestResponseToolresultsV1beta3(
      appInitialActivity: map['appInitialActivity'] as String,
      bootstrapPackageId: map['bootstrapPackageId'] as String,
      bootstrapRunnerClass: map['bootstrapRunnerClass'] as String,
      maxDepth: map['maxDepth'] as int,
      maxSteps: map['maxSteps'] as int,
    );
  }
}
