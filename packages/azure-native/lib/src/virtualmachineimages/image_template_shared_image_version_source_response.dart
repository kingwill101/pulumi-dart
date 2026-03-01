// ignore_for_file: unused_element, unnecessary_cast


/// Describes an image source that is an image version in an Azure Compute Gallery or a Direct Shared Gallery.
class ImageTemplateSharedImageVersionSourceResponse {
  /// Exact ARM resource id of the image version. This readonly field differs from the image version Id in 'imageVersionId' only if the version name specified in 'imageVersionId' field is 'latest'.
  final String exactVersion;
  /// ARM resource id of the image version. When image version name is 'latest', the version is evaluated when the image build takes place.
  final String imageVersionId;
  /// Specifies the type of source image you want to start with.
  /// Expected value is 'SharedImageVersion'.
  final String type;

  /// Creates a new [ImageTemplateSharedImageVersionSourceResponse].
  /// [exactVersion] Exact ARM resource id of the image version. This readonly field differs from the image version Id in 'imageVersionId' only if the version name specified in 'imageVersionId' field is 'latest'.
  /// [imageVersionId] ARM resource id of the image version. When image version name is 'latest', the version is evaluated when the image build takes place.
  /// [type] Specifies the type of source image you want to start with.
  ImageTemplateSharedImageVersionSourceResponse({
    required this.exactVersion,
    required this.imageVersionId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exactVersion': exactVersion,
      'imageVersionId': imageVersionId,
      'type': type,
    };
  }

  factory ImageTemplateSharedImageVersionSourceResponse.fromMap(Map<String, dynamic> map) {
    return ImageTemplateSharedImageVersionSourceResponse(
      exactVersion: map['exactVersion'] as String,
      imageVersionId: map['imageVersionId'] as String,
      type: map['type'] as String,
    );
  }
}

