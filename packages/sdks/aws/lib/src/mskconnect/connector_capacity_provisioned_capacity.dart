// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectorCapacityProvisionedCapacity {
  /// The number of microcontroller units (MCUs) allocated to each connector worker. Valid values: `1`, `2`, `4`, `8`. The default value is `1`.
  final pulumi.Input<int?>? mcuCount;
  /// The number of workers that are allocated to the connector.
  final pulumi.Input<int> workerCount;

  /// Creates a new [ConnectorCapacityProvisionedCapacity].
  /// [mcuCount] The number of microcontroller units (MCUs) allocated to each connector worker. Valid values: `1`, `2`, `4`, `8`. The default value is `1`.
  /// [workerCount] The number of workers that are allocated to the connector.
  const ConnectorCapacityProvisionedCapacity({
    this.mcuCount,
    required this.workerCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mcuCount': ?mcuCount,
      'workerCount': workerCount,
    };
  }

  factory ConnectorCapacityProvisionedCapacity.fromMap(Map<String, dynamic> map) {
    return ConnectorCapacityProvisionedCapacity(
      mcuCount: (() { final guardedValue = map['mcuCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      workerCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['workerCount'])),
    );
  }
}
