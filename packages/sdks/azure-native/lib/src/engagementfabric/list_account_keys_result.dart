// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_description_response.dart';

/// Result data returned by listAccountKeys.
class ListAccountKeysResult {
  /// Account keys
  final List<KeyDescriptionResponse>? value;

  /// Creates a new [ListAccountKeysResult].
  /// [value] Account keys
  const ListAccountKeysResult({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<KeyDescriptionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListAccountKeysResult.fromMap(Map<String, dynamic> map) {
    return ListAccountKeysResult(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<KeyDescriptionResponse>(guardedValue, (value) => KeyDescriptionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
