// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of LegacyS3Origin
class LegacyS3Origin {
  /// Property dnsName
  final pulumi.Input<String>? dnsName;
  /// Property originAccessIdentity
  final pulumi.Input<String>? originAccessIdentity;

  /// Creates a new [LegacyS3Origin].
  /// [dnsName] Property dnsName
  /// [originAccessIdentity] Property originAccessIdentity
  LegacyS3Origin({
    this.dnsName,
    this.originAccessIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsName': ?dnsName,
      'originAccessIdentity': ?originAccessIdentity,
    };
  }

  factory LegacyS3Origin.fromMap(Map<String, dynamic> map) {
    return LegacyS3Origin(
      dnsName: map['dnsName'] == null ? null : (map['dnsName'] as String).input(),
      originAccessIdentity: map['originAccessIdentity'] == null ? null : (map['originAccessIdentity'] as String).input(),
    );
  }
}

