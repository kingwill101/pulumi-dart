// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSslVpnClientCertsCert {
  /// The time of creation.
  final pulumi.Input<String> createTime;
  /// The expiration time of the client certificate.
  final pulumi.Input<int> endTime;
  /// ID of the SSL-VPN client certificate.
  final pulumi.Input<String> id;
  /// The name of the SSL-VPN client certificate.
  final pulumi.Input<String> name;
  /// Use the SSL-VPN server ID as the search key.
  final pulumi.Input<String> sslVpnServerId;
  /// The status of the client certificate. valid value:expiring-soon, normal, expired.
  final pulumi.Input<String> status;

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
      createTime: (map['createTime'] as String).input(),
      endTime: (map['endTime'] as int).input(),
      id: (map['id'] as String).input(),
      name: (map['name'] as String).input(),
      sslVpnServerId: (map['sslVpnServerId'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

