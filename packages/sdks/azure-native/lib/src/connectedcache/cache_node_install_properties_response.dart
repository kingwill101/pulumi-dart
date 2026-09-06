// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Mcc cache node resource install script properties.
class CacheNodeInstallPropertiesResponse {
  /// Mcc cache node resource Id.
  final pulumi.Input<String?>? cacheNodeId;
  /// Mcc customer resource Id.
  final pulumi.Input<String?>? customerId;
  /// Mcc primary account key. Internal to Mcc.
  final pulumi.Input<String> primaryAccountKey;
  /// Mcc Iot Central temporary device registration key, used once.
  final pulumi.Input<String> registrationKey;
  /// Mcc secondary account key. Internal to Mcc.
  final pulumi.Input<String> secondaryAccountKey;

  /// Creates a new [CacheNodeInstallPropertiesResponse].
  /// [cacheNodeId] Mcc cache node resource Id.
  /// [customerId] Mcc customer resource Id.
  /// [primaryAccountKey] Mcc primary account key. Internal to Mcc.
  /// [registrationKey] Mcc Iot Central temporary device registration key, used once.
  /// [secondaryAccountKey] Mcc secondary account key. Internal to Mcc.
  const CacheNodeInstallPropertiesResponse({
    this.cacheNodeId,
    this.customerId,
    required this.primaryAccountKey,
    required this.registrationKey,
    required this.secondaryAccountKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheNodeId': ?cacheNodeId,
      'customerId': ?customerId,
      'primaryAccountKey': primaryAccountKey,
      'registrationKey': registrationKey,
      'secondaryAccountKey': secondaryAccountKey,
    };
  }

  factory CacheNodeInstallPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return CacheNodeInstallPropertiesResponse(
      cacheNodeId: (() { final guardedValue = map['cacheNodeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customerId: (() { final guardedValue = map['customerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryAccountKey: pulumi.Input.fromValue(map['primaryAccountKey'] as String),
      registrationKey: pulumi.Input.fromValue(map['registrationKey'] as String),
      secondaryAccountKey: pulumi.Input.fromValue(map['secondaryAccountKey'] as String),
    );
  }
}
