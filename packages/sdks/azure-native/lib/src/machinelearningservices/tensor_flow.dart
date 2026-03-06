// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// TensorFlow distribution configuration.
class TensorFlow {
  /// Enum to determine the job distribution type.
  /// Expected value is 'TensorFlow'.
  final pulumi.Input<String> distributionType;
  /// Number of parameter server tasks.
  final pulumi.Input<int>? parameterServerCount;
  /// Number of workers. If not specified, will default to the instance count.
  final pulumi.Input<int>? workerCount;

  /// Creates a new [TensorFlow].
  /// [distributionType] Enum to determine the job distribution type.
  /// [parameterServerCount] Number of parameter server tasks.
  /// [workerCount] Number of workers. If not specified, will default to the instance count.
  const TensorFlow({
    required this.distributionType,
    this.parameterServerCount,
    this.workerCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'distributionType': distributionType,
      'parameterServerCount': ?parameterServerCount,
      'workerCount': ?workerCount,
    };
  }

  factory TensorFlow.fromMap(Map<String, dynamic> map) {
    return TensorFlow(
      distributionType: pulumi.Input.fromValue(map['distributionType'] as String),
      parameterServerCount: (() { final guardedValue = map['parameterServerCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      workerCount: (() { final guardedValue = map['workerCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

