// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// MPI distribution configuration.
class MpiResponse {
  /// Enum to determine the job distribution type.
  /// Expected value is 'Mpi'.
  final pulumi.Input<String> distributionType;
  /// Number of processes per MPI node.
  final pulumi.Input<int>? processCountPerInstance;

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
      distributionType: pulumi.Input.fromValue(map['distributionType'] as String),
      processCountPerInstance: (() { final guardedValue = map['processCountPerInstance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

