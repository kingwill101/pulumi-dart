// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCertificatesCertificate {
  /// The cert is buy from aliyun or not.
  final pulumi.Input<bool> buyInAliyun;
  final pulumi.Input<String> cert;
  final pulumi.Input<String> certId;
  final pulumi.Input<String> certificateName;
  /// The cert's city.
  final pulumi.Input<String> city;
  /// The cert's common name.
  final pulumi.Input<String> common;
  /// The cert's country.
  final pulumi.Input<String> country;
  /// The cert's not valid after time.
  final pulumi.Input<String> endDate;
  /// The cert is expired or not.
  final pulumi.Input<bool> expired;
  final pulumi.Input<String> fingerprint;
  /// The cert's id.
  final pulumi.Input<String> id;
  /// The cert's .
  final pulumi.Input<String> issuer;
  final pulumi.Input<String> key;
  /// The cert's name.
  final pulumi.Input<String> name;
  /// The cert's organization.
  final pulumi.Input<String> orgName;
  /// The cert's province.
  final pulumi.Input<String> province;
  /// The cert's subject alternative name.
  final pulumi.Input<String> sans;
  /// The cert's not valid before time.
  final pulumi.Input<String> startDate;

  /// Creates a new [GetCertificatesCertificate].
  /// [buyInAliyun] The cert is buy from aliyun or not.
  /// [cert] Required.
  /// [certId] Required.
  /// [certificateName] Required.
  /// [city] The cert's city.
  /// [common] The cert's common name.
  /// [country] The cert's country.
  /// [endDate] The cert's not valid after time.
  /// [expired] The cert is expired or not.
  /// [fingerprint] Required.
  /// [id] The cert's id.
  /// [issuer] The cert's .
  /// [key] Required.
  /// [name] The cert's name.
  /// [orgName] The cert's organization.
  /// [province] The cert's province.
  /// [sans] The cert's subject alternative name.
  /// [startDate] The cert's not valid before time.
  GetCertificatesCertificate({
    required this.buyInAliyun,
    required this.cert,
    required this.certId,
    required this.certificateName,
    required this.city,
    required this.common,
    required this.country,
    required this.endDate,
    required this.expired,
    required this.fingerprint,
    required this.id,
    required this.issuer,
    required this.key,
    required this.name,
    required this.orgName,
    required this.province,
    required this.sans,
    required this.startDate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buyInAliyun': buyInAliyun,
      'cert': cert,
      'certId': certId,
      'certificateName': certificateName,
      'city': city,
      'common': common,
      'country': country,
      'endDate': endDate,
      'expired': expired,
      'fingerprint': fingerprint,
      'id': id,
      'issuer': issuer,
      'key': key,
      'name': name,
      'orgName': orgName,
      'province': province,
      'sans': sans,
      'startDate': startDate,
    };
  }

  factory GetCertificatesCertificate.fromMap(Map<String, dynamic> map) {
    return GetCertificatesCertificate(
      buyInAliyun: (map['buyInAliyun'] as bool).input(),
      cert: (map['cert'] as String).input(),
      certId: (map['certId'] as String).input(),
      certificateName: (map['certificateName'] as String).input(),
      city: (map['city'] as String).input(),
      common: (map['common'] as String).input(),
      country: (map['country'] as String).input(),
      endDate: (map['endDate'] as String).input(),
      expired: (map['expired'] as bool).input(),
      fingerprint: (map['fingerprint'] as String).input(),
      id: (map['id'] as String).input(),
      issuer: (map['issuer'] as String).input(),
      key: (map['key'] as String).input(),
      name: (map['name'] as String).input(),
      orgName: (map['orgName'] as String).input(),
      province: (map['province'] as String).input(),
      sans: (map['sans'] as String).input(),
      startDate: (map['startDate'] as String).input(),
    );
  }
}

