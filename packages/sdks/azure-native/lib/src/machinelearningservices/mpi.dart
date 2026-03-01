// ignore_for_file: unused_element, unnecessary_cast


/// MPI distribution configuration.
class Mpi {
  /// Enum to determine the job distribution type.
  /// Expected value is 'Mpi'.
  final String distributionType;
  /// Number of processes per MPI node.
  final int? processCountPerInstance;

  /// Creates a new [Mpi].
  /// [distributionType] Enum to determine the job distribution type.
  /// [processCountPerInstance] Number of processes per MPI node.
  Mpi({
    required this.distributionType,
    this.processCountPerInstance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'distributionType': distributionType,
      'processCountPerInstance': ?processCountPerInstance,
    };
  }

  factory Mpi.fromMap(Map<String, dynamic> map) {
    return Mpi(
      distributionType: map['distributionType'] as String,
      processCountPerInstance: map['processCountPerInstance'] == null ? null : map['processCountPerInstance'] as int,
    );
  }
}

