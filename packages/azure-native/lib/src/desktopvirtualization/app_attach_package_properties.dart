// ignore_for_file: unused_element, unnecessary_cast

import 'app_attach_package_info_properties.dart';

/// Schema for App Attach Package properties.
class AppAttachPackageProperties {
  /// Parameter indicating how the health check should behave if this package fails staging
  final String? failHealthCheckOnStagingFailure;
  /// List of Hostpool resource Ids.
  final List<String>? hostPoolReferences;
  /// Detailed properties for App Attach Package
  final AppAttachPackageInfoProperties? image;
  /// URL path to certificate name located in keyVault
  final String? keyVaultURL;

  /// Creates a new [AppAttachPackageProperties].
  /// [failHealthCheckOnStagingFailure] Parameter indicating how the health check should behave if this package fails staging
  /// [hostPoolReferences] List of Hostpool resource Ids.
  /// [image] Detailed properties for App Attach Package
  /// [keyVaultURL] URL path to certificate name located in keyVault
  AppAttachPackageProperties({
    this.failHealthCheckOnStagingFailure,
    this.hostPoolReferences,
    this.image,
    this.keyVaultURL,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failHealthCheckOnStagingFailure': ?failHealthCheckOnStagingFailure,
      'hostPoolReferences': ?hostPoolReferences,
      'image': ?image == null ? null : image!.toMap(),
      'keyVaultURL': ?keyVaultURL,
    };
  }

  factory AppAttachPackageProperties.fromMap(Map<String, dynamic> map) {
    return AppAttachPackageProperties(
      failHealthCheckOnStagingFailure: map['failHealthCheckOnStagingFailure'] == null ? null : map['failHealthCheckOnStagingFailure'] as String,
      hostPoolReferences: map['hostPoolReferences'] == null ? null : (map['hostPoolReferences'] as List).cast<String>(),
      image: map['image'] == null ? null : AppAttachPackageInfoProperties.fromMap((map['image'] as Map).cast<String, dynamic>()),
      keyVaultURL: map['keyVaultURL'] == null ? null : map['keyVaultURL'] as String,
    );
  }
}

