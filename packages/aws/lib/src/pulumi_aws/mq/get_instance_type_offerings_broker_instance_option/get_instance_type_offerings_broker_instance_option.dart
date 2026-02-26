// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_instance_type_offerings_broker_instance_option_availability_zone/get_instance_type_offerings_broker_instance_option_availability_zone.dart';

class GetInstanceTypeOfferingsBrokerInstanceOption {
  /// List of available Availability Zones. See Availability Zones below.
  final List<GetInstanceTypeOfferingsBrokerInstanceOptionAvailabilityZone>
      availabilityZones;

  /// Filter response by engine type.
  final String engineType;

  /// Filter response by host instance type.
  final String hostInstanceType;

  /// Filter response by storage type.
  final String storageType;

  /// List of supported deployment modes.
  final List<String> supportedDeploymentModes;

  /// List of supported engine versions.
  final List<String> supportedEngineVersions;

  GetInstanceTypeOfferingsBrokerInstanceOption({
    required this.availabilityZones,
    required this.engineType,
    required this.hostInstanceType,
    required this.storageType,
    required this.supportedDeploymentModes,
    required this.supportedEngineVersions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['availabilityZones'] = Input.encodeList<
        GetInstanceTypeOfferingsBrokerInstanceOptionAvailabilityZone,
        Map<String, dynamic>>(availabilityZones, (value) => value.toMap());
    map['engineType'] = engineType;
    map['hostInstanceType'] = hostInstanceType;
    map['storageType'] = storageType;
    map['supportedDeploymentModes'] = supportedDeploymentModes;
    map['supportedEngineVersions'] = supportedEngineVersions;
    return map;
  }

  factory GetInstanceTypeOfferingsBrokerInstanceOption.fromMap(
      Map<String, dynamic> map) {
    return GetInstanceTypeOfferingsBrokerInstanceOption(
      availabilityZones: Input.decodeList<
              GetInstanceTypeOfferingsBrokerInstanceOptionAvailabilityZone>(
          map['availabilityZones'],
          (value) =>
              GetInstanceTypeOfferingsBrokerInstanceOptionAvailabilityZone
                  .fromMap((value as Map).cast<String, dynamic>())),
      engineType: map['engineType'] as String,
      hostInstanceType: map['hostInstanceType'] as String,
      storageType: map['storageType'] as String,
      supportedDeploymentModes:
          (map['supportedDeploymentModes'] as List).cast<String>(),
      supportedEngineVersions:
          (map['supportedEngineVersions'] as List).cast<String>(),
    );
  }
}
