// ignore_for_file: unused_element, unnecessary_cast

/// An entry for an Access Control list.
class SqlAclEntry2 {
  /// The time when this access control entry expires in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example: `2012-11-15T16:19:00.094Z`.
  final String? expireTime;

  /// A label to identify this entry.
  final String? label;

  /// Input only. The time-to-leave of this access control entry.
  final String? ttl;

  /// The allowlisted value for the access control list.
  final String? value;

  SqlAclEntry2({
    this.expireTime,
    this.label,
    this.ttl,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final expireTimeValue = expireTime;
    if (expireTimeValue != null) {
      map['expireTime'] = expireTimeValue;
    }
    final labelValue = label;
    if (labelValue != null) {
      map['label'] = labelValue;
    }
    final ttlValue = ttl;
    if (ttlValue != null) {
      map['ttl'] = ttlValue;
    }
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory SqlAclEntry2.fromMap(Map<String, dynamic> map) {
    return SqlAclEntry2(
      expireTime:
          map['expireTime'] == null ? null : map['expireTime'] as String,
      label: map['label'] == null ? null : map['label'] as String,
      ttl: map['ttl'] == null ? null : map['ttl'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
