// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../connection_function_connection_function_config/connection_function_connection_function_config.dart';

/// The set of arguments for ConnectionFunction.
class ConnectionFunctionArgs {
  /// Code for the connection function. Maximum length is 40960 characters.
  final pulumi.Input<String> connectionFunctionCode;

  /// Configuration information for the connection function. See `connection_function_config` below.
  final pulumi.Input<ConnectionFunctionConnectionFunctionConfig>
      connectionFunctionConfig;

  /// Name for the connection function. Must be 1-64 characters and can contain letters, numbers, hyphens, and underscores. Changing this forces a new resource to be created.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;

  /// Whether to publish the function to the `LIVE` stage after creation or update. Defaults to `false`.
  final pulumi.Input<bool>? publish;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  ConnectionFunctionArgs({
    required this.connectionFunctionCode,
    required this.connectionFunctionConfig,
    this.name,
    this.publish,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['connectionFunctionCode'] = connectionFunctionCode;
    map['connectionFunctionConfig'] = pulumi.Input.mapInputValue<
            ConnectionFunctionConnectionFunctionConfig, Map<String, dynamic>>(
        connectionFunctionConfig, (value) => value.toMap());
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final publishValue = publish;
    if (publishValue != null) {
      map['publish'] = publishValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ConnectionFunctionArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionFunctionArgs(
      connectionFunctionCode:
          pulumi.Input.asInput<String>(map['connectionFunctionCode']),
      connectionFunctionConfig:
          pulumi.Input.asInput<ConnectionFunctionConnectionFunctionConfig>(
              map['connectionFunctionConfig']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      publish: pulumi.Input.asOptionalInput<bool>(map['publish']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
