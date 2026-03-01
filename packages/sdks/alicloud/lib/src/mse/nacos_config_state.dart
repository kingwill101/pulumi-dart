// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NacosConfig resources.
class NacosConfigState {
  /// The language type of the returned information. Valid values: `zh`, `en`.
  final pulumi.Input<String>? acceptLanguage;
  /// The name of the application.
  final pulumi.Input<String>? appName;
  /// The list of IP addresses where the beta release of the configuration is performed.
  final pulumi.Input<String>? betaIps;
  /// The content of the configuration.
  final pulumi.Input<String>? content;
  /// The ID of the data.
  final pulumi.Input<String>? dataId;
  /// The description of the configuration.
  final pulumi.Input<String>? desc;
  /// The encryption key.
  final pulumi.Input<String>? encryptedDataKey;
  /// The ID of the group.
  final pulumi.Input<String>? group;
  /// The ID of the instance.
  final pulumi.Input<String>? instanceId;
  /// The id of Namespace. If you want to create a config under the `public` namespace, this parameter can be set to an empty string  *`""`* or just not set this parameter.
  final pulumi.Input<String>? namespaceId;
  /// The tags of the configuration.
  final pulumi.Input<String>? tags;
  /// The format of the configuration. Supported formats include TEXT, JSON, and XML.
  final pulumi.Input<String>? type;

  /// Creates a new [NacosConfigState].
  /// [acceptLanguage] The language type of the returned information. Valid values: `zh`, `en`.
  /// [appName] The name of the application.
  /// [betaIps] The list of IP addresses where the beta release of the configuration is performed.
  /// [content] The content of the configuration.
  /// [dataId] The ID of the data.
  /// [desc] The description of the configuration.
  /// [encryptedDataKey] The encryption key.
  /// [group] The ID of the group.
  /// [instanceId] The ID of the instance.
  /// [namespaceId] The id of Namespace. If you want to create a config under the `public` namespace, this parameter can be set to an empty string  *`""`* or just not set this parameter.
  /// [tags] The tags of the configuration.
  /// [type] The format of the configuration. Supported formats include TEXT, JSON, and XML.
  NacosConfigState({
    pulumi.Output<String>? acceptLanguage,
    pulumi.Output<String>? appName,
    pulumi.Output<String>? betaIps,
    pulumi.Output<String>? content,
    pulumi.Output<String>? dataId,
    pulumi.Output<String>? desc,
    pulumi.Output<String>? encryptedDataKey,
    pulumi.Output<String>? group,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? namespaceId,
    pulumi.Output<String>? tags,
    pulumi.Output<String>? type,
  }) :
      acceptLanguage = pulumi.Input.asOptionalInput<String>(acceptLanguage),
      appName = pulumi.Input.asOptionalInput<String>(appName),
      betaIps = pulumi.Input.asOptionalInput<String>(betaIps),
      content = pulumi.Input.asOptionalInput<String>(content),
      dataId = pulumi.Input.asOptionalInput<String>(dataId),
      desc = pulumi.Input.asOptionalInput<String>(desc),
      encryptedDataKey = pulumi.Input.asOptionalInput<String>(encryptedDataKey),
      group = pulumi.Input.asOptionalInput<String>(group),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      namespaceId = pulumi.Input.asOptionalInput<String>(namespaceId),
      tags = pulumi.Input.asOptionalInput<String>(tags),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptLanguage': ?acceptLanguage,
      'appName': ?appName,
      'betaIps': ?betaIps,
      'content': ?content,
      'dataId': ?dataId,
      'desc': ?desc,
      'encryptedDataKey': ?encryptedDataKey,
      'group': ?group,
      'instanceId': ?instanceId,
      'namespaceId': ?namespaceId,
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory NacosConfigState.fromMap(Map<String, dynamic> map) {
    return NacosConfigState(
      acceptLanguage: map['acceptLanguage'] == null ? null : pulumi.Output.create<String>(map['acceptLanguage'] as String),
      appName: map['appName'] == null ? null : pulumi.Output.create<String>(map['appName'] as String),
      betaIps: map['betaIps'] == null ? null : pulumi.Output.create<String>(map['betaIps'] as String),
      content: map['content'] == null ? null : pulumi.Output.create<String>(map['content'] as String),
      dataId: map['dataId'] == null ? null : pulumi.Output.create<String>(map['dataId'] as String),
      desc: map['desc'] == null ? null : pulumi.Output.create<String>(map['desc'] as String),
      encryptedDataKey: map['encryptedDataKey'] == null ? null : pulumi.Output.create<String>(map['encryptedDataKey'] as String),
      group: map['group'] == null ? null : pulumi.Output.create<String>(map['group'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      namespaceId: map['namespaceId'] == null ? null : pulumi.Output.create<String>(map['namespaceId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<String>(map['tags'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

