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
    required pulumi.Output<String> configStoreName,
    pulumi.Output<String>? contentType,
    pulumi.Output<String>? keyValueName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? value,
  }) :
      configStoreName = pulumi.Input.asInput<String>(configStoreName),
      contentType = pulumi.Input.asOptionalInput<String>(contentType),
      keyValueName = pulumi.Input.asOptionalInput<String>(keyValueName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      value = pulumi.Input.asOptionalInput<String>(value);

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
      configStoreName: pulumi.Output.create<String>(map['configStoreName'] as String),
      contentType: map['contentType'] == null ? null : pulumi.Output.create<String>(map['contentType'] as String),
      keyValueName: map['keyValueName'] == null ? null : pulumi.Output.create<String>(map['keyValueName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      value: map['value'] == null ? null : pulumi.Output.create<String>(map['value'] as String),
    );
  }
}

