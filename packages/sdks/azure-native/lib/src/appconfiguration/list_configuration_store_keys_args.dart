// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appconfiguration_list_configuration_store_keys_args_doc}
/// Arguments for listConfigurationStoreKeys.
/// {@endtemplate}
/// {@macro pulumi_appconfiguration_list_configuration_store_keys_args_doc}
class ListConfigurationStoreKeysArgs {
  /// The name of the configuration store.
  final pulumi.Input<String> configStoreName;
  /// The name of the resource group to which the container registry belongs.
  final pulumi.Input<String> resourceGroupName;
  /// A skip token is used to continue retrieving items after an operation returns a partial result. If a previous response contains a nextLink element, the value of the nextLink element will include a skipToken parameter that specifies a starting point to use for subsequent calls.
  final pulumi.Input<String>? skipToken;

  /// Creates a new [ListConfigurationStoreKeysArgs].
  /// [configStoreName] The name of the configuration store.
  /// [resourceGroupName] The name of the resource group to which the container registry belongs.
  /// [skipToken] A skip token is used to continue retrieving items after an operation returns a partial result. If a previous response contains a nextLink element, the value of the nextLink element will include a skipToken parameter that specifies a starting point to use for subsequent calls.
  ListConfigurationStoreKeysArgs({
    required pulumi.Output<String> configStoreName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? skipToken,
  }) :
      configStoreName = pulumi.Input.asInput<String>(configStoreName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      skipToken = pulumi.Input.asOptionalInput<String>(skipToken);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configStoreName': configStoreName,
      'resourceGroupName': resourceGroupName,
      'skipToken': ?skipToken,
    };
  }

  factory ListConfigurationStoreKeysArgs.fromMap(Map<String, dynamic> map) {
    return ListConfigurationStoreKeysArgs(
      configStoreName: pulumi.Output.create<String>(map['configStoreName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      skipToken: map['skipToken'] == null ? null : pulumi.Output.create<String>(map['skipToken'] as String),
    );
  }
}

