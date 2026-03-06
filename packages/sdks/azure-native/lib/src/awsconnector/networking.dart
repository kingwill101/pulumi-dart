// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monthly_transfer.dart';
import 'port.dart';

/// Definition of Networking
class Networking {
  /// Monthly Transfer of the Instance.
  final pulumi.Input<MonthlyTransfer>? monthlyTransfer;
  /// Ports to the Instance.
  final pulumi.Input<List<Port>>? ports;

  /// Creates a new [Networking].
  /// [monthlyTransfer] Monthly Transfer of the Instance.
  /// [ports] Ports to the Instance.
  const Networking({
    this.monthlyTransfer,
    this.ports,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'monthlyTransfer': ?pulumi.Input.mapOptionalInputValue<MonthlyTransfer, Map<String, dynamic>>(monthlyTransfer, (value) => value.toMap()),
      'ports': ?pulumi.Input.mapOptionalInputValue<List<Port>, List<Map<String, dynamic>>>(ports, (value) => pulumi.Input.encodeList<Port, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory Networking.fromMap(Map<String, dynamic> map) {
    return Networking(
      monthlyTransfer: (() { final guardedValue = map['monthlyTransfer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MonthlyTransfer.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ports: (() { final guardedValue = map['ports']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Port>(guardedValue, (value) => Port.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

