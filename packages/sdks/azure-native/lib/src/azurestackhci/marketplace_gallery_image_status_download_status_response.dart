// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The download status of the gallery image
class MarketplaceGalleryImageStatusDownloadStatusResponse {
  /// The downloaded sized of the image in MB
  final pulumi.Input<double>? downloadSizeInMB;

  /// Creates a new [MarketplaceGalleryImageStatusDownloadStatusResponse].
  /// [downloadSizeInMB] The downloaded sized of the image in MB
  const MarketplaceGalleryImageStatusDownloadStatusResponse({
    this.downloadSizeInMB,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'downloadSizeInMB': ?downloadSizeInMB,
    };
  }

  factory MarketplaceGalleryImageStatusDownloadStatusResponse.fromMap(Map<String, dynamic> map) {
    return MarketplaceGalleryImageStatusDownloadStatusResponse(
      downloadSizeInMB: (() { final guardedValue = map['downloadSizeInMB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
