// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The download status of the gallery image
class GalleryImageStatusDownloadStatusResponse {
  /// The downloaded sized of the image in MB
  final pulumi.Input<double>? downloadSizeInMB;

  /// Creates a new [GalleryImageStatusDownloadStatusResponse].
  /// [downloadSizeInMB] The downloaded sized of the image in MB
  GalleryImageStatusDownloadStatusResponse({
    this.downloadSizeInMB,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'downloadSizeInMB': ?downloadSizeInMB,
    };
  }

  factory GalleryImageStatusDownloadStatusResponse.fromMap(Map<String, dynamic> map) {
    return GalleryImageStatusDownloadStatusResponse(
      downloadSizeInMB: map['downloadSizeInMB'] == null ? null : (map['downloadSizeInMB'] as double).input(),
    );
  }
}

