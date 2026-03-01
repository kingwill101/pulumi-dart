// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mse_get_nacos_configs_get_nacos_configs_args_doc}
/// Arguments for getNacosConfigs.
/// {@endtemplate}
/// {@macro pulumi_mse_get_nacos_configs_get_nacos_configs_args_doc}
class GetNacosConfigsArgs {
  /// The language type of the returned information. Valid values: `zh`, `en`.
  final pulumi.Input<String>? acceptLanguage;
  /// The name of the application.
  final pulumi.Input<String>? appName;
  /// The ID of the data.
  final pulumi.Input<String>? dataId;
  /// Default to `false`. Set it to `true` can output more details about resource attributes.
  final pulumi.Input<bool>? enableDetails;
  /// The ID of the group.
  final pulumi.Input<String>? group;
  /// A list of MSE Engine Configs ids. It is formatted to `<instance_id>:<namespace_id>:<data_id>:<group>`.
  final pulumi.Input<List<String>>? ids;
  /// The ID of the instance.
  final pulumi.Input<String> instanceId;
  /// The id of Namespace.
  final pulumi.Input<String>? namespaceId;
  /// File name where to save data source results (after running `pulumi preview`).
  /// *
  final pulumi.Input<String>? outputFile;
  /// The extended request parameters. The JSON format is supported.
  final pulumi.Input<String>? requestPars;
  /// The tags of the configuration.
  final pulumi.Input<String>? tags;

  /// Creates a new [GetNacosConfigsArgs].
  /// [acceptLanguage] The language type of the returned information. Valid values: `zh`, `en`.
  /// [appName] The name of the application.
  /// [dataId] The ID of the data.
  /// [enableDetails] Default to `false`. Set it to `true` can output more details about resource attributes.
  /// [group] The ID of the group.
  /// [ids] A list of MSE Engine Configs ids. It is formatted to `<instance_id>:<namespace_id>:<data_id>:<group>`.
  /// [instanceId] The ID of the instance.
  /// [namespaceId] The id of Namespace.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [requestPars] The extended request parameters. The JSON format is supported.
  /// [tags] The tags of the configuration.
  GetNacosConfigsArgs({
    String? acceptLanguage,
    String? appName,
    String? dataId,
    bool? enableDetails,
    String? group,
    List<String>? ids,
    required String instanceId,
    String? namespaceId,
    String? outputFile,
    String? requestPars,
    String? tags,
  }) :
      acceptLanguage = pulumi.Input.asOptionalInput<String>(acceptLanguage),
      appName = pulumi.Input.asOptionalInput<String>(appName),
      dataId = pulumi.Input.asOptionalInput<String>(dataId),
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      group = pulumi.Input.asOptionalInput<String>(group),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      namespaceId = pulumi.Input.asOptionalInput<String>(namespaceId),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      requestPars = pulumi.Input.asOptionalInput<String>(requestPars),
      tags = pulumi.Input.asOptionalInput<String>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptLanguage': ?acceptLanguage,
      'appName': ?appName,
      'dataId': ?dataId,
      'enableDetails': ?enableDetails,
      'group': ?group,
      'ids': ?ids,
      'instanceId': instanceId,
      'namespaceId': ?namespaceId,
      'outputFile': ?outputFile,
      'requestPars': ?requestPars,
      'tags': ?tags,
    };
  }

  factory GetNacosConfigsArgs.fromMap(Map<String, dynamic> map) {
    return GetNacosConfigsArgs(
      acceptLanguage: map['acceptLanguage'] == null ? null : map['acceptLanguage'] as String,
      appName: map['appName'] == null ? null : map['appName'] as String,
      dataId: map['dataId'] == null ? null : map['dataId'] as String,
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      group: map['group'] == null ? null : map['group'] as String,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] as String,
      namespaceId: map['namespaceId'] == null ? null : map['namespaceId'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      requestPars: map['requestPars'] == null ? null : map['requestPars'] as String,
      tags: map['tags'] == null ? null : map['tags'] as String,
    );
  }
}

