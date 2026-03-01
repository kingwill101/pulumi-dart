// ignore_for_file: unused_element, unnecessary_cast

/// An entry for an Access Control list.
class AclEntrySqladminV1beta4 {
  /// The time when this access control entry expires in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  final String? expirationTime;

  /// This is always `sql#aclEntry`.
  final String? kind;

  /// Optional. A label to identify this entry.
  final String? name;

  /// The allowlisted value for the access control list.
  final String? value;

  /// Creates a new [AclEntrySqladminV1beta4].
  /// [expirationTime] The time when this access control entry expires in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  /// [kind] This is always `sql#aclEntry`.
  /// [name] Optional. A label to identify this entry.
  /// [value] The allowlisted value for the access control list.
  AclEntrySqladminV1beta4({
    this.expirationTime,
    this.kind,
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationTime': ?expirationTime,
      'kind': ?kind,
      'name': ?name,
      'value': ?value,
    };
  }

  factory AclEntrySqladminV1beta4.fromMap(Map<String, dynamic> map) {
    return AclEntrySqladminV1beta4(
      expirationTime: map['expirationTime'] == null
          ? null
          : map['expirationTime'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
