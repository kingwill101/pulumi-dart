// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of LegacyS3Origin
class LegacyS3OriginResponse {
  /// Property dnsName
  final pulumi.Input<String>? dnsName;
  /// Property originAccessIdentity
  final pulumi.Input<String>? originAccessIdentity;

  /// Creates a new [LegacyS3OriginResponse].
  /// [dnsName] Property dnsName
  /// [originAccessIdentity] Property originAccessIdentity
  LegacyS3OriginResponse({
    this.dnsName,
    this.originAccessIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsName': ?dnsName,
      'originAccessIdentity': ?originAccessIdentity,
    };
  }

  factory LegacyS3OriginResponse.fromMap(Map<String, dynamic> map) {
    return LegacyS3OriginResponse(
      dnsName: map['dnsName'] == null ? null : (map['dnsName']! as String).input(),
      originAccessIdentity: map['originAccessIdentity'] == null ? null : (map['originAccessIdentity']! as String).input(),
    );
  }
}

