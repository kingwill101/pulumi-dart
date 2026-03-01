// ignore_for_file: unused_element, unnecessary_cast


class GetImagesImage {
  /// The creation time of the image.
  final String createTime;
  /// The size of data disk of the image.
  final int dataDiskSize;
  /// The description of the image.
  final String description;
  /// The Gpu Category of the image.
  final bool gpuCategory;
  /// The ID of the Image.
  final String id;
  /// The image id of the image.
  final String imageId;
  /// The image name.
  final String imageName;
  /// The image type of the image. Valid values: `SYSTEM`, `CUSTOM`.
  final String imageType;
  /// The os type of the image.
  final String osType;
  /// The progress of the image.
  final String progress;
  /// The size of the image.
  final int size;
  /// The status of the image. Valid values: `Creating`, `Available`, `CreateFailed`.
  final String status;

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
      createTime: map['createTime'] as String,
      dataDiskSize: map['dataDiskSize'] as int,
      description: map['description'] as String,
      gpuCategory: map['gpuCategory'] as bool,
      id: map['id'] as String,
      imageId: map['imageId'] as String,
      imageName: map['imageName'] as String,
      imageType: map['imageType'] as String,
      osType: map['osType'] as String,
      progress: map['progress'] as String,
      size: map['size'] as int,
      status: map['status'] as String,
    );
  }
}

