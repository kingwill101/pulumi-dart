// ignore_for_file: unused_element, unnecessary_cast

/// An entry for an Access Control list.
class AclEntry {
  /// The time when this access control entry expires in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  final String? expirationTime;

  /// This is always `sql#aclEntry`.
  final String? kind;

  /// Optional. A label to identify this entry.
  final String? name;

  /// The allowlisted value for the access control list.
  final String? value;

  AclEntry({
    this.expirationTime,
    this.kind,
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final expirationTimeValue = expirationTime;
    if (expirationTimeValue != null) {
      map['expirationTime'] = expirationTimeValue;
    }
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory AclEntry.fromMap(Map<String, dynamic> map) {
    return AclEntry(
      expirationTime: map['expirationTime'] == null
          ? null
          : map['expirationTime'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
