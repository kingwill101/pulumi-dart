// ignore_for_file: unused_element, unnecessary_cast


/// The predicted changes to the deployment stack management status of the resource.
class DeploymentStacksWhatIfResourceChangeResponseManagementStatusChange {
  /// The predicted value after the deployment is executed.
  final String? after;
  /// The predicted value before the deployment is executed.
  final String? before;

  /// Creates a new [DeploymentStacksWhatIfResourceChangeResponseManagementStatusChange].
  /// [after] The predicted value after the deployment is executed.
  /// [before] The predicted value before the deployment is executed.
  DeploymentStacksWhatIfResourceChangeResponseManagementStatusChange({
    this.after,
    this.before,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'after': ?after,
      'before': ?before,
    };
  }

  factory DeploymentStacksWhatIfResourceChangeResponseManagementStatusChange.fromMap(Map<String, dynamic> map) {
    return DeploymentStacksWhatIfResourceChangeResponseManagementStatusChange(
      after: map['after'] == null ? null : map['after'] as String,
      before: map['before'] == null ? null : map['before'] as String,
    );
  }
}

