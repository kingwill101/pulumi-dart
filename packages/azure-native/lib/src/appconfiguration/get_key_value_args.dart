// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appconfiguration_get_key_value_args_doc}
/// Arguments for getKeyValue.
/// {@endtemplate}
/// {@macro pulumi_appconfiguration_get_key_value_args_doc}
class GetKeyValueArgs {
  /// The name of the configuration store.
  final pulumi.Input<String> configStoreName;
  /// Identifier of key and label combination. Key and label are joined by $ character. Label is optional.
  final pulumi.Input<String> keyValueName;
  /// The name of the resource group to which the container registry belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetKeyValueArgs].
  /// [configStoreName] The name of the configuration store.
  /// [keyValueName] Identifier of key and label combination. Key and label are joined by $ character. Label is optional.
  /// [resourceGroupName] The name of the resource group to which the container registry belongs.
  GetKeyValueArgs({
    required String configStoreName,
    required String keyValueName,
    required String resourceGroupName,
  }) :
      configStoreName = pulumi.Input.asInput<String>(configStoreName),
      keyValueName = pulumi.Input.asInput<String>(keyValueName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configStoreName': configStoreName,
      'keyValueName': keyValueName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetKeyValueArgs.fromMap(Map<String, dynamic> map) {
    return GetKeyValueArgs(
      configStoreName: map['configStoreName'] as String,
      keyValueName: map['keyValueName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

