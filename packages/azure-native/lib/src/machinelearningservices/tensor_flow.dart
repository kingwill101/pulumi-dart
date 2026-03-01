// ignore_for_file: unused_element, unnecessary_cast


/// TensorFlow distribution configuration.
class TensorFlow {
  /// Enum to determine the job distribution type.
  /// Expected value is 'TensorFlow'.
  final String distributionType;
  /// Number of parameter server tasks.
  final int? parameterServerCount;
  /// Number of workers. If not specified, will default to the instance count.
  final int? workerCount;

  /// Creates a new [TensorFlow].
  /// [distributionType] Enum to determine the job distribution type.
  /// [parameterServerCount] Number of parameter server tasks.
  /// [workerCount] Number of workers. If not specified, will default to the instance count.
  TensorFlow({
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
      distributionType: map['distributionType'] as String,
      parameterServerCount: map['parameterServerCount'] == null ? null : map['parameterServerCount'] as int,
      workerCount: map['workerCount'] == null ? null : map['workerCount'] as int,
    );
  }
}

