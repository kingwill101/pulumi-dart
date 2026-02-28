// ignore_for_file: unused_element, unnecessary_cast

/// A test of an android application that explores the application on a virtual or physical Android device, finding culprits and crashes as it goes.
class AndroidRoboTestResponse {
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

  /// Creates a new [AndroidRoboTestResponse].
  /// [appInitialActivity] The initial activity that should be used to start the app. Optional
  /// [bootstrapPackageId] The java package for the bootstrap. Optional
  /// [bootstrapRunnerClass] The runner class for the bootstrap. Optional
  /// [maxDepth] The max depth of the traversal stack Robo can explore. Optional
  /// [maxSteps] The max number of steps/actions Robo can execute. Default is no limit (0). Optional
  AndroidRoboTestResponse({
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

  factory AndroidRoboTestResponse.fromMap(Map<String, dynamic> map) {
    return AndroidRoboTestResponse(
      appInitialActivity: map['appInitialActivity'] as String,
      bootstrapPackageId: map['bootstrapPackageId'] as String,
      bootstrapRunnerClass: map['bootstrapRunnerClass'] as String,
      maxDepth: map['maxDepth'] as int,
      maxSteps: map['maxSteps'] as int,
    );
  }
}
