// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KernelCapabilities {
  /// Linux capabilities to add to the container.
  ///
  /// Fargate supports adding only `SYS_PTRACE`.
  final pulumi.Input<List<String>?>? add;
  /// Linux capabilities to remove from the container.
  final pulumi.Input<List<String>?>? drop;

  /// Creates a new [KernelCapabilities].
  /// [add] Linux capabilities to add to the container.
  /// [drop] Linux capabilities to remove from the container.
  const KernelCapabilities({
    this.add,
    this.drop,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'add': ?add,
      'drop': ?drop,
    };
  }

  factory KernelCapabilities.fromMap(Map<String, dynamic> map) {
    return KernelCapabilities(
      add: (() { final guardedValue = map['add']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      drop: (() { final guardedValue = map['drop']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
