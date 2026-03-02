// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PhysicalConnection resources.
class PhysicalConnectionState {
  /// The access point ID of the Express Connect circuit.
  final pulumi.Input<String>? accessPointId;
  /// The maximum bandwidth of the hosted connection.
  final pulumi.Input<String>? bandwidth;
  /// The circuit code of the Express Connect circuit.
  final pulumi.Input<String>? circuitCode;
  /// The description of the Express Connect circuit.
  final pulumi.Input<String>? description;
  /// The connectivity provider of the Express Connect circuit. Valid values:
  /// - `CT`: China Telecom.
  /// - `CU`: China Unicom.
  /// - `CM`: China Mobile.
  /// - `CO`: Other connectivity providers in the Chinese mainland.
  /// - `Equinix`: Equinix.
  /// - `Other`: Other connectivity providers outside the Chinese mainland.
  final pulumi.Input<String>? lineOperator;
  /// The ID of the order that is placed. **Note:** `order_id` takes effect only if `status` is set to `Enabled`.
  final pulumi.Input<String>? orderId;
  /// The geographical location of the data center.
  final pulumi.Input<String>? peerLocation;
  /// The subscription duration. Valid values:
  /// - If `pricing_cycle` is set to `Month`. Valid values: `1` to `9`.
  /// - If `pricing_cycle` is set to `Year`. Valid values: `1` to `5`.
  final pulumi.Input<int>? period;
  /// The name of the Express Connect circuit.
  final pulumi.Input<String>? physicalConnectionName;
  /// The port type of the Express Connect circuit. Valid values:
  /// - `100Base-T`: 100 Mbit/s copper Ethernet port.
  /// - `1000Base-T`: 1000 Mbit/s copper Ethernet port.
  /// - `1000Base-LX`: 1000 Mbit/s single-mode optical port (10 km).
  /// - `10GBase-T`: 10000 Mbit/s copper Ethernet port.
  /// - `10GBase-LR`: 10000 Mbit/s single-mode optical port (10 km).
  /// - `40GBase-LR`: 40000 Mbit/s single-mode optical port.
  /// - `100GBase-LR`: 100000 Mbit/s single-mode optical port.
  /// > **NOTE:** From version 1.185.0, `port_type` can be set to `40GBase-LR`, `100GBase-LR`. From version 1.230.1, `port_type` cannot be modified.
  final pulumi.Input<String>? portType;
  /// The billing cycle of the subscription. Default value: `Month`. Valid values: `Month`, `Year`.
  /// > **NOTE:** `period` and `pricing_cycle` are valid only when `status` is set to `Enabled`.
  final pulumi.Input<String>? pricingCycle;
  /// The ID of the redundant Express Connect circuit. **NOTE:** From version 1.230.1, `redundant_physical_connection_id` cannot be modified.
  final pulumi.Input<String>? redundantPhysicalConnectionId;
  /// The status of the Express Connect circuit. Valid values: `Confirmed`, `Enabled`, `Canceled`, `Terminated`. **NOTE:** From version 1.230.1, `status` can be set to `Confirmed`. If you want to set `status` to `Enabled`, `period` must be set.
  final pulumi.Input<String>? status;
  /// The type of Express Connect circuit. Default value: `VPC`. Valid values: `VPC`.
  final pulumi.Input<String>? type;

  /// Creates a new [PhysicalConnectionState].
  /// [accessPointId] The access point ID of the Express Connect circuit.
  /// [bandwidth] The maximum bandwidth of the hosted connection.
  /// [circuitCode] The circuit code of the Express Connect circuit.
  /// [description] The description of the Express Connect circuit.
  /// [lineOperator] The connectivity provider of the Express Connect circuit. Valid values:
  /// [orderId] The ID of the order that is placed. **Note:** `order_id` takes effect only if `status` is set to `Enabled`.
  /// [peerLocation] The geographical location of the data center.
  /// [period] The subscription duration. Valid values:
  /// [physicalConnectionName] The name of the Express Connect circuit.
  /// [portType] The port type of the Express Connect circuit. Valid values:
  /// [pricingCycle] The billing cycle of the subscription. Default value: `Month`. Valid values: `Month`, `Year`.
  /// [redundantPhysicalConnectionId] The ID of the redundant Express Connect circuit. **NOTE:** From version 1.230.1, `redundant_physical_connection_id` cannot be modified.
  /// [status] The status of the Express Connect circuit. Valid values: `Confirmed`, `Enabled`, `Canceled`, `Terminated`. **NOTE:** From version 1.230.1, `status` can be set to `Confirmed`. If you want to set `status` to `Enabled`, `period` must be set.
  /// [type] The type of Express Connect circuit. Default value: `VPC`. Valid values: `VPC`.
  PhysicalConnectionState({
    this.accessPointId,
    this.bandwidth,
    this.circuitCode,
    this.description,
    this.lineOperator,
    this.orderId,
    this.peerLocation,
    this.period,
    this.physicalConnectionName,
    this.portType,
    this.pricingCycle,
    this.redundantPhysicalConnectionId,
    this.status,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPointId': ?accessPointId,
      'bandwidth': ?bandwidth,
      'circuitCode': ?circuitCode,
      'description': ?description,
      'lineOperator': ?lineOperator,
      'orderId': ?orderId,
      'peerLocation': ?peerLocation,
      'period': ?period,
      'physicalConnectionName': ?physicalConnectionName,
      'portType': ?portType,
      'pricingCycle': ?pricingCycle,
      'redundantPhysicalConnectionId': ?redundantPhysicalConnectionId,
      'status': ?status,
      'type': ?type,
    };
  }

  factory PhysicalConnectionState.fromMap(Map<String, dynamic> map) {
    return PhysicalConnectionState(
      accessPointId: map['accessPointId'] == null ? null : (map['accessPointId'] as String).input(),
      bandwidth: map['bandwidth'] == null ? null : (map['bandwidth'] as String).input(),
      circuitCode: map['circuitCode'] == null ? null : (map['circuitCode'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      lineOperator: map['lineOperator'] == null ? null : (map['lineOperator'] as String).input(),
      orderId: map['orderId'] == null ? null : (map['orderId'] as String).input(),
      peerLocation: map['peerLocation'] == null ? null : (map['peerLocation'] as String).input(),
      period: map['period'] == null ? null : (map['period'] as int).input(),
      physicalConnectionName: map['physicalConnectionName'] == null ? null : (map['physicalConnectionName'] as String).input(),
      portType: map['portType'] == null ? null : (map['portType'] as String).input(),
      pricingCycle: map['pricingCycle'] == null ? null : (map['pricingCycle'] as String).input(),
      redundantPhysicalConnectionId: map['redundantPhysicalConnectionId'] == null ? null : (map['redundantPhysicalConnectionId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

