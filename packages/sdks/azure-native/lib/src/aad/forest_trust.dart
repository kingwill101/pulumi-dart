// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Forest Trust Setting
class ForestTrust {
  /// Friendly Name
  final pulumi.Input<String>? friendlyName;
  /// Remote Dns ips
  final pulumi.Input<String>? remoteDnsIps;
  /// Trust Direction
  final pulumi.Input<String>? trustDirection;
  /// Trust Password
  final pulumi.Input<String>? trustPassword;
  /// Trusted Domain FQDN
  final pulumi.Input<String>? trustedDomainFqdn;

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
      friendlyName: map['friendlyName'] == null ? null : (map['friendlyName'] as String).input(),
      remoteDnsIps: map['remoteDnsIps'] == null ? null : (map['remoteDnsIps'] as String).input(),
      trustDirection: map['trustDirection'] == null ? null : (map['trustDirection'] as String).input(),
      trustPassword: map['trustPassword'] == null ? null : (map['trustPassword'] as String).input(),
      trustedDomainFqdn: map['trustedDomainFqdn'] == null ? null : (map['trustedDomainFqdn'] as String).input(),
    );
  }
}

