// ignore_for_file: unused_element, unnecessary_cast


/// Recovery plan script action details.
class RecoveryPlanScriptActionDetails {
  /// The fabric location.
  final String fabricLocation;
  /// Gets the type of action details (see RecoveryPlanActionDetailsTypes enum for possible values).
  /// Expected value is 'ScriptActionDetails'.
  final String instanceType;
  /// The script path.
  final String path;
  /// The script timeout.
  final String? timeout;

  /// Creates a new [RecoveryPlanScriptActionDetails].
  /// [fabricLocation] The fabric location.
  /// [instanceType] Gets the type of action details (see RecoveryPlanActionDetailsTypes enum for possible values).
  /// [path] The script path.
  /// [timeout] The script timeout.
  RecoveryPlanScriptActionDetails({
    required this.fabricLocation,
    required this.instanceType,
    required this.path,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fabricLocation': fabricLocation,
      'instanceType': instanceType,
      'path': path,
      'timeout': ?timeout,
    };
  }

  factory RecoveryPlanScriptActionDetails.fromMap(Map<String, dynamic> map) {
    return RecoveryPlanScriptActionDetails(
      fabricLocation: map['fabricLocation'] as String,
      instanceType: map['instanceType'] as String,
      path: map['path'] as String,
      timeout: map['timeout'] == null ? null : map['timeout'] as String,
    );
  }
}

