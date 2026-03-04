// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNacosConfigsConfig {
  /// The name of the application.
  final pulumi.Input<String> appName;

  /// The list of IP addresses where the beta release of the configuration is performed.
  final pulumi.Input<String> betaIps;

  /// The content of the configuration.
  final pulumi.Input<String> content;

  /// The ID of the data.
  final pulumi.Input<String> dataId;

  /// The description of the configuration.
  final pulumi.Input<String> desc;

  /// The encryption key.
  final pulumi.Input<String> encryptedDataKey;

  /// The ID of the group.
  final pulumi.Input<String> group;

  /// The ID of the Nacos Config. It is formatted to `&lt;instance_id&gt;:&lt;namespace_id&gt;:&lt;data_id&gt;:&lt;group&gt;`.
  final pulumi.Input<String> id;

  /// The message digest of the configuration.
  final pulumi.Input<String> md5;

  /// The tags of the configuration.
  final pulumi.Input<String> tags;

  /// The format of the configuration. Supported formats include TEXT, JSON, and XML.
  final pulumi.Input<String> type;

  /// Creates a new [GetNacosConfigsConfig].
  /// [appName] The name of the application.
  /// [betaIps] The list of IP addresses where the beta release of the configuration is performed.
  /// [content] The content of the configuration.
  /// [dataId] The ID of the data.
  /// [desc] The description of the configuration.
  /// [encryptedDataKey] The encryption key.
  /// [group] The ID of the group.
  /// [id] The ID of the Nacos Config. It is formatted to `&lt;instance_id&gt;:&lt;namespace_id&gt;:&lt;data_id&gt;:&lt;group&gt;`.
  /// [md5] The message digest of the configuration.
  /// [tags] The tags of the configuration.
  /// [type] The format of the configuration. Supported formats include TEXT, JSON, and XML.
  GetNacosConfigsConfig({
    required this.appName,
    required this.betaIps,
    required this.content,
    required this.dataId,
    required this.desc,
    required this.encryptedDataKey,
    required this.group,
    required this.id,
    required this.md5,
    required this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appName': appName,
      'betaIps': betaIps,
      'content': content,
      'dataId': dataId,
      'desc': desc,
      'encryptedDataKey': encryptedDataKey,
      'group': group,
      'id': id,
      'md5': md5,
      'tags': tags,
      'type': type,
    };
  }

  factory GetNacosConfigsConfig.fromMap(Map<String, dynamic> map) {
    return GetNacosConfigsConfig(
      appName: pulumi.Input.fromValue(map['appName'] as String),
      betaIps: pulumi.Input.fromValue(map['betaIps'] as String),
      content: pulumi.Input.fromValue(map['content'] as String),
      dataId: pulumi.Input.fromValue(map['dataId'] as String),
      desc: pulumi.Input.fromValue(map['desc'] as String),
      encryptedDataKey: pulumi.Input.fromValue(
        map['encryptedDataKey'] as String,
      ),
      group: pulumi.Input.fromValue(map['group'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      md5: pulumi.Input.fromValue(map['md5'] as String),
      tags: pulumi.Input.fromValue(map['tags'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
