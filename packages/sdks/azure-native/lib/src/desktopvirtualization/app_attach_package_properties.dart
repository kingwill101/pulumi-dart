// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_attach_package_info_properties.dart';

/// Schema for App Attach Package properties.
class AppAttachPackageProperties {
  /// Parameter indicating how the health check should behave if this package fails staging
  final pulumi.Input<String>? failHealthCheckOnStagingFailure;
  /// List of Hostpool resource Ids.
  final pulumi.Input<List<String>>? hostPoolReferences;
  /// Detailed properties for App Attach Package
  final pulumi.Input<AppAttachPackageInfoProperties>? image;
  /// URL path to certificate name located in keyVault
  final pulumi.Input<String>? keyVaultURL;

  /// Creates a new [AppAttachPackageProperties].
  /// [failHealthCheckOnStagingFailure] Parameter indicating how the health check should behave if this package fails staging
  /// [hostPoolReferences] List of Hostpool resource Ids.
  /// [image] Detailed properties for App Attach Package
  /// [keyVaultURL] URL path to certificate name located in keyVault
  const AppAttachPackageProperties({
    this.failHealthCheckOnStagingFailure,
    this.hostPoolReferences,
    this.image,
    this.keyVaultURL,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failHealthCheckOnStagingFailure': ?failHealthCheckOnStagingFailure,
      'hostPoolReferences': ?hostPoolReferences,
      'image': ?pulumi.Input.mapOptionalInputValue<AppAttachPackageInfoProperties, Map<String, dynamic>>(image, (value) => value.toMap()),
      'keyVaultURL': ?keyVaultURL,
    };
  }

  factory AppAttachPackageProperties.fromMap(Map<String, dynamic> map) {
    return AppAttachPackageProperties(
      failHealthCheckOnStagingFailure: (() { final guardedValue = map['failHealthCheckOnStagingFailure']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostPoolReferences: (() { final guardedValue = map['hostPoolReferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppAttachPackageInfoProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      keyVaultURL: (() { final guardedValue = map['keyVaultURL']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
