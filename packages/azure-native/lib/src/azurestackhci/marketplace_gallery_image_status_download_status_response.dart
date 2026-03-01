// ignore_for_file: unused_element, unnecessary_cast


/// The download status of the gallery image
class MarketplaceGalleryImageStatusDownloadStatusResponse {
  /// The downloaded sized of the image in MB
  final double? downloadSizeInMB;

  /// Creates a new [MarketplaceGalleryImageStatusDownloadStatusResponse].
  /// [downloadSizeInMB] The downloaded sized of the image in MB
  MarketplaceGalleryImageStatusDownloadStatusResponse({
    this.downloadSizeInMB,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'downloadSizeInMB': ?downloadSizeInMB,
    };
  }

  factory MarketplaceGalleryImageStatusDownloadStatusResponse.fromMap(Map<String, dynamic> map) {
    return MarketplaceGalleryImageStatusDownloadStatusResponse(
      downloadSizeInMB: map['downloadSizeInMB'] == null ? null : map['downloadSizeInMB'] as double,
    );
  }
}

