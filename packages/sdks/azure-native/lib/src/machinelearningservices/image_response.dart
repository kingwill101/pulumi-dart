// ignore_for_file: unused_element, unnecessary_cast


/// Describes the Image Specifications
class ImageResponse {
  /// Image reference
  final String? reference;
  /// Type of the image. Possible values are: docker - For docker images. azureml - For AzureML images
  final String? type;

  /// Creates a new [ImageResponse].
  /// [reference] Image reference
  /// [type] Type of the image. Possible values are: docker - For docker images. azureml - For AzureML images
  ImageResponse({
    this.reference,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reference': ?reference,
      'type': ?type,
    };
  }

  factory ImageResponse.fromMap(Map<String, dynamic> map) {
    return ImageResponse(
      reference: map['reference'] == null ? null : map['reference'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

