// ignore_for_file: unused_element, unnecessary_cast


/// PyTorch distribution configuration.
class PyTorchResponse {
  /// Enum to determine the job distribution type.
  /// Expected value is 'PyTorch'.
  final String distributionType;
  /// Number of processes per node.
  final int? processCountPerInstance;

  /// Creates a new [PyTorchResponse].
  /// [distributionType] Enum to determine the job distribution type.
  /// [processCountPerInstance] Number of processes per node.
  PyTorchResponse({
    required this.distributionType,
    this.processCountPerInstance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'distributionType': distributionType,
      'processCountPerInstance': ?processCountPerInstance,
    };
  }

  factory PyTorchResponse.fromMap(Map<String, dynamic> map) {
    return PyTorchResponse(
      distributionType: map['distributionType'] as String,
      processCountPerInstance: map['processCountPerInstance'] == null ? null : map['processCountPerInstance'] as int,
    );
  }
}

