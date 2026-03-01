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
    pulumi.Output<String>? accessPointId,
    pulumi.Output<String>? bandwidth,
    pulumi.Output<String>? circuitCode,
    pulumi.Output<String>? description,
    pulumi.Output<String>? lineOperator,
    pulumi.Output<String>? orderId,
    pulumi.Output<String>? peerLocation,
    pulumi.Output<int>? period,
    pulumi.Output<String>? physicalConnectionName,
    pulumi.Output<String>? portType,
    pulumi.Output<String>? pricingCycle,
    pulumi.Output<String>? redundantPhysicalConnectionId,
    pulumi.Output<String>? status,
    pulumi.Output<String>? type,
  }) :
      accessPointId = pulumi.Input.asOptionalInput<String>(accessPointId),
      bandwidth = pulumi.Input.asOptionalInput<String>(bandwidth),
      circuitCode = pulumi.Input.asOptionalInput<String>(circuitCode),
      description = pulumi.Input.asOptionalInput<String>(description),
      lineOperator = pulumi.Input.asOptionalInput<String>(lineOperator),
      orderId = pulumi.Input.asOptionalInput<String>(orderId),
      peerLocation = pulumi.Input.asOptionalInput<String>(peerLocation),
      period = pulumi.Input.asOptionalInput<int>(period),
      physicalConnectionName = pulumi.Input.asOptionalInput<String>(physicalConnectionName),
      portType = pulumi.Input.asOptionalInput<String>(portType),
      pricingCycle = pulumi.Input.asOptionalInput<String>(pricingCycle),
      redundantPhysicalConnectionId = pulumi.Input.asOptionalInput<String>(redundantPhysicalConnectionId),
      status = pulumi.Input.asOptionalInput<String>(status),
      type = pulumi.Input.asOptionalInput<String>(type);

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
      accessPointId: map['accessPointId'] == null ? null : pulumi.Output.create<String>(map['accessPointId'] as String),
      bandwidth: map['bandwidth'] == null ? null : pulumi.Output.create<String>(map['bandwidth'] as String),
      circuitCode: map['circuitCode'] == null ? null : pulumi.Output.create<String>(map['circuitCode'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      lineOperator: map['lineOperator'] == null ? null : pulumi.Output.create<String>(map['lineOperator'] as String),
      orderId: map['orderId'] == null ? null : pulumi.Output.create<String>(map['orderId'] as String),
      peerLocation: map['peerLocation'] == null ? null : pulumi.Output.create<String>(map['peerLocation'] as String),
      period: map['period'] == null ? null : pulumi.Output.create<int>(map['period'] as int),
      physicalConnectionName: map['physicalConnectionName'] == null ? null : pulumi.Output.create<String>(map['physicalConnectionName'] as String),
      portType: map['portType'] == null ? null : pulumi.Output.create<String>(map['portType'] as String),
      pricingCycle: map['pricingCycle'] == null ? null : pulumi.Output.create<String>(map['pricingCycle'] as String),
      redundantPhysicalConnectionId: map['redundantPhysicalConnectionId'] == null ? null : pulumi.Output.create<String>(map['redundantPhysicalConnectionId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

