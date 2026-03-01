// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dcdn_kv_kv_args_doc}
/// The set of arguments for Kv.
/// {@endtemplate}
/// {@macro pulumi_dcdn_kv_kv_args_doc}
class KvArgs {
  /// The name of the key to Put, the longest 512, cannot contain spaces.
  final pulumi.Input<String> key;
  /// The name specified when the customer calls PutDcdnKvNamespace.
  final pulumi.Input<String> namespace;
  /// The content of key, up to 2M(2*1000*1000).
  final pulumi.Input<String> value;

  /// Creates a new [KvArgs].
  /// [key] The name of the key to Put, the longest 512, cannot contain spaces.
  /// [namespace] The name specified when the customer calls PutDcdnKvNamespace.
  /// [value] The content of key, up to 2M(2*1000*1000).
  KvArgs({
    required pulumi.Output<String> key,
    required pulumi.Output<String> namespace,
    required pulumi.Output<String> value,
  }) :
      key = pulumi.Input.asInput<String>(key),
      namespace = pulumi.Input.asInput<String>(namespace),
      value = pulumi.Input.asInput<String>(value);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'namespace': namespace,
      'value': value,
    };
  }

  factory KvArgs.fromMap(Map<String, dynamic> map) {
    return KvArgs(
      key: pulumi.Output.create<String>(map['key'] as String),
      namespace: pulumi.Output.create<String>(map['namespace'] as String),
      value: pulumi.Output.create<String>(map['value'] as String),
    );
  }
}

