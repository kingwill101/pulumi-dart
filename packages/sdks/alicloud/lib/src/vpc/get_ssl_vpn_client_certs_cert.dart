// ignore_for_file: unused_element, unnecessary_cast


class GetSslVpnClientCertsCert {
  /// The time of creation.
  final String createTime;
  /// The expiration time of the client certificate.
  final int endTime;
  /// ID of the SSL-VPN client certificate.
  final String id;
  /// The name of the SSL-VPN client certificate.
  final String name;
  /// Use the SSL-VPN server ID as the search key.
  final String sslVpnServerId;
  /// The status of the client certificate. valid value:expiring-soon, normal, expired.
  final String status;

  /// Creates a new [GetSslVpnClientCertsCert].
  /// [createTime] The time of creation.
  /// [endTime] The expiration time of the client certificate.
  /// [id] ID of the SSL-VPN client certificate.
  /// [name] The name of the SSL-VPN client certificate.
  /// [sslVpnServerId] Use the SSL-VPN server ID as the search key.
  /// [status] The status of the client certificate. valid value:expiring-soon, normal, expired.
  GetSslVpnClientCertsCert({
    required this.createTime,
    required this.endTime,
    required this.id,
    required this.name,
    required this.sslVpnServerId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'endTime': endTime,
      'id': id,
      'name': name,
      'sslVpnServerId': sslVpnServerId,
      'status': status,
    };
  }

  factory GetSslVpnClientCertsCert.fromMap(Map<String, dynamic> map) {
    return GetSslVpnClientCertsCert(
      createTime: map['createTime'] as String,
      endTime: map['endTime'] as int,
      id: map['id'] as String,
      name: map['name'] as String,
      sslVpnServerId: map['sslVpnServerId'] as String,
      status: map['status'] as String,
    );
  }
}

