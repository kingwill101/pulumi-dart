// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Forest Trust Setting
class ForestTrustResponse {
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

  /// Creates a new [ForestTrustResponse].
  /// [friendlyName] Friendly Name
  /// [remoteDnsIps] Remote Dns ips
  /// [trustDirection] Trust Direction
  /// [trustPassword] Trust Password
  /// [trustedDomainFqdn] Trusted Domain FQDN
  ForestTrustResponse({
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

  factory ForestTrustResponse.fromMap(Map<String, dynamic> map) {
    return ForestTrustResponse(
      friendlyName: (() { final guardedValue = map['friendlyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remoteDnsIps: (() { final guardedValue = map['remoteDnsIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trustDirection: (() { final guardedValue = map['trustDirection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trustPassword: (() { final guardedValue = map['trustPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trustedDomainFqdn: (() { final guardedValue = map['trustedDomainFqdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

