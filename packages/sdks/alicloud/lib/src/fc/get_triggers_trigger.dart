// ignore_for_file: unused_element, unnecessary_cast


class GetTriggersTrigger {
  /// JSON-encoded trigger configuration. See [Configure triggers and events](https://www.alibabacloud.com/help/doc-detail/70140.htm) for more details.
  final String config;
  /// FC trigger creation time.
  final String creationTime;
  /// FC trigger ID.
  final String id;
  /// RAM role arn attached to the Function Compute trigger. Role used by the event source to call the function. The value format is "acs:ram::$account-id:role/$role-name". See [Create a trigger](https://www.alibabacloud.com/help/doc-detail/53102.htm) for more details.
  final String invocationRole;
  /// FC trigger last modification time.
  final String lastModificationTime;
  /// FC trigger name.
  final String name;
  /// Event source resource address. See [Create a trigger](https://www.alibabacloud.com/help/doc-detail/53102.htm) for more details.
  final String sourceArn;
  /// Type of the trigger. Valid values: `oss`, `log`, `timer`, `http`, `mns_topic`, `cdn_events` and `eventbridge`.
  final String type;

  /// Creates a new [GetTriggersTrigger].
  /// [config] JSON-encoded trigger configuration. See [Configure triggers and events](https://www.alibabacloud.com/help/doc-detail/70140.htm) for more details.
  /// [creationTime] FC trigger creation time.
  /// [id] FC trigger ID.
  /// [invocationRole] RAM role arn attached to the Function Compute trigger. Role used by the event source to call the function. The value format is "acs:ram::$account-id:role/$role-name". See [Create a trigger](https://www.alibabacloud.com/help/doc-detail/53102.htm) for more details.
  /// [lastModificationTime] FC trigger last modification time.
  /// [name] FC trigger name.
  /// [sourceArn] Event source resource address. See [Create a trigger](https://www.alibabacloud.com/help/doc-detail/53102.htm) for more details.
  /// [type] Type of the trigger. Valid values: `oss`, `log`, `timer`, `http`, `mns_topic`, `cdn_events` and `eventbridge`.
  GetTriggersTrigger({
    required this.config,
    required this.creationTime,
    required this.id,
    required this.invocationRole,
    required this.lastModificationTime,
    required this.name,
    required this.sourceArn,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': config,
      'creationTime': creationTime,
      'id': id,
      'invocationRole': invocationRole,
      'lastModificationTime': lastModificationTime,
      'name': name,
      'sourceArn': sourceArn,
      'type': type,
    };
  }

  factory GetTriggersTrigger.fromMap(Map<String, dynamic> map) {
    return GetTriggersTrigger(
      config: map['config'] as String,
      creationTime: map['creationTime'] as String,
      id: map['id'] as String,
      invocationRole: map['invocationRole'] as String,
      lastModificationTime: map['lastModificationTime'] as String,
      name: map['name'] as String,
      sourceArn: map['sourceArn'] as String,
      type: map['type'] as String,
    );
  }
}

