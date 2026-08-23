// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cognitive Services Rai Monitor Config.
class RaiMonitorConfig {
  /// The storage resource Id.
  final pulumi.Input<String>? adxStorageResourceId;
  /// The identity client Id to access the storage.
  final pulumi.Input<String>? identityClientId;

  /// Creates a new [RaiMonitorConfig].
  /// [adxStorageResourceId] The storage resource Id.
  /// [identityClientId] The identity client Id to access the storage.
  const RaiMonitorConfig({
    this.adxStorageResourceId,
    this.identityClientId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adxStorageResourceId': ?adxStorageResourceId,
      'identityClientId': ?identityClientId,
    };
  }

  factory RaiMonitorConfig.fromMap(Map<String, dynamic> map) {
    return RaiMonitorConfig(
      adxStorageResourceId: (() { final guardedValue = map['adxStorageResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identityClientId: (() { final guardedValue = map['identityClientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
