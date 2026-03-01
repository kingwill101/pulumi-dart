// ignore_for_file: unused_element, unnecessary_cast

/// A test of an android application that explores the application on a virtual or physical Android device, finding culprits and crashes as it goes.
class AndroidRoboTest {
  /// The initial activity that should be used to start the app. Optional
  final String? appInitialActivity;

  /// The java package for the bootstrap. Optional
  final String? bootstrapPackageId;

  /// The runner class for the bootstrap. Optional
  final String? bootstrapRunnerClass;

  /// The max depth of the traversal stack Robo can explore. Optional
  final int? maxDepth;

  /// The max number of steps/actions Robo can execute. Default is no limit (0). Optional
  final int? maxSteps;

  /// Creates a new [AndroidRoboTest].
  /// [appInitialActivity] The initial activity that should be used to start the app. Optional
  /// [bootstrapPackageId] The java package for the bootstrap. Optional
  /// [bootstrapRunnerClass] The runner class for the bootstrap. Optional
  /// [maxDepth] The max depth of the traversal stack Robo can explore. Optional
  /// [maxSteps] The max number of steps/actions Robo can execute. Default is no limit (0). Optional
  AndroidRoboTest({
    this.appInitialActivity,
    this.bootstrapPackageId,
    this.bootstrapRunnerClass,
    this.maxDepth,
    this.maxSteps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appInitialActivity': ?appInitialActivity,
      'bootstrapPackageId': ?bootstrapPackageId,
      'bootstrapRunnerClass': ?bootstrapRunnerClass,
      'maxDepth': ?maxDepth,
      'maxSteps': ?maxSteps,
    };
  }

  factory AndroidRoboTest.fromMap(Map<String, dynamic> map) {
    return AndroidRoboTest(
      appInitialActivity: map['appInitialActivity'] == null
          ? null
          : map['appInitialActivity'] as String,
      bootstrapPackageId: map['bootstrapPackageId'] == null
          ? null
          : map['bootstrapPackageId'] as String,
      bootstrapRunnerClass: map['bootstrapRunnerClass'] == null
          ? null
          : map['bootstrapRunnerClass'] as String,
      maxDepth: map['maxDepth'] == null ? null : map['maxDepth'] as int,
      maxSteps: map['maxSteps'] == null ? null : map['maxSteps'] as int,
    );
  }
}
