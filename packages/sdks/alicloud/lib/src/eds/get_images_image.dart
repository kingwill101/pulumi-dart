// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetImagesImage {
  /// The creation time of the image.
  final pulumi.Input<String> createTime;
  /// The size of data disk of the image.
  final pulumi.Input<int> dataDiskSize;
  /// The description of the image.
  final pulumi.Input<String> description;
  /// The Gpu Category of the image.
  final pulumi.Input<bool> gpuCategory;
  /// The ID of the Image.
  final pulumi.Input<String> id;
  /// The image id of the image.
  final pulumi.Input<String> imageId;
  /// The image name.
  final pulumi.Input<String> imageName;
  /// The image type of the image. Valid values: `SYSTEM`, `CUSTOM`.
  final pulumi.Input<String> imageType;
  /// The os type of the image.
  final pulumi.Input<String> osType;
  /// The progress of the image.
  final pulumi.Input<String> progress;
  /// The size of the image.
  final pulumi.Input<int> size;
  /// The status of the image. Valid values: `Creating`, `Available`, `CreateFailed`.
  final pulumi.Input<String> status;

  /// Creates a new [GetImagesImage].
  /// [createTime] The creation time of the image.
  /// [dataDiskSize] The size of data disk of the image.
  /// [description] The description of the image.
  /// [gpuCategory] The Gpu Category of the image.
  /// [id] The ID of the Image.
  /// [imageId] The image id of the image.
  /// [imageName] The image name.
  /// [imageType] The image type of the image. Valid values: `SYSTEM`, `CUSTOM`.
  /// [osType] The os type of the image.
  /// [progress] The progress of the image.
  /// [size] The size of the image.
  /// [status] The status of the image. Valid values: `Creating`, `Available`, `CreateFailed`.
  GetImagesImage({
    required this.createTime,
    required this.dataDiskSize,
    required this.description,
    required this.gpuCategory,
    required this.id,
    required this.imageId,
    required this.imageName,
    required this.imageType,
    required this.osType,
    required this.progress,
    required this.size,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'dataDiskSize': dataDiskSize,
      'description': description,
      'gpuCategory': gpuCategory,
      'id': id,
      'imageId': imageId,
      'imageName': imageName,
      'imageType': imageType,
      'osType': osType,
      'progress': progress,
      'size': size,
      'status': status,
    };
  }

  factory GetImagesImage.fromMap(Map<String, dynamic> map) {
    return GetImagesImage(
      createTime: (map['createTime'] as String).input(),
      dataDiskSize: (map['dataDiskSize'] as int).input(),
      description: (map['description'] as String).input(),
      gpuCategory: (map['gpuCategory'] as bool).input(),
      id: (map['id'] as String).input(),
      imageId: (map['imageId'] as String).input(),
      imageName: (map['imageName'] as String).input(),
      imageType: (map['imageType'] as String).input(),
      osType: (map['osType'] as String).input(),
      progress: (map['progress'] as String).input(),
      size: (map['size'] as int).input(),
      status: (map['status'] as String).input(),
    );
  }
}

