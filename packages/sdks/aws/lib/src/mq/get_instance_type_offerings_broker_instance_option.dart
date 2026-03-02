// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_type_offerings_broker_instance_option_availability_zone.dart';

class GetInstanceTypeOfferingsBrokerInstanceOption {
  /// List of available Availability Zones. See Availability Zones below.
  final pulumi.Input<List<GetInstanceTypeOfferingsBrokerInstanceOptionAvailabilityZone>> availabilityZones;
  /// Filter response by engine type.
  final pulumi.Input<String> engineType;
  /// Filter response by host instance type.
  final pulumi.Input<String> hostInstanceType;
  /// Filter response by storage type.
  final pulumi.Input<String> storageType;
  /// List of supported deployment modes.
  final pulumi.Input<List<String>> supportedDeploymentModes;
  /// List of supported engine versions.
  final pulumi.Input<List<String>> supportedEngineVersions;

  /// Creates a new [GetInstanceTypeOfferingsBrokerInstanceOption].
  /// [availabilityZones] List of available Availability Zones. See Availability Zones below.
  /// [engineType] Filter response by engine type.
  /// [hostInstanceType] Filter response by host instance type.
  /// [storageType] Filter response by storage type.
  /// [supportedDeploymentModes] List of supported deployment modes.
  /// [supportedEngineVersions] List of supported engine versions.
  GetInstanceTypeOfferingsBrokerInstanceOption({
    required this.availabilityZones,
    required this.engineType,
    required this.hostInstanceType,
    required this.storageType,
    required this.supportedDeploymentModes,
    required this.supportedEngineVersions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZones': pulumi.Input.mapInputValue<List<GetInstanceTypeOfferingsBrokerInstanceOptionAvailabilityZone>, List<Map<String, dynamic>>>(availabilityZones, (value) => pulumi.Input.encodeList<GetInstanceTypeOfferingsBrokerInstanceOptionAvailabilityZone, Map<String, dynamic>>(value, (value) => value.toMap())),
      'engineType': engineType,
      'hostInstanceType': hostInstanceType,
      'storageType': storageType,
      'supportedDeploymentModes': supportedDeploymentModes,
      'supportedEngineVersions': supportedEngineVersions,
    };
  }

  factory GetInstanceTypeOfferingsBrokerInstanceOption.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypeOfferingsBrokerInstanceOption(
      availabilityZones: (pulumi.Input.decodeList<GetInstanceTypeOfferingsBrokerInstanceOptionAvailabilityZone>(map['availabilityZones'], (value) => GetInstanceTypeOfferingsBrokerInstanceOptionAvailabilityZone.fromMap((value as Map).cast<String, dynamic>()))).input(),
      engineType: (map['engineType'] as String).input(),
      hostInstanceType: (map['hostInstanceType'] as String).input(),
      storageType: (map['storageType'] as String).input(),
      supportedDeploymentModes: ((map['supportedDeploymentModes'] as List).cast<String>()).input(),
      supportedEngineVersions: ((map['supportedEngineVersions'] as List).cast<String>()).input(),
    );
  }
}

