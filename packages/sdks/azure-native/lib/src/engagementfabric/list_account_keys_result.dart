// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_description_response.dart';

/// Result data returned by listAccountKeys.
class ListAccountKeysResult {
  /// Account keys
  final List<KeyDescriptionResponse> value;

  /// Creates a new [ListAccountKeysResult].
  /// [value] Account keys
  ListAccountKeysResult({required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value':
          pulumi.Input.encodeList<KeyDescriptionResponse, Map<String, dynamic>>(
            value,
            (value) => value.toMap(),
          ),
    };
  }

  factory ListAccountKeysResult.fromMap(Map<String, dynamic> map) {
    return ListAccountKeysResult(
      value: pulumi.Input.decodeList<KeyDescriptionResponse>(
        map['value']!,
        (value) => KeyDescriptionResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
