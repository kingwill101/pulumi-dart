// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appconfiguration_key_value_args_doc}
/// The set of arguments for KeyValue.
/// {@endtemplate}
/// {@macro pulumi_appconfiguration_key_value_args_doc}
class KeyValueArgs {
  /// The name of the configuration store.
  final pulumi.Input<String> configStoreName;
  /// The content type of the key-value's value.
  /// Providing a proper content-type can enable transformations of values when they are retrieved by applications.
  final pulumi.Input<String>? contentType;
  /// Identifier of key and label combination. Key and label are joined by $ character. Label is optional.
  final pulumi.Input<String>? keyValueName;
  /// The name of the resource group to which the container registry belongs.
  final pulumi.Input<String> resourceGroupName;
  /// A dictionary of tags that can help identify what a key-value may be applicable for.
  final pulumi.Input<Map<String, String>>? tags;
  /// The value of the key-value.
  final pulumi.Input<String>? value;

  /// Creates a new [KeyValueArgs].
  /// [configStoreName] The name of the configuration store.
  /// [contentType] The content type of the key-value's value.
  /// [keyValueName] Identifier of key and label combination. Key and label are joined by $ character. Label is optional.
  /// [resourceGroupName] The name of the resource group to which the container registry belongs.
  /// [tags] A dictionary of tags that can help identify what a key-value may be applicable for.
  /// [value] The value of the key-value.
  KeyValueArgs({
    required this.configStoreName,
    this.contentType,
    this.keyValueName,
    required this.resourceGroupName,
    this.tags,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configStoreName': configStoreName,
      'contentType': ?contentType,
      'keyValueName': ?keyValueName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'value': ?value,
    };
  }

  factory KeyValueArgs.fromMap(Map<String, dynamic> map) {
    return KeyValueArgs(
      configStoreName: pulumi.Input.fromValue(map['configStoreName'] as String),
      contentType: (() { final guardedValue = map['contentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyValueName: (() { final guardedValue = map['keyValueName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

