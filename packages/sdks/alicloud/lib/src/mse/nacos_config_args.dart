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
    this.acceptLanguage,
    this.appName,
    this.betaIps,
    required this.content,
    required this.dataId,
    this.desc,
    required this.group,
    required this.instanceId,
    this.namespaceId,
    this.tags,
    this.type,
  });

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
      acceptLanguage: (() {
        final guardedValue = map['acceptLanguage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      appName: (() {
        final guardedValue = map['appName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      betaIps: (() {
        final guardedValue = map['betaIps'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      content: pulumi.Input.fromValue(map['content'] as String),
      dataId: pulumi.Input.fromValue(map['dataId'] as String),
      desc: (() {
        final guardedValue = map['desc'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      group: pulumi.Input.fromValue(map['group'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      namespaceId: (() {
        final guardedValue = map['namespaceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
