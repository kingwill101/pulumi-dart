// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_nacos_configs_config.dart';

/// Result data returned by getNacosConfigs.
class GetNacosConfigsResult {
  final String? acceptLanguage;
  /// The name of the application.
  final String? appName;
  /// A list of Mse Nacos Configs. Each element contains the following attributes:
  final List<GetNacosConfigsConfig> configs;
  /// The ID of the data.
  final String? dataId;
  final bool? enableDetails;
  /// The ID of the group.
  final String? group;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String instanceId;
  final String? namespaceId;
  final String? outputFile;
  final String? requestPars;
  /// The tags of the configuration.
  final String? tags;

  /// Creates a new [GetNacosConfigsResult].
  /// [acceptLanguage] Optional.
  /// [appName] The name of the application.
  /// [configs] A list of Mse Nacos Configs. Each element contains the following attributes:
  /// [dataId] The ID of the data.
  /// [enableDetails] Optional.
  /// [group] The ID of the group.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [instanceId] Required.
  /// [namespaceId] Optional.
  /// [outputFile] Optional.
  /// [requestPars] Optional.
  /// [tags] The tags of the configuration.
  const GetNacosConfigsResult({
    this.acceptLanguage,
    this.appName,
    required this.configs,
    this.dataId,
    this.enableDetails,
    this.group,
    required this.id,
    required this.ids,
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
      'configs': pulumi.Input.encodeList<GetNacosConfigsConfig, Map<String, dynamic>>(configs, (value) => value.toMap()),
      'dataId': ?dataId,
      'enableDetails': ?enableDetails,
      'group': ?group,
      'id': id,
      'ids': ids,
      'instanceId': instanceId,
      'namespaceId': ?namespaceId,
      'outputFile': ?outputFile,
      'requestPars': ?requestPars,
      'tags': ?tags,
    };
  }

  factory GetNacosConfigsResult.fromMap(Map<String, dynamic> map) {
    return GetNacosConfigsResult(
      acceptLanguage: (() { final guardedValue = map['acceptLanguage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      appName: (() { final guardedValue = map['appName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      configs: pulumi.Input.decodeList<GetNacosConfigsConfig>(map['configs']!, (value) => GetNacosConfigsConfig.fromMap((value as Map).cast<String, dynamic>())),
      dataId: (() { final guardedValue = map['dataId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      group: (() { final guardedValue = map['group']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] as String,
      namespaceId: (() { final guardedValue = map['namespaceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      requestPars: (() { final guardedValue = map['requestPars']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

