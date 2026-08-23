// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_type_offerings_broker_instance_option_availability_zone.dart';

class GetInstanceTypeOfferingsBrokerInstanceOption {
  /// List of available Availability Zones. See `availabilityZones` Block below.
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
  /// [availabilityZones] List of available Availability Zones. See `availabilityZones` Block below.
  /// [engineType] Filter response by engine type.
  /// [hostInstanceType] Filter response by host instance type.
  /// [storageType] Filter response by storage type.
  /// [supportedDeploymentModes] List of supported deployment modes.
  /// [supportedEngineVersions] List of supported engine versions.
  const GetInstanceTypeOfferingsBrokerInstanceOption({
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
      availabilityZones: pulumi.Input.fromValue(pulumi.Input.decodeList<GetInstanceTypeOfferingsBrokerInstanceOptionAvailabilityZone>(map['availabilityZones']!, (value) => GetInstanceTypeOfferingsBrokerInstanceOptionAvailabilityZone.fromMap((value as Map).cast<String, dynamic>()))),
      engineType: pulumi.Input.fromValue(map['engineType'] as String),
      hostInstanceType: pulumi.Input.fromValue(map['hostInstanceType'] as String),
      storageType: pulumi.Input.fromValue(map['storageType'] as String),
      supportedDeploymentModes: pulumi.Input.fromValue((map['supportedDeploymentModes'] as List).cast<String>()),
      supportedEngineVersions: pulumi.Input.fromValue((map['supportedEngineVersions'] as List).cast<String>()),
    );
  }
}
