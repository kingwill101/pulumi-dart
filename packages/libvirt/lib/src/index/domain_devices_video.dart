// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_video_acpi.dart';
import 'domain_devices_video_alias.dart';
import 'domain_devices_video_driver.dart';
import 'domain_devices_video_model.dart';

class DomainDevicesVideo {
  /// Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  final DomainDevicesVideoAcpi? acpi;
  /// Specifies the memory address for the persistent storage device in the guest's address space.
  final Map<String, dynamic>? address;
  /// Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  final DomainDevicesVideoAlias? alias;
  /// Configures the driver properties for the video device.
  final DomainDevicesVideoDriver? driver;
  /// Defines the specific model of the video device being used.
  final DomainDevicesVideoModel? model;

  /// Creates a new [DomainDevicesVideo].
  /// [acpi] Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  /// [address] Specifies the memory address for the persistent storage device in the guest's address space.
  /// [alias] Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  /// [driver] Configures the driver properties for the video device.
  /// [model] Defines the specific model of the video device being used.
  DomainDevicesVideo({
    this.acpi,
    this.address,
    this.alias,
    this.driver,
    this.model,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acpi': ?acpi == null ? null : acpi!.toMap(),
      'address': ?address,
      'alias': ?alias == null ? null : alias!.toMap(),
      'driver': ?driver == null ? null : driver!.toMap(),
      'model': ?model == null ? null : model!.toMap(),
    };
  }

  factory DomainDevicesVideo.fromMap(Map<String, dynamic> map) {
    return DomainDevicesVideo(
      acpi: map['acpi'] == null ? null : DomainDevicesVideoAcpi.fromMap((map['acpi'] as Map).cast<String, dynamic>()),
      address: map['address'] == null ? null : (map['address'] as Map).cast<String, dynamic>(),
      alias: map['alias'] == null ? null : DomainDevicesVideoAlias.fromMap((map['alias'] as Map).cast<String, dynamic>()),
      driver: map['driver'] == null ? null : DomainDevicesVideoDriver.fromMap((map['driver'] as Map).cast<String, dynamic>()),
      model: map['model'] == null ? null : DomainDevicesVideoModel.fromMap((map['model'] as Map).cast<String, dynamic>()),
    );
  }
}

