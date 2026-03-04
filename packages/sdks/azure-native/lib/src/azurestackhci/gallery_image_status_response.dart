// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gallery_image_status_download_status_response.dart';
import 'gallery_image_status_provisioning_status_response.dart';

/// The observed state of gallery images
class GalleryImageStatusResponse {
  /// The download status of the gallery image
  final pulumi.Input<GalleryImageStatusDownloadStatusResponse>? downloadStatus;

  /// GalleryImage provisioning error code
  final pulumi.Input<String>? errorCode;

  /// Descriptive error message
  final pulumi.Input<String>? errorMessage;

  /// The progress of the operation in percentage
  final pulumi.Input<double>? progressPercentage;

  /// provisioning status of the gallery image
  final pulumi.Input<GalleryImageStatusProvisioningStatusResponse>?
  provisioningStatus;

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
      'downloadStatus':
          ?pulumi.Input.mapOptionalInputValue<
            GalleryImageStatusDownloadStatusResponse,
            Map<String, dynamic>
          >(downloadStatus, (value) => value.toMap()),
      'errorCode': ?errorCode,
      'errorMessage': ?errorMessage,
      'progressPercentage': ?progressPercentage,
      'provisioningStatus':
          ?pulumi.Input.mapOptionalInputValue<
            GalleryImageStatusProvisioningStatusResponse,
            Map<String, dynamic>
          >(provisioningStatus, (value) => value.toMap()),
    };
  }

  factory GalleryImageStatusResponse.fromMap(Map<String, dynamic> map) {
    return GalleryImageStatusResponse(
      downloadStatus: (() {
        final guardedValue = map['downloadStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GalleryImageStatusDownloadStatusResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      errorCode: (() {
        final guardedValue = map['errorCode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      errorMessage: (() {
        final guardedValue = map['errorMessage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      progressPercentage: (() {
        final guardedValue = map['progressPercentage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      provisioningStatus: (() {
        final guardedValue = map['provisioningStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GalleryImageStatusProvisioningStatusResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
