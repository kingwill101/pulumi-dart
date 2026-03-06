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
  /// A list of MSE Engine Configs ids. It is formatted to `&lt;instance_id&gt;:&lt;namespace_id&gt;:&lt;data_id&gt;:&lt;group&gt;`.
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
  /// [ids] A list of MSE Engine Configs ids. It is formatted to `&lt;instance_id&gt;:&lt;namespace_id&gt;:&lt;data_id&gt;:&lt;group&gt;`.
  /// [instanceId] The ID of the instance.
  /// [namespaceId] The id of Namespace.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [requestPars] The extended request parameters. The JSON format is supported.
  /// [tags] The tags of the configuration.
  const GetNacosConfigsArgs({
    this.acceptLanguage,
    this.appName,
    this.dataId,
    this.enableDetails,
    this.group,
    this.ids,
    required this.instanceId,
    this.namespaceId,
    this.outputFile,
    this.requestPars,
    this.tags,
  });

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
      acceptLanguage: (() { final guardedValue = map['acceptLanguage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      appName: (() { final guardedValue = map['appName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataId: (() { final guardedValue = map['dataId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      group: (() { final guardedValue = map['group']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      namespaceId: (() { final guardedValue = map['namespaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestPars: (() { final guardedValue = map['requestPars']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

