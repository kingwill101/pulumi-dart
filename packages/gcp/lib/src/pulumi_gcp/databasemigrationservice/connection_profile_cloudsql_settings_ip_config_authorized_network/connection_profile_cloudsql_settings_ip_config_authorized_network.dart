// ignore_for_file: unused_element, unnecessary_cast

class ConnectionProfileCloudsqlSettingsIpConfigAuthorizedNetwork {
  /// The time when this access control entry expires in RFC 3339 format.
  final String? expireTime;

  /// A label to identify this entry.
  final String? label;

  /// Input only. The time-to-leave of this access control entry.
  final String? ttl;

  /// The allowlisted value for the access control list.
  final String value;

  ConnectionProfileCloudsqlSettingsIpConfigAuthorizedNetwork({
    this.expireTime,
    this.label,
    this.ttl,
    required this.value,
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
    map['value'] = value;
    return map;
  }

  factory ConnectionProfileCloudsqlSettingsIpConfigAuthorizedNetwork.fromMap(
      Map<String, dynamic> map) {
    return ConnectionProfileCloudsqlSettingsIpConfigAuthorizedNetwork(
      expireTime:
          map['expireTime'] == null ? null : map['expireTime'] as String,
      label: map['label'] == null ? null : map['label'] as String,
      ttl: map['ttl'] == null ? null : map['ttl'] as String,
      value: map['value'] as String,
    );
  }
}
