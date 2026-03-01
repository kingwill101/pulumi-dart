// ignore_for_file: unused_element, unnecessary_cast


class GetPhysicalConnectionsConnection {
  /// The Physical Leased Line Access Point ID.
  final String accessPointId;
  /// To Connect a Device Physical Location.
  final String adLocation;
  /// On the Bandwidth of the ECC Service and Physical Connection.
  final String bandwidth;
  /// The Physical Connection to Which the Payment Status: Normal, financiallocked, securitylocked.
  final String businessStatus;
  /// Operators for Physical Connection Circuit Provided Coding.
  final String circuitCode;
  /// The Representative of the Creation Time Resources Attribute Field.
  final String createTime;
  /// The Physical Connection to Which the Description.
  final String description;
  /// The Physical Connection to Which the Activation Time.
  final String enabledTime;
  /// The Expiration Time.
  final String endTime;
  /// HasReservationData.
  final String hasReservationData;
  /// The ID of the Physical Connection.
  final String id;
  /// Provides Access to the Physical Line Operator Value CT: China Telecom, CU: China Unicom, CM: china Mobile, CO: Other Chinese, Equinix:Equinix, Other: Other Overseas.
  final String lineOperator;
  /// Loa State.
  final String loaStatus;
  /// on Behalf of the Pay-as-You-Type of Resource Attribute Field.
  final String paymentType;
  /// and an on-Premises Data Center Location.
  final String peerLocation;
  /// on Behalf of the Resource Level Id of the Resources Property Fields.
  final String physicalConnectionId;
  /// on Behalf of the Resource Name of the Resources-Attribute Field.
  final String physicalConnectionName;
  /// To Connect a Device Port: The Port Number of.
  final String portNumber;
  /// The Physical Leased Line Access Port Type Value 100Base-T: Fast Electrical Ports, 1000Base-T (the Default): gigabit Electrical Ports, 1000Base-LX: Gigabit Singlemode Optical Ports (10Km), 10GBase-T: Gigabit Electrical Port, 10GBase-LR: Gigabit Singlemode Optical Ports (10Km).
  final String portType;
  /// Redundant Physical Connection to Which the ID.
  final String redundantPhysicalConnectionId;
  /// The Renewal of the Entry into Force of the Time.
  final String reservationActiveTime;
  /// Renewal Type.
  final String reservationInternetChargeType;
  /// Renewal Order Type.
  final String reservationOrderType;
  /// The Physical Connection to Which the Specifications.
  final String spec;
  /// Resources on Behalf of a State of the Resource Attribute Field.
  final String status;
  /// Physical Private Line of Type. Default Value: VPC.
  final String type;

  /// Creates a new [GetPhysicalConnectionsConnection].
  /// [accessPointId] The Physical Leased Line Access Point ID.
  /// [adLocation] To Connect a Device Physical Location.
  /// [bandwidth] On the Bandwidth of the ECC Service and Physical Connection.
  /// [businessStatus] The Physical Connection to Which the Payment Status: Normal, financiallocked, securitylocked.
  /// [circuitCode] Operators for Physical Connection Circuit Provided Coding.
  /// [createTime] The Representative of the Creation Time Resources Attribute Field.
  /// [description] The Physical Connection to Which the Description.
  /// [enabledTime] The Physical Connection to Which the Activation Time.
  /// [endTime] The Expiration Time.
  /// [hasReservationData] HasReservationData.
  /// [id] The ID of the Physical Connection.
  /// [lineOperator] Provides Access to the Physical Line Operator Value CT: China Telecom, CU: China Unicom, CM: china Mobile, CO: Other Chinese, Equinix:Equinix, Other: Other Overseas.
  /// [loaStatus] Loa State.
  /// [paymentType] on Behalf of the Pay-as-You-Type of Resource Attribute Field.
  /// [peerLocation] and an on-Premises Data Center Location.
  /// [physicalConnectionId] on Behalf of the Resource Level Id of the Resources Property Fields.
  /// [physicalConnectionName] on Behalf of the Resource Name of the Resources-Attribute Field.
  /// [portNumber] To Connect a Device Port: The Port Number of.
  /// [portType] The Physical Leased Line Access Port Type Value 100Base-T: Fast Electrical Ports, 1000Base-T (the Default): gigabit Electrical Ports, 1000Base-LX: Gigabit Singlemode Optical Ports (10Km), 10GBase-T: Gigabit Electrical Port, 10GBase-LR: Gigabit Singlemode Optical Ports (10Km).
  /// [redundantPhysicalConnectionId] Redundant Physical Connection to Which the ID.
  /// [reservationActiveTime] The Renewal of the Entry into Force of the Time.
  /// [reservationInternetChargeType] Renewal Type.
  /// [reservationOrderType] Renewal Order Type.
  /// [spec] The Physical Connection to Which the Specifications.
  /// [status] Resources on Behalf of a State of the Resource Attribute Field.
  /// [type] Physical Private Line of Type. Default Value: VPC.
  GetPhysicalConnectionsConnection({
    required this.accessPointId,
    required this.adLocation,
    required this.bandwidth,
    required this.businessStatus,
    required this.circuitCode,
    required this.createTime,
    required this.description,
    required this.enabledTime,
    required this.endTime,
    required this.hasReservationData,
    required this.id,
    required this.lineOperator,
    required this.loaStatus,
    required this.paymentType,
    required this.peerLocation,
    required this.physicalConnectionId,
    required this.physicalConnectionName,
    required this.portNumber,
    required this.portType,
    required this.redundantPhysicalConnectionId,
    required this.reservationActiveTime,
    required this.reservationInternetChargeType,
    required this.reservationOrderType,
    required this.spec,
    required this.status,
    required this.type,
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
      'hasReservationData': hasReservationData,
      'id': id,
      'lineOperator': lineOperator,
      'loaStatus': loaStatus,
      'paymentType': paymentType,
      'peerLocation': peerLocation,
      'physicalConnectionId': physicalConnectionId,
      'physicalConnectionName': physicalConnectionName,
      'portNumber': portNumber,
      'portType': portType,
      'redundantPhysicalConnectionId': redundantPhysicalConnectionId,
      'reservationActiveTime': reservationActiveTime,
      'reservationInternetChargeType': reservationInternetChargeType,
      'reservationOrderType': reservationOrderType,
      'spec': spec,
      'status': status,
      'type': type,
    };
  }

  factory GetPhysicalConnectionsConnection.fromMap(Map<String, dynamic> map) {
    return GetPhysicalConnectionsConnection(
      accessPointId: map['accessPointId'] as String,
      adLocation: map['adLocation'] as String,
      bandwidth: map['bandwidth'] as String,
      businessStatus: map['businessStatus'] as String,
      circuitCode: map['circuitCode'] as String,
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      enabledTime: map['enabledTime'] as String,
      endTime: map['endTime'] as String,
      hasReservationData: map['hasReservationData'] as String,
      id: map['id'] as String,
      lineOperator: map['lineOperator'] as String,
      loaStatus: map['loaStatus'] as String,
      paymentType: map['paymentType'] as String,
      peerLocation: map['peerLocation'] as String,
      physicalConnectionId: map['physicalConnectionId'] as String,
      physicalConnectionName: map['physicalConnectionName'] as String,
      portNumber: map['portNumber'] as String,
      portType: map['portType'] as String,
      redundantPhysicalConnectionId: map['redundantPhysicalConnectionId'] as String,
      reservationActiveTime: map['reservationActiveTime'] as String,
      reservationInternetChargeType: map['reservationInternetChargeType'] as String,
      reservationOrderType: map['reservationOrderType'] as String,
      spec: map['spec'] as String,
      status: map['status'] as String,
      type: map['type'] as String,
    );
  }
}

