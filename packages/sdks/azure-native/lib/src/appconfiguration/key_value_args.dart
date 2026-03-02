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
      configStoreName: (map['configStoreName'] as String).input(),
      contentType: map['contentType'] == null ? null : (map['contentType'] as String).input(),
      keyValueName: map['keyValueName'] == null ? null : (map['keyValueName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

