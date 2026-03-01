// ignore_for_file: unused_element, unnecessary_cast


class GetNacosConfigsConfig {
  /// The name of the application.
  final String appName;
  /// The list of IP addresses where the beta release of the configuration is performed.
  final String betaIps;
  /// The content of the configuration.
  final String content;
  /// The ID of the data.
  final String dataId;
  /// The description of the configuration.
  final String desc;
  /// The encryption key.
  final String encryptedDataKey;
  /// The ID of the group.
  final String group;
  /// The ID of the Nacos Config. It is formatted to `<instance_id>:<namespace_id>:<data_id>:<group>`.
  final String id;
  /// The message digest of the configuration.
  final String md5;
  /// The tags of the configuration.
  final String tags;
  /// The format of the configuration. Supported formats include TEXT, JSON, and XML.
  final String type;

  /// Creates a new [GetNacosConfigsConfig].
  /// [appName] The name of the application.
  /// [betaIps] The list of IP addresses where the beta release of the configuration is performed.
  /// [content] The content of the configuration.
  /// [dataId] The ID of the data.
  /// [desc] The description of the configuration.
  /// [encryptedDataKey] The encryption key.
  /// [group] The ID of the group.
  /// [id] The ID of the Nacos Config. It is formatted to `<instance_id>:<namespace_id>:<data_id>:<group>`.
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
      appName: map['appName'] as String,
      betaIps: map['betaIps'] as String,
      content: map['content'] as String,
      dataId: map['dataId'] as String,
      desc: map['desc'] as String,
      encryptedDataKey: map['encryptedDataKey'] as String,
      group: map['group'] as String,
      id: map['id'] as String,
      md5: map['md5'] as String,
      tags: map['tags'] as String,
      type: map['type'] as String,
    );
  }
}

