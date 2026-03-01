// ignore_for_file: unused_element, unnecessary_cast

import 'connection_function_connection_function_config_key_value_store_association.dart';

class ConnectionFunctionConnectionFunctionConfig {
  /// Comment to describe the function.
  final String comment;
  /// Key value store associations. See `key_value_store_association` below.
  final ConnectionFunctionConnectionFunctionConfigKeyValueStoreAssociation? keyValueStoreAssociation;
  /// Runtime environment for the function. Valid values are `cloudfront-js-1.0` and `cloudfront-js-2.0`.
  final String runtime;

  /// Creates a new [ConnectionFunctionConnectionFunctionConfig].
  /// [comment] Comment to describe the function.
  /// [keyValueStoreAssociation] Key value store associations. See `key_value_store_association` below.
  /// [runtime] Runtime environment for the function. Valid values are `cloudfront-js-1.0` and `cloudfront-js-2.0`.
  ConnectionFunctionConnectionFunctionConfig({
    required this.comment,
    this.keyValueStoreAssociation,
    required this.runtime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': comment,
      'keyValueStoreAssociation': ?keyValueStoreAssociation == null ? null : keyValueStoreAssociation!.toMap(),
      'runtime': runtime,
    };
  }

  factory ConnectionFunctionConnectionFunctionConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionFunctionConnectionFunctionConfig(
      comment: map['comment'] as String,
      keyValueStoreAssociation: map['keyValueStoreAssociation'] == null ? null : ConnectionFunctionConnectionFunctionConfigKeyValueStoreAssociation.fromMap((map['keyValueStoreAssociation'] as Map).cast<String, dynamic>()),
      runtime: map['runtime'] as String,
    );
  }
}

