// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_function_connection_function_config_key_value_store_association.dart';

class ConnectionFunctionConnectionFunctionConfig {
  /// Comment to describe the function.
  final pulumi.Input<String> comment;
  /// Key value store associations. See `key_value_store_association` below.
  final pulumi.Input<ConnectionFunctionConnectionFunctionConfigKeyValueStoreAssociation>? keyValueStoreAssociation;
  /// Runtime environment for the function. Valid values are `cloudfront-js-1.0` and `cloudfront-js-2.0`.
  final pulumi.Input<String> runtime;

  /// Creates a new [ConnectionFunctionConnectionFunctionConfig].
  /// [comment] Comment to describe the function.
  /// [keyValueStoreAssociation] Key value store associations. See `key_value_store_association` below.
  /// [runtime] Runtime environment for the function. Valid values are `cloudfront-js-1.0` and `cloudfront-js-2.0`.
  const ConnectionFunctionConnectionFunctionConfig({
    required this.comment,
    this.keyValueStoreAssociation,
    required this.runtime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': comment,
      'keyValueStoreAssociation': ?pulumi.Input.mapOptionalInputValue<ConnectionFunctionConnectionFunctionConfigKeyValueStoreAssociation, Map<String, dynamic>>(keyValueStoreAssociation, (value) => value.toMap()),
      'runtime': runtime,
    };
  }

  factory ConnectionFunctionConnectionFunctionConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionFunctionConnectionFunctionConfig(
      comment: pulumi.Input.fromValue(map['comment'] as String),
      keyValueStoreAssociation: (() { final guardedValue = map['keyValueStoreAssociation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionFunctionConnectionFunctionConfigKeyValueStoreAssociation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      runtime: pulumi.Input.fromValue(map['runtime'] as String),
    );
  }
}

