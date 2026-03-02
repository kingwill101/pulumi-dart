// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPhysicalConnectionsConnection {
  /// The Physical Leased Line Access Point ID.
  final pulumi.Input<String> accessPointId;
  /// To Connect a Device Physical Location.
  final pulumi.Input<String> adLocation;
  /// On the Bandwidth of the ECC Service and Physical Connection.
  final pulumi.Input<String> bandwidth;
  /// The Physical Connection to Which the Payment Status: Normal, financiallocked, securitylocked.
  final pulumi.Input<String> businessStatus;
  /// Operators for Physical Connection Circuit Provided Coding.
  final pulumi.Input<String> circuitCode;
  /// The Representative of the Creation Time Resources Attribute Field.
  final pulumi.Input<String> createTime;
  /// The Physical Connection to Which the Description.
  final pulumi.Input<String> description;
  /// The Physical Connection to Which the Activation Time.
  final pulumi.Input<String> enabledTime;
  /// The Expiration Time.
  final pulumi.Input<String> endTime;
  /// HasReservationData.
  final pulumi.Input<String> hasReservationData;
  /// The ID of the Physical Connection.
  final pulumi.Input<String> id;
  /// Provides Access to the Physical Line Operator Value CT: China Telecom, CU: China Unicom, CM: china Mobile, CO: Other Chinese, Equinix:Equinix, Other: Other Overseas.
  final pulumi.Input<String> lineOperator;
  /// Loa State.
  final pulumi.Input<String> loaStatus;
  /// on Behalf of the Pay-as-You-Type of Resource Attribute Field.
  final pulumi.Input<String> paymentType;
  /// and an on-Premises Data Center Location.
  final pulumi.Input<String> peerLocation;
  /// on Behalf of the Resource Level Id of the Resources Property Fields.
  final pulumi.Input<String> physicalConnectionId;
  /// on Behalf of the Resource Name of the Resources-Attribute Field.
  final pulumi.Input<String> physicalConnectionName;
  /// To Connect a Device Port: The Port Number of.
  final pulumi.Input<String> portNumber;
  /// The Physical Leased Line Access Port Type Value 100Base-T: Fast Electrical Ports, 1000Base-T (the Default): gigabit Electrical Ports, 1000Base-LX: Gigabit Singlemode Optical Ports (10Km), 10GBase-T: Gigabit Electrical Port, 10GBase-LR: Gigabit Singlemode Optical Ports (10Km).
  final pulumi.Input<String> portType;
  /// Redundant Physical Connection to Which the ID.
  final pulumi.Input<String> redundantPhysicalConnectionId;
  /// The Renewal of the Entry into Force of the Time.
  final pulumi.Input<String> reservationActiveTime;
  /// Renewal Type.
  final pulumi.Input<String> reservationInternetChargeType;
  /// Renewal Order Type.
  final pulumi.Input<String> reservationOrderType;
  /// The Physical Connection to Which the Specifications.
  final pulumi.Input<String> spec;
  /// Resources on Behalf of a State of the Resource Attribute Field.
  final pulumi.Input<String> status;
  /// Physical Private Line of Type. Default Value: VPC.
  final pulumi.Input<String> type;

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
      accessPointId: (map['accessPointId'] as String).input(),
      adLocation: (map['adLocation'] as String).input(),
      bandwidth: (map['bandwidth'] as String).input(),
      businessStatus: (map['businessStatus'] as String).input(),
      circuitCode: (map['circuitCode'] as String).input(),
      createTime: (map['createTime'] as String).input(),
      description: (map['description'] as String).input(),
      enabledTime: (map['enabledTime'] as String).input(),
      endTime: (map['endTime'] as String).input(),
      hasReservationData: (map['hasReservationData'] as String).input(),
      id: (map['id'] as String).input(),
      lineOperator: (map['lineOperator'] as String).input(),
      loaStatus: (map['loaStatus'] as String).input(),
      paymentType: (map['paymentType'] as String).input(),
      peerLocation: (map['peerLocation'] as String).input(),
      physicalConnectionId: (map['physicalConnectionId'] as String).input(),
      physicalConnectionName: (map['physicalConnectionName'] as String).input(),
      portNumber: (map['portNumber'] as String).input(),
      portType: (map['portType'] as String).input(),
      redundantPhysicalConnectionId: (map['redundantPhysicalConnectionId'] as String).input(),
      reservationActiveTime: (map['reservationActiveTime'] as String).input(),
      reservationInternetChargeType: (map['reservationInternetChargeType'] as String).input(),
      reservationOrderType: (map['reservationOrderType'] as String).input(),
      spec: (map['spec'] as String).input(),
      status: (map['status'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

