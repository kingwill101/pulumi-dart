// ignore_for_file: unused_element, unnecessary_cast


/// Definition of LegacyS3Origin
class LegacyS3Origin {
  /// Property dnsName
  final String? dnsName;
  /// Property originAccessIdentity
  final String? originAccessIdentity;

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
      dnsName: map['dnsName'] == null ? null : map['dnsName'] as String,
      originAccessIdentity: map['originAccessIdentity'] == null ? null : map['originAccessIdentity'] as String,
    );
  }
}

