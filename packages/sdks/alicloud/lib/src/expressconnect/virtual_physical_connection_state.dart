// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VirtualPhysicalConnection resources.
class VirtualPhysicalConnectionState {
  /// The ID of the access point of the physical connection.
  final pulumi.Input<String>? accessPointId;
  /// The physical location where the physical connection access device is located.
  final pulumi.Input<String>? adLocation;
  /// The bandwidth of the physical connection. Unit: Mbps.
  final pulumi.Input<String>? bandwidth;
  /// The commercial status of the physical line. Value:-**Normal**: activated.-**Financialized**: Arrears locked.-**SecurityLocked**: locked for security reasons.
  final pulumi.Input<String>? businessStatus;
  /// The circuit code provided by the operator for the physical connection.
  final pulumi.Input<String>? circuitCode;
  /// The creation time of the resource
  final pulumi.Input<String>? createTime;
  /// The description of the physical connection.
  final pulumi.Input<String>? description;
  /// Specifies whether to precheck the API request. Valid values: `true` and `false`.
  final pulumi.Input<bool>? dryRun;
  /// The opening time of the physical connection.
  final pulumi.Input<String>? enabledTime;
  /// The expiration time of the shared line.Time is expressed according to ISO8601 standard and UTC time is used. The format is: YYYY-MM-DDThh:mm:ssZ.
  final pulumi.Input<String>? endTime;
  /// The estimated bandwidth value of the shared line. Valid values: `50M`, `100M`, `200M`, `300M`, `400M`, `500M`, `1G`, `2G`, `5G`, `8G`, and `10G`. **Note**: By default, the values of 2G, 5G, 8G, and 10G are unavailable. If you want to specify these values, contact your customer manager. Unit: **M** indicates Mbps, **G** indicates Gbps.
  final pulumi.Input<String>? expectSpec;
  /// Operators that provide access to physical lines. Value:-**CT**: China Telecom.-**CU**: China Unicom.-**CM**: China Mobile.-**CO**: China Other.-**Equinix**:Equinix.-**Other**: Other abroad.
  final pulumi.Input<String>? lineOperator;
  /// The state of LOA. Value:-**Applying**:LOA application.-**Accept**:LOA application passed.-**Available**:LOA is Available.-**Rejected**:LOA application Rejected.-**Completing**: The dedicated line is under construction.-**Complete**: The construction of the dedicated line is completed.-**Deleted**:LOA has been Deleted.
  final pulumi.Input<String>? loaStatus;
  /// The payment method of shared dedicated line. Value:
  /// - **PayByPhysicalConnectionOwner**: indicates that the owner of the physical line associated with the shared line pays.
  /// - **PayByVirtualPhysicalConnectionOwner**: indicates that the owner of the shared line pays.
  final pulumi.Input<String>? orderMode;
  /// The ID of the Alibaba Cloud account (primary account) to which the physical connection belongs.
  final pulumi.Input<String>? parentPhysicalConnectionAliUid;
  /// The ID of the instance of the physical connection.
  final pulumi.Input<String>? parentPhysicalConnectionId;
  /// The geographic location of the local data center.
  final pulumi.Input<String>? peerLocation;
  /// The port number of the physical connection device.
  final pulumi.Input<String>? portNumber;
  /// Physical connection port type. Value:-**100Base-T**: 100 megabytes port.-**1000Base-T**: Gigabit port.-**1000Base-LX**: Gigabit single mode optical port (10km).-**10GBase-T**: 10 Gigabit port.-**10GBase-LR**: 10 Gigabit single mode optical port (10km).-**40GBase-LR**: 40 megabytes single-mode optical port.-**100GBase-LR**: 100,000 megabytes single-mode optical port.
  final pulumi.Input<String>? portType;
  /// The ID of the redundant physical connection.
  final pulumi.Input<String>? redundantPhysicalConnectionId;
  /// The resource group id.
  final pulumi.Input<String>? resourceGroupId;
  /// The bandwidth value of the shared line. Valid values: `50M`, `100M`, `200M`, `300M`, `400M`, `500M`, `1G`, `2G`, `5G`, `8G`, and `10G`. **Note**: By default, the values of 2G, 5G, 8G, and 10G are unavailable. If you want to specify these values, contact your customer manager. Unit: **M** indicates Mbps, **G** indicates Gbps.
  final pulumi.Input<String>? spec;
  /// The status of the resource
  final pulumi.Input<String>? status;
  /// The name of the physical connection.
  final pulumi.Input<String>? virtualPhysicalConnectionName;
  /// The business status of the shared line. Value:-**Confirmed**: The shared line has been Confirmed to receive.-**UnConfirmed**: The shared line has not been confirmed to be received.-**Deleted**: The shared line has been Deleted.
  final pulumi.Input<String>? virtualPhysicalConnectionStatus;
  /// The VLAN ID of the shared leased line. Valid values: `0` to `2999`.
  final pulumi.Input<int>? vlanId;
  /// The ID of the Alibaba Cloud account (primary account) of the owner of the shared line.
  final pulumi.Input<String>? vpconnAliUid;

  /// Creates a new [VirtualPhysicalConnectionState].
  /// [accessPointId] The ID of the access point of the physical connection.
  /// [adLocation] The physical location where the physical connection access device is located.
  /// [bandwidth] The bandwidth of the physical connection. Unit: Mbps.
  /// [businessStatus] The commercial status of the physical line. Value:-**Normal**: activated.-**Financialized**: Arrears locked.-**SecurityLocked**: locked for security reasons.
  /// [circuitCode] The circuit code provided by the operator for the physical connection.
  /// [createTime] The creation time of the resource
  /// [description] The description of the physical connection.
  /// [dryRun] Specifies whether to precheck the API request. Valid values: `true` and `false`.
  /// [enabledTime] The opening time of the physical connection.
  /// [endTime] The expiration time of the shared line.Time is expressed according to ISO8601 standard and UTC time is used. The format is: YYYY-MM-DDThh:mm:ssZ.
  /// [expectSpec] The estimated bandwidth value of the shared line. Valid values: `50M`, `100M`, `200M`, `300M`, `400M`, `500M`, `1G`, `2G`, `5G`, `8G`, and `10G`. **Note**: By default, the values of 2G, 5G, 8G, and 10G are unavailable. If you want to specify these values, contact your customer manager. Unit: **M** indicates Mbps, **G** indicates Gbps.
  /// [lineOperator] Operators that provide access to physical lines. Value:-**CT**: China Telecom.-**CU**: China Unicom.-**CM**: China Mobile.-**CO**: China Other.-**Equinix**:Equinix.-**Other**: Other abroad.
  /// [loaStatus] The state of LOA. Value:-**Applying**:LOA application.-**Accept**:LOA application passed.-**Available**:LOA is Available.-**Rejected**:LOA application Rejected.-**Completing**: The dedicated line is under construction.-**Complete**: The construction of the dedicated line is completed.-**Deleted**:LOA has been Deleted.
  /// [orderMode] The payment method of shared dedicated line. Value:
  /// [parentPhysicalConnectionAliUid] The ID of the Alibaba Cloud account (primary account) to which the physical connection belongs.
  /// [parentPhysicalConnectionId] The ID of the instance of the physical connection.
  /// [peerLocation] The geographic location of the local data center.
  /// [portNumber] The port number of the physical connection device.
  /// [portType] Physical connection port type. Value:-**100Base-T**: 100 megabytes port.-**1000Base-T**: Gigabit port.-**1000Base-LX**: Gigabit single mode optical port (10km).-**10GBase-T**: 10 Gigabit port.-**10GBase-LR**: 10 Gigabit single mode optical port (10km).-**40GBase-LR**: 40 megabytes single-mode optical port.-**100GBase-LR**: 100,000 megabytes single-mode optical port.
  /// [redundantPhysicalConnectionId] The ID of the redundant physical connection.
  /// [resourceGroupId] The resource group id.
  /// [spec] The bandwidth value of the shared line. Valid values: `50M`, `100M`, `200M`, `300M`, `400M`, `500M`, `1G`, `2G`, `5G`, `8G`, and `10G`. **Note**: By default, the values of 2G, 5G, 8G, and 10G are unavailable. If you want to specify these values, contact your customer manager. Unit: **M** indicates Mbps, **G** indicates Gbps.
  /// [status] The status of the resource
  /// [virtualPhysicalConnectionName] The name of the physical connection.
  /// [virtualPhysicalConnectionStatus] The business status of the shared line. Value:-**Confirmed**: The shared line has been Confirmed to receive.-**UnConfirmed**: The shared line has not been confirmed to be received.-**Deleted**: The shared line has been Deleted.
  /// [vlanId] The VLAN ID of the shared leased line. Valid values: `0` to `2999`.
  /// [vpconnAliUid] The ID of the Alibaba Cloud account (primary account) of the owner of the shared line.
  VirtualPhysicalConnectionState({
    pulumi.Output<String>? accessPointId,
    pulumi.Output<String>? adLocation,
    pulumi.Output<String>? bandwidth,
    pulumi.Output<String>? businessStatus,
    pulumi.Output<String>? circuitCode,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? dryRun,
    pulumi.Output<String>? enabledTime,
    pulumi.Output<String>? endTime,
    pulumi.Output<String>? expectSpec,
    pulumi.Output<String>? lineOperator,
    pulumi.Output<String>? loaStatus,
    pulumi.Output<String>? orderMode,
    pulumi.Output<String>? parentPhysicalConnectionAliUid,
    pulumi.Output<String>? parentPhysicalConnectionId,
    pulumi.Output<String>? peerLocation,
    pulumi.Output<String>? portNumber,
    pulumi.Output<String>? portType,
    pulumi.Output<String>? redundantPhysicalConnectionId,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? spec,
    pulumi.Output<String>? status,
    pulumi.Output<String>? virtualPhysicalConnectionName,
    pulumi.Output<String>? virtualPhysicalConnectionStatus,
    pulumi.Output<int>? vlanId,
    pulumi.Output<String>? vpconnAliUid,
  }) :
      accessPointId = pulumi.Input.asOptionalInput<String>(accessPointId),
      adLocation = pulumi.Input.asOptionalInput<String>(adLocation),
      bandwidth = pulumi.Input.asOptionalInput<String>(bandwidth),
      businessStatus = pulumi.Input.asOptionalInput<String>(businessStatus),
      circuitCode = pulumi.Input.asOptionalInput<String>(circuitCode),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      enabledTime = pulumi.Input.asOptionalInput<String>(enabledTime),
      endTime = pulumi.Input.asOptionalInput<String>(endTime),
      expectSpec = pulumi.Input.asOptionalInput<String>(expectSpec),
      lineOperator = pulumi.Input.asOptionalInput<String>(lineOperator),
      loaStatus = pulumi.Input.asOptionalInput<String>(loaStatus),
      orderMode = pulumi.Input.asOptionalInput<String>(orderMode),
      parentPhysicalConnectionAliUid = pulumi.Input.asOptionalInput<String>(parentPhysicalConnectionAliUid),
      parentPhysicalConnectionId = pulumi.Input.asOptionalInput<String>(parentPhysicalConnectionId),
      peerLocation = pulumi.Input.asOptionalInput<String>(peerLocation),
      portNumber = pulumi.Input.asOptionalInput<String>(portNumber),
      portType = pulumi.Input.asOptionalInput<String>(portType),
      redundantPhysicalConnectionId = pulumi.Input.asOptionalInput<String>(redundantPhysicalConnectionId),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      spec = pulumi.Input.asOptionalInput<String>(spec),
      status = pulumi.Input.asOptionalInput<String>(status),
      virtualPhysicalConnectionName = pulumi.Input.asOptionalInput<String>(virtualPhysicalConnectionName),
      virtualPhysicalConnectionStatus = pulumi.Input.asOptionalInput<String>(virtualPhysicalConnectionStatus),
      vlanId = pulumi.Input.asOptionalInput<int>(vlanId),
      vpconnAliUid = pulumi.Input.asOptionalInput<String>(vpconnAliUid);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPointId': ?accessPointId,
      'adLocation': ?adLocation,
      'bandwidth': ?bandwidth,
      'businessStatus': ?businessStatus,
      'circuitCode': ?circuitCode,
      'createTime': ?createTime,
      'description': ?description,
      'dryRun': ?dryRun,
      'enabledTime': ?enabledTime,
      'endTime': ?endTime,
      'expectSpec': ?expectSpec,
      'lineOperator': ?lineOperator,
      'loaStatus': ?loaStatus,
      'orderMode': ?orderMode,
      'parentPhysicalConnectionAliUid': ?parentPhysicalConnectionAliUid,
      'parentPhysicalConnectionId': ?parentPhysicalConnectionId,
      'peerLocation': ?peerLocation,
      'portNumber': ?portNumber,
      'portType': ?portType,
      'redundantPhysicalConnectionId': ?redundantPhysicalConnectionId,
      'resourceGroupId': ?resourceGroupId,
      'spec': ?spec,
      'status': ?status,
      'virtualPhysicalConnectionName': ?virtualPhysicalConnectionName,
      'virtualPhysicalConnectionStatus': ?virtualPhysicalConnectionStatus,
      'vlanId': ?vlanId,
      'vpconnAliUid': ?vpconnAliUid,
    };
  }

  factory VirtualPhysicalConnectionState.fromMap(Map<String, dynamic> map) {
    return VirtualPhysicalConnectionState(
      accessPointId: map['accessPointId'] == null ? null : pulumi.Output.create<String>(map['accessPointId'] as String),
      adLocation: map['adLocation'] == null ? null : pulumi.Output.create<String>(map['adLocation'] as String),
      bandwidth: map['bandwidth'] == null ? null : pulumi.Output.create<String>(map['bandwidth'] as String),
      businessStatus: map['businessStatus'] == null ? null : pulumi.Output.create<String>(map['businessStatus'] as String),
      circuitCode: map['circuitCode'] == null ? null : pulumi.Output.create<String>(map['circuitCode'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      dryRun: map['dryRun'] == null ? null : pulumi.Output.create<bool>(map['dryRun'] as bool),
      enabledTime: map['enabledTime'] == null ? null : pulumi.Output.create<String>(map['enabledTime'] as String),
      endTime: map['endTime'] == null ? null : pulumi.Output.create<String>(map['endTime'] as String),
      expectSpec: map['expectSpec'] == null ? null : pulumi.Output.create<String>(map['expectSpec'] as String),
      lineOperator: map['lineOperator'] == null ? null : pulumi.Output.create<String>(map['lineOperator'] as String),
      loaStatus: map['loaStatus'] == null ? null : pulumi.Output.create<String>(map['loaStatus'] as String),
      orderMode: map['orderMode'] == null ? null : pulumi.Output.create<String>(map['orderMode'] as String),
      parentPhysicalConnectionAliUid: map['parentPhysicalConnectionAliUid'] == null ? null : pulumi.Output.create<String>(map['parentPhysicalConnectionAliUid'] as String),
      parentPhysicalConnectionId: map['parentPhysicalConnectionId'] == null ? null : pulumi.Output.create<String>(map['parentPhysicalConnectionId'] as String),
      peerLocation: map['peerLocation'] == null ? null : pulumi.Output.create<String>(map['peerLocation'] as String),
      portNumber: map['portNumber'] == null ? null : pulumi.Output.create<String>(map['portNumber'] as String),
      portType: map['portType'] == null ? null : pulumi.Output.create<String>(map['portType'] as String),
      redundantPhysicalConnectionId: map['redundantPhysicalConnectionId'] == null ? null : pulumi.Output.create<String>(map['redundantPhysicalConnectionId'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      spec: map['spec'] == null ? null : pulumi.Output.create<String>(map['spec'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      virtualPhysicalConnectionName: map['virtualPhysicalConnectionName'] == null ? null : pulumi.Output.create<String>(map['virtualPhysicalConnectionName'] as String),
      virtualPhysicalConnectionStatus: map['virtualPhysicalConnectionStatus'] == null ? null : pulumi.Output.create<String>(map['virtualPhysicalConnectionStatus'] as String),
      vlanId: map['vlanId'] == null ? null : pulumi.Output.create<int>(map['vlanId'] as int),
      vpconnAliUid: map['vpconnAliUid'] == null ? null : pulumi.Output.create<String>(map['vpconnAliUid'] as String),
    );
  }
}

