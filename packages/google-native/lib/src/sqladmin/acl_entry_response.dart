// ignore_for_file: unused_element, unnecessary_cast


/// An entry for an Access Control list.
class AclEntryResponse {
  /// The time when this access control entry expires in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  final String expirationTime;
  /// This is always `sql#aclEntry`.
  final String kind;
  /// Optional. A label to identify this entry.
  final String name;
  /// The allowlisted value for the access control list.
  final String value;

  /// Creates a new [AclEntryResponse].
  /// [expirationTime] The time when this access control entry expires in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  /// [kind] This is always `sql#aclEntry`.
  /// [name] Optional. A label to identify this entry.
  /// [value] The allowlisted value for the access control list.
  AclEntryResponse({
    required this.expirationTime,
    required this.kind,
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationTime': expirationTime,
      'kind': kind,
      'name': name,
      'value': value,
    };
  }

  factory AclEntryResponse.fromMap(Map<String, dynamic> map) {
    return AclEntryResponse(
      expirationTime: map['expirationTime'] as String,
      kind: map['kind'] as String,
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

