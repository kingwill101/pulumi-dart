// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'json_web_key.dart';

class JsonWebKeySet {
  /// The value of the "keys" parameter is an array of JWK values.  By
  /// default, the order of the JWK values within the array does not imply
  /// an order of preference among them, although applications of JWK Sets
  /// can choose to assign a meaning to the order for their purposes, if
  /// desired.
  final List<JsonWebKey>? keys;

  /// Creates a new [JsonWebKeySet].
  /// [keys] The value of the "keys" parameter is an array of JWK values.  By
  JsonWebKeySet({
    this.keys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keys': ?keys == null ? null : pulumi.Input.encodeList<JsonWebKey, Map<String, dynamic>>(keys!, (value) => value.toMap()),
    };
  }

  factory JsonWebKeySet.fromMap(Map<String, dynamic> map) {
    return JsonWebKeySet(
      keys: map['keys'] == null ? null : pulumi.Input.decodeList<JsonWebKey>(map['keys'], (value) => JsonWebKey.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

