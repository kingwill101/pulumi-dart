// ignore_for_file: unused_element, unnecessary_cast


/// Forest Trust Setting
class ForestTrust {
  /// Friendly Name
  final String? friendlyName;
  /// Remote Dns ips
  final String? remoteDnsIps;
  /// Trust Direction
  final String? trustDirection;
  /// Trust Password
  final String? trustPassword;
  /// Trusted Domain FQDN
  final String? trustedDomainFqdn;

  /// Creates a new [ForestTrust].
  /// [friendlyName] Friendly Name
  /// [remoteDnsIps] Remote Dns ips
  /// [trustDirection] Trust Direction
  /// [trustPassword] Trust Password
  /// [trustedDomainFqdn] Trusted Domain FQDN
  ForestTrust({
    this.friendlyName,
    this.remoteDnsIps,
    this.trustDirection,
    this.trustPassword,
    this.trustedDomainFqdn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'friendlyName': ?friendlyName,
      'remoteDnsIps': ?remoteDnsIps,
      'trustDirection': ?trustDirection,
      'trustPassword': ?trustPassword,
      'trustedDomainFqdn': ?trustedDomainFqdn,
    };
  }

  factory ForestTrust.fromMap(Map<String, dynamic> map) {
    return ForestTrust(
      friendlyName: map['friendlyName'] == null ? null : map['friendlyName'] as String,
      remoteDnsIps: map['remoteDnsIps'] == null ? null : map['remoteDnsIps'] as String,
      trustDirection: map['trustDirection'] == null ? null : map['trustDirection'] as String,
      trustPassword: map['trustPassword'] == null ? null : map['trustPassword'] as String,
      trustedDomainFqdn: map['trustedDomainFqdn'] == null ? null : map['trustedDomainFqdn'] as String,
    );
  }
}

