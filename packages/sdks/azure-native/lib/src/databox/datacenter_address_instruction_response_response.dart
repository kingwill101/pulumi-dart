// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Datacenter instruction for given storage location.
class DatacenterAddressInstructionResponseResponse {
  /// Data center communication instruction
  final pulumi.Input<String> communicationInstruction;
  /// Azure Location where the Data Center serves primarily.
  final pulumi.Input<String> dataCenterAzureLocation;
  /// Data center address type
  /// Expected value is 'DatacenterAddressInstruction'.
  final pulumi.Input<String> datacenterAddressType;
  /// List of supported carriers for return shipment.
  final pulumi.Input<List<String>> supportedCarriersForReturnShipment;

  /// Creates a new [DatacenterAddressInstructionResponseResponse].
  /// [communicationInstruction] Data center communication instruction
  /// [dataCenterAzureLocation] Azure Location where the Data Center serves primarily.
  /// [datacenterAddressType] Data center address type
  /// [supportedCarriersForReturnShipment] List of supported carriers for return shipment.
  const DatacenterAddressInstructionResponseResponse({
    required this.communicationInstruction,
    required this.dataCenterAzureLocation,
    required this.datacenterAddressType,
    required this.supportedCarriersForReturnShipment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'communicationInstruction': communicationInstruction,
      'dataCenterAzureLocation': dataCenterAzureLocation,
      'datacenterAddressType': datacenterAddressType,
      'supportedCarriersForReturnShipment': supportedCarriersForReturnShipment,
    };
  }

  factory DatacenterAddressInstructionResponseResponse.fromMap(Map<String, dynamic> map) {
    return DatacenterAddressInstructionResponseResponse(
      communicationInstruction: pulumi.Input.fromValue(map['communicationInstruction'] as String),
      dataCenterAzureLocation: pulumi.Input.fromValue(map['dataCenterAzureLocation'] as String),
      datacenterAddressType: pulumi.Input.fromValue(map['datacenterAddressType'] as String),
      supportedCarriersForReturnShipment: pulumi.Input.fromValue((map['supportedCarriersForReturnShipment'] as List).cast<String>()),
    );
  }
}
