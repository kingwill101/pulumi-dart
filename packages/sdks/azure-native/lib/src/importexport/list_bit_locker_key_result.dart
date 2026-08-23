// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'drive_bit_locker_key_response.dart';

/// Result data returned by listBitLockerKey.
class ListBitLockerKeyResult {
  /// drive status
  final List<DriveBitLockerKeyResponse>? value;

  /// Creates a new [ListBitLockerKeyResult].
  /// [value] drive status
  const ListBitLockerKeyResult({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<DriveBitLockerKeyResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListBitLockerKeyResult.fromMap(Map<String, dynamic> map) {
    return ListBitLockerKeyResult(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<DriveBitLockerKeyResponse>(guardedValue, (value) => DriveBitLockerKeyResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
