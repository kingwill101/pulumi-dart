// ignore_for_file: unused_element, unnecessary_cast


/// Datacenter instruction for given storage location.
class DatacenterAddressInstructionResponseResponse {
  /// Data center communication instruction
  final String communicationInstruction;
  /// Azure Location where the Data Center serves primarily.
  final String dataCenterAzureLocation;
  /// Data center address type
  /// Expected value is 'DatacenterAddressInstruction'.
  final String datacenterAddressType;
  /// List of supported carriers for return shipment.
  final List<String> supportedCarriersForReturnShipment;

  /// Creates a new [DatacenterAddressInstructionResponseResponse].
  /// [communicationInstruction] Data center communication instruction
  /// [dataCenterAzureLocation] Azure Location where the Data Center serves primarily.
  /// [datacenterAddressType] Data center address type
  /// [supportedCarriersForReturnShipment] List of supported carriers for return shipment.
  DatacenterAddressInstructionResponseResponse({
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
      communicationInstruction: map['communicationInstruction'] as String,
      dataCenterAzureLocation: map['dataCenterAzureLocation'] as String,
      datacenterAddressType: map['datacenterAddressType'] as String,
      supportedCarriersForReturnShipment: (map['supportedCarriersForReturnShipment'] as List).cast<String>(),
    );
  }
}

