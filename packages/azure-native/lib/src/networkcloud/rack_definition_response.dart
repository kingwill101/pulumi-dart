// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_machine_configuration_data_response.dart';
import 'storage_appliance_configuration_data_response.dart';

class RackDefinitionResponse {
  /// The zone name used for this rack when created. Availability zones are used for workload placement.
  final String? availabilityZone;
  /// The unordered list of bare metal machine configuration.
  final List<BareMetalMachineConfigurationDataResponse>? bareMetalMachineConfigurationData;
  /// The resource ID of the network rack that matches this rack definition.
  final String networkRackId;
  /// The free-form description of the rack's location.
  final String? rackLocation;
  /// The unique identifier for the rack within Network Cloud cluster. An alternate unique alphanumeric value other than a serial number may be provided if desired.
  final String rackSerialNumber;
  /// The resource ID of the sku for the rack being added.
  final String rackSkuId;
  /// The list of storage appliance configuration data for this rack.
  final List<StorageApplianceConfigurationDataResponse>? storageApplianceConfigurationData;

  /// Creates a new [RackDefinitionResponse].
  /// [availabilityZone] The zone name used for this rack when created. Availability zones are used for workload placement.
  /// [bareMetalMachineConfigurationData] The unordered list of bare metal machine configuration.
  /// [networkRackId] The resource ID of the network rack that matches this rack definition.
  /// [rackLocation] The free-form description of the rack's location.
  /// [rackSerialNumber] The unique identifier for the rack within Network Cloud cluster. An alternate unique alphanumeric value other than a serial number may be provided if desired.
  /// [rackSkuId] The resource ID of the sku for the rack being added.
  /// [storageApplianceConfigurationData] The list of storage appliance configuration data for this rack.
  RackDefinitionResponse({
    this.availabilityZone,
    this.bareMetalMachineConfigurationData,
    required this.networkRackId,
    this.rackLocation,
    required this.rackSerialNumber,
    required this.rackSkuId,
    this.storageApplianceConfigurationData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZone': ?availabilityZone,
      'bareMetalMachineConfigurationData': ?bareMetalMachineConfigurationData == null ? null : pulumi.Input.encodeList<BareMetalMachineConfigurationDataResponse, Map<String, dynamic>>(bareMetalMachineConfigurationData!, (value) => value.toMap()),
      'networkRackId': networkRackId,
      'rackLocation': ?rackLocation,
      'rackSerialNumber': rackSerialNumber,
      'rackSkuId': rackSkuId,
      'storageApplianceConfigurationData': ?storageApplianceConfigurationData == null ? null : pulumi.Input.encodeList<StorageApplianceConfigurationDataResponse, Map<String, dynamic>>(storageApplianceConfigurationData!, (value) => value.toMap()),
    };
  }

  factory RackDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return RackDefinitionResponse(
      availabilityZone: map['availabilityZone'] == null ? null : map['availabilityZone'] as String,
      bareMetalMachineConfigurationData: map['bareMetalMachineConfigurationData'] == null ? null : pulumi.Input.decodeList<BareMetalMachineConfigurationDataResponse>(map['bareMetalMachineConfigurationData'], (value) => BareMetalMachineConfigurationDataResponse.fromMap((value as Map).cast<String, dynamic>())),
      networkRackId: map['networkRackId'] as String,
      rackLocation: map['rackLocation'] == null ? null : map['rackLocation'] as String,
      rackSerialNumber: map['rackSerialNumber'] as String,
      rackSkuId: map['rackSkuId'] as String,
      storageApplianceConfigurationData: map['storageApplianceConfigurationData'] == null ? null : pulumi.Input.decodeList<StorageApplianceConfigurationDataResponse>(map['storageApplianceConfigurationData'], (value) => StorageApplianceConfigurationDataResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

