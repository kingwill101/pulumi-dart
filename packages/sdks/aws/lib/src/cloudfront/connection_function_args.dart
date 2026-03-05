// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_function_connection_function_config.dart';

/// {@template pulumi_cloudfront_connection_function_connection_function_args_doc}
/// The set of arguments for ConnectionFunction.
/// {@endtemplate}
/// {@macro pulumi_cloudfront_connection_function_connection_function_args_doc}
class ConnectionFunctionArgs {
  /// Code for the connection function. Maximum length is 40960 characters.
  final pulumi.Input<String> connectionFunctionCode;
  /// Configuration information for the connection function. See `connection_function_config` below.
  final pulumi.Input<ConnectionFunctionConnectionFunctionConfig> connectionFunctionConfig;
  /// Name for the connection function. Must be 1-64 characters and can contain letters, numbers, hyphens, and underscores. Changing this forces a new resource to be created.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Whether to publish the function to the `LIVE` stage after creation or update. Defaults to `false`.
  final pulumi.Input<bool>? publish;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ConnectionFunctionArgs].
  /// [connectionFunctionCode] Code for the connection function. Maximum length is 40960 characters.
  /// [connectionFunctionConfig] Configuration information for the connection function. See `connection_function_config` below.
  /// [name] Name for the connection function. Must be 1-64 characters and can contain letters, numbers, hyphens, and underscores. Changing this forces a new resource to be created.
  /// [publish] Whether to publish the function to the `LIVE` stage after creation or update. Defaults to `false`.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ConnectionFunctionArgs({
    required this.connectionFunctionCode,
    required this.connectionFunctionConfig,
    this.name,
    this.publish,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionFunctionCode': connectionFunctionCode,
      'connectionFunctionConfig': pulumi.Input.mapInputValue<ConnectionFunctionConnectionFunctionConfig, Map<String, dynamic>>(connectionFunctionConfig, (value) => value.toMap()),
      'name': ?name,
      'publish': ?publish,
      'tags': ?tags,
    };
  }

  factory ConnectionFunctionArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionFunctionArgs(
      connectionFunctionCode: pulumi.Input.fromValue(map['connectionFunctionCode'] as String),
      connectionFunctionConfig: pulumi.Input.fromValue(ConnectionFunctionConnectionFunctionConfig.fromMap((map['connectionFunctionConfig']! as Map).cast<String, dynamic>())),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publish: (() { final guardedValue = map['publish']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

