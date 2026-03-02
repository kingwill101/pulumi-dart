// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_attach_package_info_properties_response.dart';

/// Schema for App Attach Package properties.
class AppAttachPackagePropertiesResponse {
  /// Parameter indicating how the health check should behave if this package fails staging
  final pulumi.Input<String>? failHealthCheckOnStagingFailure;
  /// List of Hostpool resource Ids.
  final pulumi.Input<List<String>>? hostPoolReferences;
  /// Detailed properties for App Attach Package
  final pulumi.Input<AppAttachPackageInfoPropertiesResponse>? image;
  /// URL path to certificate name located in keyVault
  final pulumi.Input<String>? keyVaultURL;
  /// The provisioning state of the App Attach Package.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [AppAttachPackagePropertiesResponse].
  /// [failHealthCheckOnStagingFailure] Parameter indicating how the health check should behave if this package fails staging
  /// [hostPoolReferences] List of Hostpool resource Ids.
  /// [image] Detailed properties for App Attach Package
  /// [keyVaultURL] URL path to certificate name located in keyVault
  /// [provisioningState] The provisioning state of the App Attach Package.
  AppAttachPackagePropertiesResponse({
    this.failHealthCheckOnStagingFailure,
    this.hostPoolReferences,
    this.image,
    this.keyVaultURL,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failHealthCheckOnStagingFailure': ?failHealthCheckOnStagingFailure,
      'hostPoolReferences': ?hostPoolReferences,
      'image': ?pulumi.Input.mapOptionalInputValue<AppAttachPackageInfoPropertiesResponse, Map<String, dynamic>>(image, (value) => value.toMap()),
      'keyVaultURL': ?keyVaultURL,
      'provisioningState': provisioningState,
    };
  }

  factory AppAttachPackagePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AppAttachPackagePropertiesResponse(
      failHealthCheckOnStagingFailure: map['failHealthCheckOnStagingFailure'] == null ? null : (map['failHealthCheckOnStagingFailure']! as String).input(),
      hostPoolReferences: map['hostPoolReferences'] == null ? null : ((map['hostPoolReferences']! as List).cast<String>()).input(),
      image: map['image'] == null ? null : (AppAttachPackageInfoPropertiesResponse.fromMap((map['image']! as Map).cast<String, dynamic>())).input(),
      keyVaultURL: map['keyVaultURL'] == null ? null : (map['keyVaultURL']! as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
    );
  }
}

