// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_web_app_slot_configuration_names_args_doc}
/// The set of arguments for WebAppSlotConfigurationNames.
/// {@endtemplate}
/// {@macro pulumi_web_web_app_slot_configuration_names_args_doc}
class WebAppSlotConfigurationNamesArgs {
  /// List of application settings names.
  final pulumi.Input<List<String>>? appSettingNames;
  /// List of external Azure storage account identifiers.
  final pulumi.Input<List<String>>? azureStorageConfigNames;
  /// List of connection string names.
  final pulumi.Input<List<String>>? connectionStringNames;
  /// Kind of resource.
  final pulumi.Input<String>? kind;
  /// Name of the app.
  final pulumi.Input<String> name;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [WebAppSlotConfigurationNamesArgs].
  /// [appSettingNames] List of application settings names.
  /// [azureStorageConfigNames] List of external Azure storage account identifiers.
  /// [connectionStringNames] List of connection string names.
  /// [kind] Kind of resource.
  /// [name] Name of the app.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  WebAppSlotConfigurationNamesArgs({
    List<String>? appSettingNames,
    List<String>? azureStorageConfigNames,
    List<String>? connectionStringNames,
    String? kind,
    required String name,
    required String resourceGroupName,
  }) :
      appSettingNames = pulumi.Input.asOptionalInput<List<String>>(appSettingNames),
      azureStorageConfigNames = pulumi.Input.asOptionalInput<List<String>>(azureStorageConfigNames),
      connectionStringNames = pulumi.Input.asOptionalInput<List<String>>(connectionStringNames),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appSettingNames': ?appSettingNames,
      'azureStorageConfigNames': ?azureStorageConfigNames,
      'connectionStringNames': ?connectionStringNames,
      'kind': ?kind,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory WebAppSlotConfigurationNamesArgs.fromMap(Map<String, dynamic> map) {
    return WebAppSlotConfigurationNamesArgs(
      appSettingNames: map['appSettingNames'] == null ? null : (map['appSettingNames'] as List).cast<String>(),
      azureStorageConfigNames: map['azureStorageConfigNames'] == null ? null : (map['azureStorageConfigNames'] as List).cast<String>(),
      connectionStringNames: map['connectionStringNames'] == null ? null : (map['connectionStringNames'] as List).cast<String>(),
      kind: map['kind'] == null ? null : map['kind'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

