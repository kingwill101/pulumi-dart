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
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      dataDiskSize: pulumi.Input.fromValue(map['dataDiskSize'] as int),
      description: pulumi.Input.fromValue(map['description'] as String),
      gpuCategory: pulumi.Input.fromValue(map['gpuCategory'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      imageId: pulumi.Input.fromValue(map['imageId'] as String),
      imageName: pulumi.Input.fromValue(map['imageName'] as String),
      imageType: pulumi.Input.fromValue(map['imageType'] as String),
      osType: pulumi.Input.fromValue(map['osType'] as String),
      progress: pulumi.Input.fromValue(map['progress'] as String),
      size: pulumi.Input.fromValue(map['size'] as int),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

