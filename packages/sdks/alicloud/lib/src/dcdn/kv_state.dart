// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Kv resources.
class KvState {
  /// The name of the key to Put, the longest 512, cannot contain spaces.
  final pulumi.Input<String>? key;
  /// The name specified when the customer calls PutDcdnKvNamespace.
  final pulumi.Input<String>? namespace;
  /// The content of key, up to 2M(2*1000*1000).
  final pulumi.Input<String>? value;

  /// Creates a new [KvState].
  /// [key] The name of the key to Put, the longest 512, cannot contain spaces.
  /// [namespace] The name specified when the customer calls PutDcdnKvNamespace.
  /// [value] The content of key, up to 2M(2*1000*1000).
  KvState({
    this.key,
    this.namespace,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'namespace': ?namespace,
      'value': ?value,
    };
  }

  factory KvState.fromMap(Map<String, dynamic> map) {
    return KvState(
      key: map['key'] == null ? null : (map['key']! as String).input(),
      namespace: map['namespace'] == null ? null : (map['namespace']! as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

