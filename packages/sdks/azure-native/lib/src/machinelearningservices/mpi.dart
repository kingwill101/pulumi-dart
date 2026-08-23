// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// MPI distribution configuration.
class Mpi {
  /// Enum to determine the job distribution type.
  /// Expected value is 'Mpi'.
  final pulumi.Input<String> distributionType;
  /// Number of processes per MPI node.
  final pulumi.Input<int>? processCountPerInstance;

  /// Creates a new [Mpi].
  /// [distributionType] Enum to determine the job distribution type.
  /// [processCountPerInstance] Number of processes per MPI node.
  const Mpi({
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
      distributionType: pulumi.Input.fromValue(map['distributionType'] as String),
      processCountPerInstance: (() { final guardedValue = map['processCountPerInstance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
