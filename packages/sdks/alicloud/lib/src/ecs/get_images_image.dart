// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_images_image_disk_device_mapping.dart';

class GetImagesImage {
  /// The image architecture. Valid values: `i386`, `x86_64`, `arm64`.
  final pulumi.Input<String> architecture;
  /// The creation time.
  final pulumi.Input<String> creationTime;
  /// The description of the image.
  final pulumi.Input<String> description;
  /// A `disk_device_mappings` block as defined below. Description of the system with disks and snapshots under the image.
  final pulumi.Input<List<GetImagesImageDiskDeviceMapping>> diskDeviceMappings;
  /// The ID of the image.
  final pulumi.Input<String> id;
  /// The ID of the image.
  final pulumi.Input<String> imageId;
  /// The alias of the image owner.
  final pulumi.Input<String> imageOwnerAlias;
  /// Version of the image.
  final pulumi.Input<String> imageVersion;
  final pulumi.Input<bool> isCopied;
  final pulumi.Input<String> isSelfShared;
  /// Whether the user has subscribed to the terms of service for the image product corresponding to the ProductCode.
  final pulumi.Input<bool> isSubscribed;
  /// Specifies whether the image can be used on I/O optimized instances.
  final pulumi.Input<bool> isSupportIoOptimized;
  final pulumi.Input<String> name;
  /// The display Chinese name of the OS.
  final pulumi.Input<String> osName;
  /// The english name of the OS.
  final pulumi.Input<String> osNameEn;
  /// The operating system type of the image. Valid values: `windows` and `linux`.
  final pulumi.Input<String> osType;
  final pulumi.Input<String> platform;
  /// The product code of the image on the image market.
  final pulumi.Input<String> productCode;
  /// Progress of image creation, presented in percentages.
  final pulumi.Input<String> progress;
  /// The size of the created disk.
  final pulumi.Input<int> size;
  final pulumi.Input<String> state;
  /// The status of the image. The following values are available, Separate multiple parameter values by using commas (,). Default value: `Available`. Valid values:
  /// - `Creating`: The image is being created.
  /// - `Waiting`: The image is waiting to be processed.
  /// - `Available`: The image is available.
  /// - `UnAvailable`: The image is unavailable.
  /// - `CreateFailed`: The image failed to be created.
  /// - `Deprecated`: The image is discontinued.
  final pulumi.Input<String> status;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies whether to check the validity of the request without actually making the request. Valid values:
  final pulumi.Input<String> usage;

  /// Creates a new [GetImagesImage].
  /// [architecture] The image architecture. Valid values: `i386`, `x86_64`, `arm64`.
  /// [creationTime] The creation time.
  /// [description] The description of the image.
  /// [diskDeviceMappings] A `disk_device_mappings` block as defined below. Description of the system with disks and snapshots under the image.
  /// [id] The ID of the image.
  /// [imageId] The ID of the image.
  /// [imageOwnerAlias] The alias of the image owner.
  /// [imageVersion] Version of the image.
  /// [isCopied] Required.
  /// [isSelfShared] Required.
  /// [isSubscribed] Whether the user has subscribed to the terms of service for the image product corresponding to the ProductCode.
  /// [isSupportIoOptimized] Specifies whether the image can be used on I/O optimized instances.
  /// [name] Required.
  /// [osName] The display Chinese name of the OS.
  /// [osNameEn] The english name of the OS.
  /// [osType] The operating system type of the image. Valid values: `windows` and `linux`.
  /// [platform] Required.
  /// [productCode] The product code of the image on the image market.
  /// [progress] Progress of image creation, presented in percentages.
  /// [size] The size of the created disk.
  /// [state] Required.
  /// [status] The status of the image. The following values are available, Separate multiple parameter values by using commas (,). Default value: `Available`. Valid values:
  /// [tags] A mapping of tags to assign to the resource.
  /// [usage] Specifies whether to check the validity of the request without actually making the request. Valid values:
  GetImagesImage({
    required this.architecture,
    required this.creationTime,
    required this.description,
    required this.diskDeviceMappings,
    required this.id,
    required this.imageId,
    required this.imageOwnerAlias,
    required this.imageVersion,
    required this.isCopied,
    required this.isSelfShared,
    required this.isSubscribed,
    required this.isSupportIoOptimized,
    required this.name,
    required this.osName,
    required this.osNameEn,
    required this.osType,
    required this.platform,
    required this.productCode,
    required this.progress,
    required this.size,
    required this.state,
    required this.status,
    this.tags,
    required this.usage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architecture': architecture,
      'creationTime': creationTime,
      'description': description,
      'diskDeviceMappings': pulumi.Input.mapInputValue<List<GetImagesImageDiskDeviceMapping>, List<Map<String, dynamic>>>(diskDeviceMappings, (value) => pulumi.Input.encodeList<GetImagesImageDiskDeviceMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': id,
      'imageId': imageId,
      'imageOwnerAlias': imageOwnerAlias,
      'imageVersion': imageVersion,
      'isCopied': isCopied,
      'isSelfShared': isSelfShared,
      'isSubscribed': isSubscribed,
      'isSupportIoOptimized': isSupportIoOptimized,
      'name': name,
      'osName': osName,
      'osNameEn': osNameEn,
      'osType': osType,
      'platform': platform,
      'productCode': productCode,
      'progress': progress,
      'size': size,
      'state': state,
      'status': status,
      'tags': ?tags,
      'usage': usage,
    };
  }

  factory GetImagesImage.fromMap(Map<String, dynamic> map) {
    return GetImagesImage(
      architecture: (map['architecture'] as String).input(),
      creationTime: (map['creationTime'] as String).input(),
      description: (map['description'] as String).input(),
      diskDeviceMappings: (pulumi.Input.decodeList<GetImagesImageDiskDeviceMapping>(map['diskDeviceMappings'], (value) => GetImagesImageDiskDeviceMapping.fromMap((value as Map).cast<String, dynamic>()))).input(),
      id: (map['id'] as String).input(),
      imageId: (map['imageId'] as String).input(),
      imageOwnerAlias: (map['imageOwnerAlias'] as String).input(),
      imageVersion: (map['imageVersion'] as String).input(),
      isCopied: (map['isCopied'] as bool).input(),
      isSelfShared: (map['isSelfShared'] as String).input(),
      isSubscribed: (map['isSubscribed'] as bool).input(),
      isSupportIoOptimized: (map['isSupportIoOptimized'] as bool).input(),
      name: (map['name'] as String).input(),
      osName: (map['osName'] as String).input(),
      osNameEn: (map['osNameEn'] as String).input(),
      osType: (map['osType'] as String).input(),
      platform: (map['platform'] as String).input(),
      productCode: (map['productCode'] as String).input(),
      progress: (map['progress'] as String).input(),
      size: (map['size'] as int).input(),
      state: (map['state'] as String).input(),
      status: (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      usage: (map['usage'] as String).input(),
    );
  }
}

