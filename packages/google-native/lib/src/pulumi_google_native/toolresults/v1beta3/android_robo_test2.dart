// ignore_for_file: unused_element, unnecessary_cast

/// A test of an android application that explores the application on a virtual or physical Android device, finding culprits and crashes as it goes.
class AndroidRoboTest2 {
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

  AndroidRoboTest2({
    this.appInitialActivity,
    this.bootstrapPackageId,
    this.bootstrapRunnerClass,
    this.maxDepth,
    this.maxSteps,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final appInitialActivityValue = appInitialActivity;
    if (appInitialActivityValue != null) {
      map['appInitialActivity'] = appInitialActivityValue;
    }
    final bootstrapPackageIdValue = bootstrapPackageId;
    if (bootstrapPackageIdValue != null) {
      map['bootstrapPackageId'] = bootstrapPackageIdValue;
    }
    final bootstrapRunnerClassValue = bootstrapRunnerClass;
    if (bootstrapRunnerClassValue != null) {
      map['bootstrapRunnerClass'] = bootstrapRunnerClassValue;
    }
    final maxDepthValue = maxDepth;
    if (maxDepthValue != null) {
      map['maxDepth'] = maxDepthValue;
    }
    final maxStepsValue = maxSteps;
    if (maxStepsValue != null) {
      map['maxSteps'] = maxStepsValue;
    }
    return map;
  }

  factory AndroidRoboTest2.fromMap(Map<String, dynamic> map) {
    return AndroidRoboTest2(
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
