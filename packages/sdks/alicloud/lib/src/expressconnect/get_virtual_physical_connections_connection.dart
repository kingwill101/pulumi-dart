// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualPhysicalConnectionsConnection {
  /// The ID of the access point of the physical connection.
  final pulumi.Input<String> accessPointId;
  /// The physical location where the physical connection access device is located.
  final pulumi.Input<String> adLocation;
  /// The bandwidth of the physical connection. Unit: Mbps.
  final pulumi.Input<String> bandwidth;
  /// The commercial status of the physical line. Value:
  /// - **Normal**: activated.
  /// - **Financialized**: Arrears locked.
  /// - **SecurityLocked**: locked for security reasons.
  final pulumi.Input<String> businessStatus;
  /// The circuit code provided by the operator for the physical connection.
  final pulumi.Input<String> circuitCode;
  /// The creation time of the resource
  final pulumi.Input<String> createTime;
  /// The description of the physical connection.
  final pulumi.Input<String> description;
  /// The opening time of the physical connection.
  final pulumi.Input<String> enabledTime;
  /// The expiration time of the shared line.Time is expressed according to ISO8601 standard and UTC time is used. The format is: YYYY-MM-DDThh:mm:ssZ.
  final pulumi.Input<String> endTime;
  /// The estimated bandwidth value of the shared line. The expected bandwidth value will not take effect until the payment is completed.Unit: **M** indicates Mbps,**G** indicates Gbps.
  final pulumi.Input<String> expectSpec;
  /// The ID of the Virtual Physical Connection.
  final pulumi.Input<String> id;
  /// Operators that provide access to physical lines. Value:-**CT**: China Telecom.-**CU**: China Unicom.-**CM**: China Mobile.-**CO**: China Other.-**Equinix**:Equinix.-**Other**: Other abroad.
  final pulumi.Input<String> lineOperator;
  /// The state of LOA. Value:-**Applying**:LOA application.-**Accept**:LOA application passed.-**Available**:LOA is Available.-**Rejected**:LOA application Rejected.-**Completing**: The dedicated line is under construction.-**Complete**: The construction of the dedicated line is completed.-**Deleted**:LOA has been Deleted.
  final pulumi.Input<String> loaStatus;
  /// The payment method of shared dedicated line. Value:-**PayByPhysicalConnectionOwner**: indicates that the owner of the physical line associated with the shared line pays.-**PayByVirtualPhysicalConnectionOwner**: indicates that the owner of the shared line pays.
  final pulumi.Input<String> orderMode;
  /// The ID of the Alibaba Cloud account (primary account) to which the physical connection belongs.
  final pulumi.Input<String> parentPhysicalConnectionAliUid;
  /// The ID of the instance of the physical connection.
  final pulumi.Input<String> parentPhysicalConnectionId;
  /// The geographic location of the local data center.
  final pulumi.Input<String> peerLocation;
  /// The port number of the physical connection device.
  final pulumi.Input<String> portNumber;
  /// Physical connection port type. Value:-**100Base-T**: 100 megabytes port.-**1000Base-T**: Gigabit port.-**1000Base-LX**: Gigabit single mode optical port (10km).-**10GBase-T**: 10 Gigabit port.-**10GBase-LR**: 10 Gigabit single mode optical port (10km).-**40GBase-LR**: 40 megabytes single-mode optical port.-**100GBase-LR**: 100,000 megabytes single-mode optical port.
  final pulumi.Input<String> portType;
  /// The ID of the redundant physical connection.
  final pulumi.Input<String> redundantPhysicalConnectionId;
  /// The resource group id
  final pulumi.Input<String> resourceGroupId;
  /// The bandwidth value of the shared line.Unit: **M** indicates Mbps,**G** indicates Gbps.
  final pulumi.Input<String> spec;
  /// The status of the resource
  final pulumi.Input<String> status;
  /// The ID of the hosted connection
  final pulumi.Input<String> virtualPhysicalConnectionId;
  /// The name of the physical connection.
  final pulumi.Input<String> virtualPhysicalConnectionName;
  /// The business status of the shared line. Value:
  /// - **Confirmed**: The shared line has been Confirmed to receive.
  /// - **UnConfirmed**: The shared line has not been confirmed to be received.
  /// - **Deleted**: The shared line has been Deleted.
  final pulumi.Input<String> virtualPhysicalConnectionStatus;
  /// The VLAN ID of the shared leased line.
  final pulumi.Input<int> vlanId;
  /// The ID of the Alibaba Cloud account (primary account) of the owner of the shared line.
  final pulumi.Input<String> vpconnAliUid;

  /// Creates a new [GetVirtualPhysicalConnectionsConnection].
  /// [accessPointId] The ID of the access point of the physical connection.
  /// [adLocation] The physical location where the physical connection access device is located.
  /// [bandwidth] The bandwidth of the physical connection. Unit: Mbps.
  /// [businessStatus] The commercial status of the physical line. Value:
  /// [circuitCode] The circuit code provided by the operator for the physical connection.
  /// [createTime] The creation time of the resource
  /// [description] The description of the physical connection.
  /// [enabledTime] The opening time of the physical connection.
  /// [endTime] The expiration time of the shared line.Time is expressed according to ISO8601 standard and UTC time is used. The format is: YYYY-MM-DDThh:mm:ssZ.
  /// [expectSpec] The estimated bandwidth value of the shared line. The expected bandwidth value will not take effect until the payment is completed.Unit: **M** indicates Mbps,**G** indicates Gbps.
  /// [id] The ID of the Virtual Physical Connection.
  /// [lineOperator] Operators that provide access to physical lines. Value:-**CT**: China Telecom.-**CU**: China Unicom.-**CM**: China Mobile.-**CO**: China Other.-**Equinix**:Equinix.-**Other**: Other abroad.
  /// [loaStatus] The state of LOA. Value:-**Applying**:LOA application.-**Accept**:LOA application passed.-**Available**:LOA is Available.-**Rejected**:LOA application Rejected.-**Completing**: The dedicated line is under construction.-**Complete**: The construction of the dedicated line is completed.-**Deleted**:LOA has been Deleted.
  /// [orderMode] The payment method of shared dedicated line. Value:-**PayByPhysicalConnectionOwner**: indicates that the owner of the physical line associated with the shared line pays.-**PayByVirtualPhysicalConnectionOwner**: indicates that the owner of the shared line pays.
  /// [parentPhysicalConnectionAliUid] The ID of the Alibaba Cloud account (primary account) to which the physical connection belongs.
  /// [parentPhysicalConnectionId] The ID of the instance of the physical connection.
  /// [peerLocation] The geographic location of the local data center.
  /// [portNumber] The port number of the physical connection device.
  /// [portType] Physical connection port type. Value:-**100Base-T**: 100 megabytes port.-**1000Base-T**: Gigabit port.-**1000Base-LX**: Gigabit single mode optical port (10km).-**10GBase-T**: 10 Gigabit port.-**10GBase-LR**: 10 Gigabit single mode optical port (10km).-**40GBase-LR**: 40 megabytes single-mode optical port.-**100GBase-LR**: 100,000 megabytes single-mode optical port.
  /// [redundantPhysicalConnectionId] The ID of the redundant physical connection.
  /// [resourceGroupId] The resource group id
  /// [spec] The bandwidth value of the shared line.Unit: **M** indicates Mbps,**G** indicates Gbps.
  /// [status] The status of the resource
  /// [virtualPhysicalConnectionId] The ID of the hosted connection
  /// [virtualPhysicalConnectionName] The name of the physical connection.
  /// [virtualPhysicalConnectionStatus] The business status of the shared line. Value:
  /// [vlanId] The VLAN ID of the shared leased line.
  /// [vpconnAliUid] The ID of the Alibaba Cloud account (primary account) of the owner of the shared line.
  GetVirtualPhysicalConnectionsConnection({
    required this.accessPointId,
    required this.adLocation,
    required this.bandwidth,
    required this.businessStatus,
    required this.circuitCode,
    required this.createTime,
    required this.description,
    required this.enabledTime,
    required this.endTime,
    required this.expectSpec,
    required this.id,
    required this.lineOperator,
    required this.loaStatus,
    required this.orderMode,
    required this.parentPhysicalConnectionAliUid,
    required this.parentPhysicalConnectionId,
    required this.peerLocation,
    required this.portNumber,
    required this.portType,
    required this.redundantPhysicalConnectionId,
    required this.resourceGroupId,
    required this.spec,
    required this.status,
    required this.virtualPhysicalConnectionId,
    required this.virtualPhysicalConnectionName,
    required this.virtualPhysicalConnectionStatus,
    required this.vlanId,
    required this.vpconnAliUid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPointId': accessPointId,
      'adLocation': adLocation,
      'bandwidth': bandwidth,
      'businessStatus': businessStatus,
      'circuitCode': circuitCode,
      'createTime': createTime,
      'description': description,
      'enabledTime': enabledTime,
      'endTime': endTime,
      'expectSpec': expectSpec,
      'id': id,
      'lineOperator': lineOperator,
      'loaStatus': loaStatus,
      'orderMode': orderMode,
      'parentPhysicalConnectionAliUid': parentPhysicalConnectionAliUid,
      'parentPhysicalConnectionId': parentPhysicalConnectionId,
      'peerLocation': peerLocation,
      'portNumber': portNumber,
      'portType': portType,
      'redundantPhysicalConnectionId': redundantPhysicalConnectionId,
      'resourceGroupId': resourceGroupId,
      'spec': spec,
      'status': status,
      'virtualPhysicalConnectionId': virtualPhysicalConnectionId,
      'virtualPhysicalConnectionName': virtualPhysicalConnectionName,
      'virtualPhysicalConnectionStatus': virtualPhysicalConnectionStatus,
      'vlanId': vlanId,
      'vpconnAliUid': vpconnAliUid,
    };
  }

  factory GetVirtualPhysicalConnectionsConnection.fromMap(Map<String, dynamic> map) {
    return GetVirtualPhysicalConnectionsConnection(
      accessPointId: pulumi.Input.fromValue(map['accessPointId'] as String),
      adLocation: pulumi.Input.fromValue(map['adLocation'] as String),
      bandwidth: pulumi.Input.fromValue(map['bandwidth'] as String),
      businessStatus: pulumi.Input.fromValue(map['businessStatus'] as String),
      circuitCode: pulumi.Input.fromValue(map['circuitCode'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      enabledTime: pulumi.Input.fromValue(map['enabledTime'] as String),
      endTime: pulumi.Input.fromValue(map['endTime'] as String),
      expectSpec: pulumi.Input.fromValue(map['expectSpec'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      lineOperator: pulumi.Input.fromValue(map['lineOperator'] as String),
      loaStatus: pulumi.Input.fromValue(map['loaStatus'] as String),
      orderMode: pulumi.Input.fromValue(map['orderMode'] as String),
      parentPhysicalConnectionAliUid: pulumi.Input.fromValue(map['parentPhysicalConnectionAliUid'] as String),
      parentPhysicalConnectionId: pulumi.Input.fromValue(map['parentPhysicalConnectionId'] as String),
      peerLocation: pulumi.Input.fromValue(map['peerLocation'] as String),
      portNumber: pulumi.Input.fromValue(map['portNumber'] as String),
      portType: pulumi.Input.fromValue(map['portType'] as String),
      redundantPhysicalConnectionId: pulumi.Input.fromValue(map['redundantPhysicalConnectionId'] as String),
      resourceGroupId: pulumi.Input.fromValue(map['resourceGroupId'] as String),
      spec: pulumi.Input.fromValue(map['spec'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      virtualPhysicalConnectionId: pulumi.Input.fromValue(map['virtualPhysicalConnectionId'] as String),
      virtualPhysicalConnectionName: pulumi.Input.fromValue(map['virtualPhysicalConnectionName'] as String),
      virtualPhysicalConnectionStatus: pulumi.Input.fromValue(map['virtualPhysicalConnectionStatus'] as String),
      vlanId: pulumi.Input.fromValue(map['vlanId'] as int),
      vpconnAliUid: pulumi.Input.fromValue(map['vpconnAliUid'] as String),
    );
  }
}

