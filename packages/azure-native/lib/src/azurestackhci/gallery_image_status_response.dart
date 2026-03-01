// ignore_for_file: unused_element, unnecessary_cast

import 'gallery_image_status_download_status_response.dart';
import 'gallery_image_status_provisioning_status_response.dart';

/// The observed state of gallery images
class GalleryImageStatusResponse {
  /// The download status of the gallery image
  final GalleryImageStatusDownloadStatusResponse? downloadStatus;
  /// GalleryImage provisioning error code
  final String? errorCode;
  /// Descriptive error message
  final String? errorMessage;
  /// The progress of the operation in percentage
  final double? progressPercentage;
  /// provisioning status of the gallery image
  final GalleryImageStatusProvisioningStatusResponse? provisioningStatus;

  /// Creates a new [GalleryImageStatusResponse].
  /// [downloadStatus] The download status of the gallery image
  /// [errorCode] GalleryImage provisioning error code
  /// [errorMessage] Descriptive error message
  /// [progressPercentage] The progress of the operation in percentage
  /// [provisioningStatus] provisioning status of the gallery image
  GalleryImageStatusResponse({
    this.downloadStatus,
    this.errorCode,
    this.errorMessage,
    this.progressPercentage,
    this.provisioningStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'downloadStatus': ?downloadStatus == null ? null : downloadStatus!.toMap(),
      'errorCode': ?errorCode,
      'errorMessage': ?errorMessage,
      'progressPercentage': ?progressPercentage,
      'provisioningStatus': ?provisioningStatus == null ? null : provisioningStatus!.toMap(),
    };
  }

  factory GalleryImageStatusResponse.fromMap(Map<String, dynamic> map) {
    return GalleryImageStatusResponse(
      downloadStatus: map['downloadStatus'] == null ? null : GalleryImageStatusDownloadStatusResponse.fromMap((map['downloadStatus'] as Map).cast<String, dynamic>()),
      errorCode: map['errorCode'] == null ? null : map['errorCode'] as String,
      errorMessage: map['errorMessage'] == null ? null : map['errorMessage'] as String,
      progressPercentage: map['progressPercentage'] == null ? null : map['progressPercentage'] as double,
      provisioningStatus: map['provisioningStatus'] == null ? null : GalleryImageStatusProvisioningStatusResponse.fromMap((map['provisioningStatus'] as Map).cast<String, dynamic>()),
    );
  }
}

