// ignore_for_file: unused_element, unnecessary_cast

/// An image freshness check, which rejects images that were uploaded before the set number of days ago to the supported repositories.
class ImageFreshnessCheckResponse {
  /// The max number of days that is allowed since the image was uploaded. Must be greater than zero.
  final int maxUploadAgeDays;

  /// Creates a new [ImageFreshnessCheckResponse].
  /// [maxUploadAgeDays] The max number of days that is allowed since the image was uploaded. Must be greater than zero.
  ImageFreshnessCheckResponse({required this.maxUploadAgeDays});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'maxUploadAgeDays': maxUploadAgeDays};
  }

  factory ImageFreshnessCheckResponse.fromMap(Map<String, dynamic> map) {
    return ImageFreshnessCheckResponse(
      maxUploadAgeDays: map['maxUploadAgeDays'] as int,
    );
  }
}
