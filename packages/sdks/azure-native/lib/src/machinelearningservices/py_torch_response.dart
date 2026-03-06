// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// PyTorch distribution configuration.
class PyTorchResponse {
  /// Enum to determine the job distribution type.
  /// Expected value is 'PyTorch'.
  final pulumi.Input<String> distributionType;
  /// Number of processes per node.
  final pulumi.Input<int>? processCountPerInstance;

  /// Creates a new [PyTorchResponse].
  /// [distributionType] Enum to determine the job distribution type.
  /// [processCountPerInstance] Number of processes per node.
  const PyTorchResponse({
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
      distributionType: pulumi.Input.fromValue(map['distributionType'] as String),
      processCountPerInstance: (() { final guardedValue = map['processCountPerInstance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

