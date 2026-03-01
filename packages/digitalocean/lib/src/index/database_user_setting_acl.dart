// ignore_for_file: unused_element, unnecessary_cast


class DatabaseUserSettingAcl {
  /// An identifier for the ACL, this will be automatically assigned when you create an ACL entry
  final String? id;
  /// The permission level applied to the ACL. This includes "admin", "consume", "produce", and "produceconsume". "admin" allows for producing and consuming as well as add/delete/update permission for topics. "consume" allows only for reading topic messages. "produce" allows only for writing topic messages. "produceconsume" allows for both reading and writing topic messages.
  final String permission;
  /// A regex for matching the topic(s) that this ACL should apply to. The regex can assume one of 3 patterns: "*", "<prefix>*", or "<literal>". "*" is a special value indicating a wildcard that matches on all topics. "<prefix>*" defines a regex that matches all topics with the prefix. "<literal>" performs an exact match on a topic name and only applies to that topic.
  final String topic;

  /// Creates a new [DatabaseUserSettingAcl].
  /// [id] An identifier for the ACL, this will be automatically assigned when you create an ACL entry
  /// [permission] The permission level applied to the ACL. This includes "admin", "consume", "produce", and "produceconsume". "admin" allows for producing and consuming as well as add/delete/update permission for topics. "consume" allows only for reading topic messages. "produce" allows only for writing topic messages. "produceconsume" allows for both reading and writing topic messages.
  /// [topic] A regex for matching the topic(s) that this ACL should apply to. The regex can assume one of 3 patterns: "*", "<prefix>*", or "<literal>". "*" is a special value indicating a wildcard that matches on all topics. "<prefix>*" defines a regex that matches all topics with the prefix. "<literal>" performs an exact match on a topic name and only applies to that topic.
  DatabaseUserSettingAcl({
    this.id,
    required this.permission,
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'permission': permission,
      'topic': topic,
    };
  }

  factory DatabaseUserSettingAcl.fromMap(Map<String, dynamic> map) {
    return DatabaseUserSettingAcl(
      id: map['id'] == null ? null : map['id'] as String,
      permission: map['permission'] as String,
      topic: map['topic'] as String,
    );
  }
}

