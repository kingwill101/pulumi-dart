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

  factory KeyVaultLastAccessStatusContractPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return KeyVaultLastAccessStatusContractPropertiesResponse(
      code: map['code'] == null ? null : (map['code']! as String).input(),
      message: map['message'] == null ? null : (map['message']! as String).input(),
      timeStampUtc: map['timeStampUtc'] == null ? null : (map['timeStampUtc']! as String).input(),
    );
  }
}

