// ignore_for_file: unused_element, unnecessary_cast


/// An entry for an Access Control list.
class SqlAclEntryResponse {
  /// The time when this access control entry expires in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example: `2012-11-15T16:19:00.094Z`.
  final String expireTime;
  /// A label to identify this entry.
  final String label;
  /// Input only. The time-to-leave of this access control entry.
  final String ttl;
  /// The allowlisted value for the access control list.
  final String value;

  /// Creates a new [SqlAclEntryResponse].
  /// [expireTime] The time when this access control entry expires in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example: `2012-11-15T16:19:00.094Z`.
  /// [label] A label to identify this entry.
  /// [ttl] Input only. The time-to-leave of this access control entry.
  /// [value] The allowlisted value for the access control list.
  SqlAclEntryResponse({
    required this.expireTime,
    required this.label,
    required this.ttl,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expireTime': expireTime,
      'label': label,
      'ttl': ttl,
      'value': value,
    };
  }

  factory SqlAclEntryResponse.fromMap(Map<String, dynamic> map) {
    return SqlAclEntryResponse(
      expireTime: map['expireTime'] as String,
      label: map['label'] as String,
      ttl: map['ttl'] as String,
      value: map['value'] as String,
    );
  }
}

