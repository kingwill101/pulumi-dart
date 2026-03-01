// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mse_nacos_config_nacos_config_args_doc}
/// The set of arguments for NacosConfig.
/// {@endtemplate}
/// {@macro pulumi_mse_nacos_config_nacos_config_args_doc}
class NacosConfigArgs {
  /// The language type of the returned information. Valid values: `zh`, `en`.
  final pulumi.Input<String>? acceptLanguage;
  /// The name of the application.
  final pulumi.Input<String>? appName;
  /// The list of IP addresses where the beta release of the configuration is performed.
  final pulumi.Input<String>? betaIps;
  /// The content of the configuration.
  final pulumi.Input<String> content;
  /// The ID of the data.
  final pulumi.Input<String> dataId;
  /// The description of the configuration.
  final pulumi.Input<String>? desc;
  /// The ID of the group.
  final pulumi.Input<String> group;
  /// The ID of the instance.
  final pulumi.Input<String> instanceId;
  /// The id of Namespace. If you want to create a config under the `public` namespace, this parameter can be set to an empty string  *`""`* or just not set this parameter.
  final pulumi.Input<String>? namespaceId;
  /// The tags of the configuration.
  final pulumi.Input<String>? tags;
  /// The format of the configuration. Supported formats include TEXT, JSON, and XML.
  final pulumi.Input<String>? type;

  /// Creates a new [NacosConfigArgs].
  /// [acceptLanguage] The language type of the returned information. Valid values: `zh`, `en`.
  /// [appName] The name of the application.
  /// [betaIps] The list of IP addresses where the beta release of the configuration is performed.
  /// [content] The content of the configuration.
  /// [dataId] The ID of the data.
  /// [desc] The description of the configuration.
  /// [group] The ID of the group.
  /// [instanceId] The ID of the instance.
  /// [namespaceId] The id of Namespace. If you want to create a config under the `public` namespace, this parameter can be set to an empty string  *`""`* or just not set this parameter.
  /// [tags] The tags of the configuration.
  /// [type] The format of the configuration. Supported formats include TEXT, JSON, and XML.
  NacosConfigArgs({
    String? acceptLanguage,
    String? appName,
    String? betaIps,
    required String content,
    required String dataId,
    String? desc,
    required String group,
    required String instanceId,
    String? namespaceId,
    String? tags,
    String? type,
  }) :
      acceptLanguage = pulumi.Input.asOptionalInput<String>(acceptLanguage),
      appName = pulumi.Input.asOptionalInput<String>(appName),
      betaIps = pulumi.Input.asOptionalInput<String>(betaIps),
      content = pulumi.Input.asInput<String>(content),
      dataId = pulumi.Input.asInput<String>(dataId),
      desc = pulumi.Input.asOptionalInput<String>(desc),
      group = pulumi.Input.asInput<String>(group),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      namespaceId = pulumi.Input.asOptionalInput<String>(namespaceId),
      tags = pulumi.Input.asOptionalInput<String>(tags),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptLanguage': ?acceptLanguage,
      'appName': ?appName,
      'betaIps': ?betaIps,
      'content': content,
      'dataId': dataId,
      'desc': ?desc,
      'group': group,
      'instanceId': instanceId,
      'namespaceId': ?namespaceId,
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory NacosConfigArgs.fromMap(Map<String, dynamic> map) {
    return NacosConfigArgs(
      acceptLanguage: map['acceptLanguage'] == null ? null : map['acceptLanguage'] as String,
      appName: map['appName'] == null ? null : map['appName'] as String,
      betaIps: map['betaIps'] == null ? null : map['betaIps'] as String,
      content: map['content'] as String,
      dataId: map['dataId'] as String,
      desc: map['desc'] == null ? null : map['desc'] as String,
      group: map['group'] as String,
      instanceId: map['instanceId'] as String,
      namespaceId: map['namespaceId'] == null ? null : map['namespaceId'] as String,
      tags: map['tags'] == null ? null : map['tags'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

