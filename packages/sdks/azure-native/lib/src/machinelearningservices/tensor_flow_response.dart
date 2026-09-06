// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// TensorFlow distribution configuration.
class TensorFlowResponse {
  /// Enum to determine the job distribution type.
  /// Expected value is 'TensorFlow'.
  final pulumi.Input<String> distributionType;
  /// Number of parameter server tasks.
  final pulumi.Input<int?>? parameterServerCount;
  /// Number of workers. If not specified, will default to the instance count.
  final pulumi.Input<int?>? workerCount;

  /// Creates a new [TensorFlowResponse].
  /// [distributionType] Enum to determine the job distribution type.
  /// [parameterServerCount] Number of parameter server tasks.
  /// [workerCount] Number of workers. If not specified, will default to the instance count.
  TensorFlowResponse({
    required this.distributionType,
    pulumi.Input<int?>? parameterServerCount,
    this.workerCount,
  }) : parameterServerCount = parameterServerCount ?? pulumi.Input.fromValue(0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'distributionType': distributionType,
      'parameterServerCount': ?parameterServerCount,
      'workerCount': ?workerCount,
    };
  }

  factory TensorFlowResponse.fromMap(Map<String, dynamic> map) {
    return TensorFlowResponse(
      distributionType: pulumi.Input.fromValue(map['distributionType'] as String),
      parameterServerCount: (() { final guardedValue = map['parameterServerCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      workerCount: (() { final guardedValue = map['workerCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
