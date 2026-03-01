// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_import_disk_device_mapping.dart';

/// {@template pulumi_ecs_image_import_image_import_args_doc}
/// The set of arguments for ImageImport.
/// {@endtemplate}
/// {@macro pulumi_ecs_image_import_image_import_args_doc}
class ImageImportArgs {
  /// The architecture of the image. Default value: `x86_64`. Valid values: `x86_64`, `i386`.
  final pulumi.Input<String>? architecture;
  /// The boot mode of the image. Valid values: `BIOS`, `UEFI`.
  final pulumi.Input<String>? bootMode;
  /// The description of the image. The `description` must be 2 to 256 characters in length and cannot start with http:// or https://.
  final pulumi.Input<String>? description;
  /// The information about the custom image. See `disk_device_mapping` below.
  final pulumi.Input<List<ImageImportDiskDeviceMapping>> diskDeviceMappings;
  /// The name of the image. The `image_name` must be `2` to `128` characters in length. The `image_name` must start with a letter and cannot start with acs: or aliyun. The `image_name` cannot contain http:// or https://. The `image_name` can contain letters, digits, periods (.), colons (:), underscores (_), and hyphens (-).
  final pulumi.Input<String>? imageName;
  /// The type of the license used to activate the operating system after the image is imported. Default value: `Auto`. Valid values: `Auto`, `Aliyun`, `BYOL`.
  final pulumi.Input<String>? licenseType;
  /// The type of the operating system. Default value: `linux`. Valid values: `windows`, `linux`.
  final pulumi.Input<String>? osType;
  /// The operating system platform. More valid values refer to [ImportImage OpenAPI](https://www.alibabacloud.com/help/en/elastic-compute-service/latest/importimage).
  /// > **NOTE:** Before provider version 1.197.0, the default value of `platform` is `Ubuntu`.
  final pulumi.Input<String>? platform;

  /// Creates a new [ImageImportArgs].
  /// [architecture] The architecture of the image. Default value: `x86_64`. Valid values: `x86_64`, `i386`.
  /// [bootMode] The boot mode of the image. Valid values: `BIOS`, `UEFI`.
  /// [description] The description of the image. The `description` must be 2 to 256 characters in length and cannot start with http:// or https://.
  /// [diskDeviceMappings] The information about the custom image. See `disk_device_mapping` below.
  /// [imageName] The name of the image. The `image_name` must be `2` to `128` characters in length. The `image_name` must start with a letter and cannot start with acs: or aliyun. The `image_name` cannot contain http:// or https://. The `image_name` can contain letters, digits, periods (.), colons (:), underscores (_), and hyphens (-).
  /// [licenseType] The type of the license used to activate the operating system after the image is imported. Default value: `Auto`. Valid values: `Auto`, `Aliyun`, `BYOL`.
  /// [osType] The type of the operating system. Default value: `linux`. Valid values: `windows`, `linux`.
  /// [platform] The operating system platform. More valid values refer to [ImportImage OpenAPI](https://www.alibabacloud.com/help/en/elastic-compute-service/latest/importimage).
  ImageImportArgs({
    String? architecture,
    String? bootMode,
    String? description,
    required List<ImageImportDiskDeviceMapping> diskDeviceMappings,
    String? imageName,
    String? licenseType,
    String? osType,
    String? platform,
  }) :
      architecture = pulumi.Input.asOptionalInput<String>(architecture),
      bootMode = pulumi.Input.asOptionalInput<String>(bootMode),
      description = pulumi.Input.asOptionalInput<String>(description),
      diskDeviceMappings = pulumi.Input.asInput<List<ImageImportDiskDeviceMapping>>(diskDeviceMappings),
      imageName = pulumi.Input.asOptionalInput<String>(imageName),
      licenseType = pulumi.Input.asOptionalInput<String>(licenseType),
      osType = pulumi.Input.asOptionalInput<String>(osType),
      platform = pulumi.Input.asOptionalInput<String>(platform);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architecture': ?architecture,
      'bootMode': ?bootMode,
      'description': ?description,
      'diskDeviceMappings': pulumi.Input.mapInputValue<List<ImageImportDiskDeviceMapping>, List<Map<String, dynamic>>>(diskDeviceMappings, (value) => pulumi.Input.encodeList<ImageImportDiskDeviceMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'imageName': ?imageName,
      'licenseType': ?licenseType,
      'osType': ?osType,
      'platform': ?platform,
    };
  }

  factory ImageImportArgs.fromMap(Map<String, dynamic> map) {
    return ImageImportArgs(
      architecture: map['architecture'] == null ? null : map['architecture'] as String,
      bootMode: map['bootMode'] == null ? null : map['bootMode'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      diskDeviceMappings: pulumi.Input.decodeList<ImageImportDiskDeviceMapping>(map['diskDeviceMappings'], (value) => ImageImportDiskDeviceMapping.fromMap((value as Map).cast<String, dynamic>())),
      imageName: map['imageName'] == null ? null : map['imageName'] as String,
      licenseType: map['licenseType'] == null ? null : map['licenseType'] as String,
      osType: map['osType'] == null ? null : map['osType'] as String,
      platform: map['platform'] == null ? null : map['platform'] as String,
    );
  }
}

