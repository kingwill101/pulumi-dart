// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monthly_transfer.dart';
import 'port.dart';

/// Definition of Networking
class Networking {
  /// Monthly Transfer of the Instance.
  final MonthlyTransfer? monthlyTransfer;
  /// Ports to the Instance.
  final List<Port>? ports;

  /// Creates a new [Networking].
  /// [monthlyTransfer] Monthly Transfer of the Instance.
  /// [ports] Ports to the Instance.
  Networking({
    this.monthlyTransfer,
    this.ports,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'monthlyTransfer': ?monthlyTransfer == null ? null : monthlyTransfer!.toMap(),
      'ports': ?ports == null ? null : pulumi.Input.encodeList<Port, Map<String, dynamic>>(ports!, (value) => value.toMap()),
    };
  }

  factory Networking.fromMap(Map<String, dynamic> map) {
    return Networking(
      monthlyTransfer: map['monthlyTransfer'] == null ? null : MonthlyTransfer.fromMap((map['monthlyTransfer'] as Map).cast<String, dynamic>()),
      ports: map['ports'] == null ? null : pulumi.Input.decodeList<Port>(map['ports'], (value) => Port.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

