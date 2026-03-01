// ignore_for_file: unused_element, unnecessary_cast


/// MPI distribution configuration.
class MpiResponse {
  /// Enum to determine the job distribution type.
  /// Expected value is 'Mpi'.
  final String distributionType;
  /// Number of processes per MPI node.
  final int? processCountPerInstance;

  /// Creates a new [MpiResponse].
  /// [distributionType] Enum to determine the job distribution type.
  /// [processCountPerInstance] Number of processes per MPI node.
  MpiResponse({
    required this.distributionType,
    this.processCountPerInstance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'distributionType': distributionType,
      'processCountPerInstance': ?processCountPerInstance,
    };
  }

  factory MpiResponse.fromMap(Map<String, dynamic> map) {
    return MpiResponse(
      distributionType: map['distributionType'] as String,
      processCountPerInstance: map['processCountPerInstance'] == null ? null : map['processCountPerInstance'] as int,
    );
  }
}

