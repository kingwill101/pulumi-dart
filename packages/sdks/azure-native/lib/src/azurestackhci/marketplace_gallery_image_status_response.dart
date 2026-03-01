// ignore_for_file: unused_element, unnecessary_cast

import 'marketplace_gallery_image_status_download_status_response.dart';
import 'marketplace_gallery_image_status_provisioning_status_response.dart';

/// The observed state of marketplace gallery images
class MarketplaceGalleryImageStatusResponse {
  /// The download status of the gallery image
  final MarketplaceGalleryImageStatusDownloadStatusResponse? downloadStatus;
  /// MarketplaceGalleryImage provisioning error code
  final String? errorCode;
  /// Descriptive error message
  final String? errorMessage;
  /// The progress of the operation in percentage
  final double? progressPercentage;
  /// Provisioning status of marketplace gallery image
  final MarketplaceGalleryImageStatusProvisioningStatusResponse? provisioningStatus;

  /// Creates a new [MarketplaceGalleryImageStatusResponse].
  /// [downloadStatus] The download status of the gallery image
  /// [errorCode] MarketplaceGalleryImage provisioning error code
  /// [errorMessage] Descriptive error message
  /// [progressPercentage] The progress of the operation in percentage
  /// [provisioningStatus] Provisioning status of marketplace gallery image
  MarketplaceGalleryImageStatusResponse({
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

  factory MarketplaceGalleryImageStatusResponse.fromMap(Map<String, dynamic> map) {
    return MarketplaceGalleryImageStatusResponse(
      downloadStatus: map['downloadStatus'] == null ? null : MarketplaceGalleryImageStatusDownloadStatusResponse.fromMap((map['downloadStatus'] as Map).cast<String, dynamic>()),
      errorCode: map['errorCode'] == null ? null : map['errorCode'] as String,
      errorMessage: map['errorMessage'] == null ? null : map['errorMessage'] as String,
      progressPercentage: map['progressPercentage'] == null ? null : map['progressPercentage'] as double,
      provisioningStatus: map['provisioningStatus'] == null ? null : MarketplaceGalleryImageStatusProvisioningStatusResponse.fromMap((map['provisioningStatus'] as Map).cast<String, dynamic>()),
    );
  }
}

