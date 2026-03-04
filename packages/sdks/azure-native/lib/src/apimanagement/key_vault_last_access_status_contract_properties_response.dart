// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Issue contract Update Properties.
class KeyVaultLastAccessStatusContractPropertiesResponse {
  /// Last status code for sync and refresh of secret from key vault.
  final pulumi.Input<String>? code;

  /// Details of the error else empty.
  final pulumi.Input<String>? message;

  /// Last time secret was accessed. The date conforms to the following format: `yyyy-MM-ddTHH:mm:ssZ` as specified by the ISO 8601 standard.
  final pulumi.Input<String>? timeStampUtc;

  /// Creates a new [KeyVaultLastAccessStatusContractPropertiesResponse].
  /// [code] Last status code for sync and refresh of secret from key vault.
  /// [message] Details of the error else empty.
  /// [timeStampUtc] Last time secret was accessed. The date conforms to the following format: `yyyy-MM-ddTHH:mm:ssZ` as specified by the ISO 8601 standard.
  KeyVaultLastAccessStatusContractPropertiesResponse({
    this.code,
    this.message,
    this.timeStampUtc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'message': ?message,
      'timeStampUtc': ?timeStampUtc,
    };
  }

  factory KeyVaultLastAccessStatusContractPropertiesResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return KeyVaultLastAccessStatusContractPropertiesResponse(
      code: (() {
        final guardedValue = map['code'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      message: (() {
        final guardedValue = map['message'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      timeStampUtc: (() {
        final guardedValue = map['timeStampUtc'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
