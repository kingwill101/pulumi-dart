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
    this.accessPointId,
    this.adLocation,
    this.bandwidth,
    this.businessStatus,
    this.circuitCode,
    this.createTime,
    this.description,
    this.dryRun,
    this.enabledTime,
    this.endTime,
    this.expectSpec,
    this.lineOperator,
    this.loaStatus,
    this.orderMode,
    this.parentPhysicalConnectionAliUid,
    this.parentPhysicalConnectionId,
    this.peerLocation,
    this.portNumber,
    this.portType,
    this.redundantPhysicalConnectionId,
    this.resourceGroupId,
    this.spec,
    this.status,
    this.virtualPhysicalConnectionName,
    this.virtualPhysicalConnectionStatus,
    this.vlanId,
    this.vpconnAliUid,
  });

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
      accessPointId: (() { final guardedValue = map['accessPointId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      adLocation: (() { final guardedValue = map['adLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bandwidth: (() { final guardedValue = map['bandwidth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      businessStatus: (() { final guardedValue = map['businessStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      circuitCode: (() { final guardedValue = map['circuitCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dryRun: (() { final guardedValue = map['dryRun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enabledTime: (() { final guardedValue = map['enabledTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expectSpec: (() { final guardedValue = map['expectSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lineOperator: (() { final guardedValue = map['lineOperator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loaStatus: (() { final guardedValue = map['loaStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      orderMode: (() { final guardedValue = map['orderMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parentPhysicalConnectionAliUid: (() { final guardedValue = map['parentPhysicalConnectionAliUid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parentPhysicalConnectionId: (() { final guardedValue = map['parentPhysicalConnectionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peerLocation: (() { final guardedValue = map['peerLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      portNumber: (() { final guardedValue = map['portNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      portType: (() { final guardedValue = map['portType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      redundantPhysicalConnectionId: (() { final guardedValue = map['redundantPhysicalConnectionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spec: (() { final guardedValue = map['spec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualPhysicalConnectionName: (() { final guardedValue = map['virtualPhysicalConnectionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualPhysicalConnectionStatus: (() { final guardedValue = map['virtualPhysicalConnectionStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vlanId: (() { final guardedValue = map['vlanId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      vpconnAliUid: (() { final guardedValue = map['vpconnAliUid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

