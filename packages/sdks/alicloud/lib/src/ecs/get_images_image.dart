// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_images_image_disk_device_mapping.dart';

class GetImagesImage {
  /// The image architecture. Valid values: `i386`, `x86_64`, `arm64`.
  final String architecture;
  /// The creation time.
  final String creationTime;
  /// The description of the image.
  final String description;
  /// A `disk_device_mappings` block as defined below. Description of the system with disks and snapshots under the image.
  final List<GetImagesImageDiskDeviceMapping> diskDeviceMappings;
  /// The ID of the image.
  final String id;
  /// The ID of the image.
  final String imageId;
  /// The alias of the image owner.
  final String imageOwnerAlias;
  /// Version of the image.
  final String imageVersion;
  final bool isCopied;
  final String isSelfShared;
  /// Whether the user has subscribed to the terms of service for the image product corresponding to the ProductCode.
  final bool isSubscribed;
  /// Specifies whether the image can be used on I/O optimized instances.
  final bool isSupportIoOptimized;
  final String name;
  /// The display Chinese name of the OS.
  final String osName;
  /// The english name of the OS.
  final String osNameEn;
  /// The operating system type of the image. Valid values: `windows` and `linux`.
  final String osType;
  final String platform;
  /// The product code of the image on the image market.
  final String productCode;
  /// Progress of image creation, presented in percentages.
  final String progress;
  /// The size of the created disk.
  final int size;
  final String state;
  /// The status of the image. The following values are available, Separate multiple parameter values by using commas (,). Default value: `Available`. Valid values:
  /// - `Creating`: The image is being created.
  /// - `Waiting`: The image is waiting to be processed.
  /// - `Available`: The image is available.
  /// - `UnAvailable`: The image is unavailable.
  /// - `CreateFailed`: The image failed to be created.
  /// - `Deprecated`: The image is discontinued.
  final String status;
  /// A mapping of tags to assign to the resource.
  final Map<String, String>? tags;
  /// Specifies whether to check the validity of the request without actually making the request. Valid values:
  final String usage;

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
      'diskDeviceMappings': pulumi.Input.encodeList<GetImagesImageDiskDeviceMapping, Map<String, dynamic>>(diskDeviceMappings, (value) => value.toMap()),
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
      architecture: map['architecture'] as String,
      creationTime: map['creationTime'] as String,
      description: map['description'] as String,
      diskDeviceMappings: pulumi.Input.decodeList<GetImagesImageDiskDeviceMapping>(map['diskDeviceMappings'], (value) => GetImagesImageDiskDeviceMapping.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      imageId: map['imageId'] as String,
      imageOwnerAlias: map['imageOwnerAlias'] as String,
      imageVersion: map['imageVersion'] as String,
      isCopied: map['isCopied'] as bool,
      isSelfShared: map['isSelfShared'] as String,
      isSubscribed: map['isSubscribed'] as bool,
      isSupportIoOptimized: map['isSupportIoOptimized'] as bool,
      name: map['name'] as String,
      osName: map['osName'] as String,
      osNameEn: map['osNameEn'] as String,
      osType: map['osType'] as String,
      platform: map['platform'] as String,
      productCode: map['productCode'] as String,
      progress: map['progress'] as String,
      size: map['size'] as int,
      state: map['state'] as String,
      status: map['status'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      usage: map['usage'] as String,
    );
  }
}

