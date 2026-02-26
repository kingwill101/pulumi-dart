// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getSession.
class GetSessionResult2 {
  /// The approximate timestamp when the session is last used. It is typically earlier than the actual last use time.
  final String approximateLastUseTime;

  /// The timestamp when the session is created.
  final String createTime;

  /// The database role which created this session.
  final String creatorRole;

  /// The labels for the session. * Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?`. * Label values must be between 0 and 63 characters long and must conform to the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`. * No more than 64 labels can be associated with a given session. See https://goo.gl/xmQnxf for more information on and examples of labels.
  final Map<String, String> labels;

  /// The name of the session. This is always system-assigned.
  final String name;

  GetSessionResult2({
    required this.approximateLastUseTime,
    required this.createTime,
    required this.creatorRole,
    required this.labels,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['approximateLastUseTime'] = approximateLastUseTime;
    map['createTime'] = createTime;
    map['creatorRole'] = creatorRole;
    map['labels'] = labels;
    map['name'] = name;
    return map;
  }

  factory GetSessionResult2.fromMap(Map<String, dynamic> map) {
    return GetSessionResult2(
      approximateLastUseTime: map['approximateLastUseTime'] as String,
      createTime: map['createTime'] as String,
      creatorRole: map['creatorRole'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
    );
  }
}
