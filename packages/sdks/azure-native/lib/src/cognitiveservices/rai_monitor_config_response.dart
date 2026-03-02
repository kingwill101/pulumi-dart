// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cognitive Services Rai Monitor Config.
class RaiMonitorConfigResponse {
  /// The storage resource Id.
  final pulumi.Input<String>? adxStorageResourceId;
  /// The identity client Id to access the storage.
  final pulumi.Input<String>? identityClientId;

  /// Creates a new [RaiMonitorConfigResponse].
  /// [adxStorageResourceId] The storage resource Id.
  /// [identityClientId] The identity client Id to access the storage.
  RaiMonitorConfigResponse({
    this.adxStorageResourceId,
    this.identityClientId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adxStorageResourceId': ?adxStorageResourceId,
      'identityClientId': ?identityClientId,
    };
  }

  factory RaiMonitorConfigResponse.fromMap(Map<String, dynamic> map) {
    return RaiMonitorConfigResponse(
      adxStorageResourceId: map['adxStorageResourceId'] == null ? null : (map['adxStorageResourceId'] as String).input(),
      identityClientId: map['identityClientId'] == null ? null : (map['identityClientId'] as String).input(),
    );
  }
}

