// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_import_disk_device_mapping.dart';

/// Input properties used for looking up and filtering ImageImport resources.
class ImageImportState {
  /// The architecture of the image. Default value: `x86_64`. Valid values: `x86_64`, `i386`.
  final pulumi.Input<String>? architecture;
  /// The boot mode of the image. Valid values: `BIOS`, `UEFI`.
  final pulumi.Input<String>? bootMode;
  /// The description of the image. The `description` must be 2 to 256 characters in length and cannot start with http:// or https://.
  final pulumi.Input<String>? description;
  /// The information about the custom image. See `disk_device_mapping` below.
  final pulumi.Input<List<ImageImportDiskDeviceMapping>>? diskDeviceMappings;
  /// The name of the image. The `image_name` must be `2` to `128` characters in length. The `image_name` must start with a letter and cannot start with acs: or aliyun. The `image_name` cannot contain http:// or https://. The `image_name` can contain letters, digits, periods (.), colons (:), underscores (_), and hyphens (-).
  final pulumi.Input<String>? imageName;
  /// The type of the license used to activate the operating system after the image is imported. Default value: `Auto`. Valid values: `Auto`, `Aliyun`, `BYOL`.
  final pulumi.Input<String>? licenseType;
  /// The type of the operating system. Default value: `linux`. Valid values: `windows`, `linux`.
  final pulumi.Input<String>? osType;
  /// The operating system platform. More valid values refer to [ImportImage OpenAPI](https://www.alibabacloud.com/help/en/elastic-compute-service/latest/importimage).
  /// &gt; **NOTE:** Before provider version 1.197.0, the default value of `platform` is `Ubuntu`.
  final pulumi.Input<String>? platform;

  /// Creates a new [ImageImportState].
  /// [architecture] The architecture of the image. Default value: `x86_64`. Valid values: `x86_64`, `i386`.
  /// [bootMode] The boot mode of the image. Valid values: `BIOS`, `UEFI`.
  /// [description] The description of the image. The `description` must be 2 to 256 characters in length and cannot start with http:// or https://.
  /// [diskDeviceMappings] The information about the custom image. See `disk_device_mapping` below.
  /// [imageName] The name of the image. The `image_name` must be `2` to `128` characters in length. The `image_name` must start with a letter and cannot start with acs: or aliyun. The `image_name` cannot contain http:// or https://. The `image_name` can contain letters, digits, periods (.), colons (:), underscores (_), and hyphens (-).
  /// [licenseType] The type of the license used to activate the operating system after the image is imported. Default value: `Auto`. Valid values: `Auto`, `Aliyun`, `BYOL`.
  /// [osType] The type of the operating system. Default value: `linux`. Valid values: `windows`, `linux`.
  /// [platform] The operating system platform. More valid values refer to [ImportImage OpenAPI](https://www.alibabacloud.com/help/en/elastic-compute-service/latest/importimage).
  const ImageImportState({
    this.architecture,
    this.bootMode,
    this.description,
    this.diskDeviceMappings,
    this.imageName,
    this.licenseType,
    this.osType,
    this.platform,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architecture': ?architecture,
      'bootMode': ?bootMode,
      'description': ?description,
      'diskDeviceMappings': ?pulumi.Input.mapOptionalInputValue<List<ImageImportDiskDeviceMapping>, List<Map<String, dynamic>>>(diskDeviceMappings, (value) => pulumi.Input.encodeList<ImageImportDiskDeviceMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'imageName': ?imageName,
      'licenseType': ?licenseType,
      'osType': ?osType,
      'platform': ?platform,
    };
  }

  factory ImageImportState.fromMap(Map<String, dynamic> map) {
    return ImageImportState(
      architecture: (() { final guardedValue = map['architecture']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bootMode: (() { final guardedValue = map['bootMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskDeviceMappings: (() { final guardedValue = map['diskDeviceMappings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ImageImportDiskDeviceMapping>(guardedValue, (value) => ImageImportDiskDeviceMapping.fromMap((value as Map).cast<String, dynamic>()))); })(),
      imageName: (() { final guardedValue = map['imageName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      licenseType: (() { final guardedValue = map['licenseType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      osType: (() { final guardedValue = map['osType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      platform: (() { final guardedValue = map['platform']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

