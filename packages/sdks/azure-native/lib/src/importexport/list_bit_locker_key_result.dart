// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'drive_bit_locker_key_response.dart';

/// Result data returned by listBitLockerKey.
class ListBitLockerKeyResult {
  /// drive status
  final List<DriveBitLockerKeyResponse>? value;

  /// Creates a new [ListBitLockerKeyResult].
  /// [value] drive status
  ListBitLockerKeyResult({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value == null ? null : pulumi.Input.encodeList<DriveBitLockerKeyResponse, Map<String, dynamic>>(value!, (value) => value.toMap()),
    };
  }

  factory ListBitLockerKeyResult.fromMap(Map<String, dynamic> map) {
    return ListBitLockerKeyResult(
      value: map['value'] == null ? null : pulumi.Input.decodeList<DriveBitLockerKeyResponse>(map['value']!, (value) => DriveBitLockerKeyResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

