// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// PyTorch distribution configuration.
class PyTorch {
  /// Enum to determine the job distribution type.
  /// Expected value is 'PyTorch'.
  final pulumi.Input<String> distributionType;

  /// Number of processes per node.
  final pulumi.Input<int>? processCountPerInstance;

  /// Creates a new [PyTorch].
  /// [distributionType] Enum to determine the job distribution type.
  /// [processCountPerInstance] Number of processes per node.
  PyTorch({required this.distributionType, this.processCountPerInstance});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'distributionType': distributionType,
      'processCountPerInstance': ?processCountPerInstance,
    };
  }

  factory PyTorch.fromMap(Map<String, dynamic> map) {
    return PyTorch(
      distributionType: pulumi.Input.fromValue(
        map['distributionType'] as String,
      ),
      processCountPerInstance: (() {
        final guardedValue = map['processCountPerInstance'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
