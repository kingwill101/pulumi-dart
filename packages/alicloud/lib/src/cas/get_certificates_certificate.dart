// ignore_for_file: unused_element, unnecessary_cast


class GetCertificatesCertificate {
  /// The cert is buy from aliyun or not.
  final bool buyInAliyun;
  final String cert;
  final String certId;
  final String certificateName;
  /// The cert's city.
  final String city;
  /// The cert's common name.
  final String common;
  /// The cert's country.
  final String country;
  /// The cert's not valid after time.
  final String endDate;
  /// The cert is expired or not.
  final bool expired;
  final String fingerprint;
  /// The cert's id.
  final String id;
  /// The cert's .
  final String issuer;
  final String key;
  /// The cert's name.
  final String name;
  /// The cert's organization.
  final String orgName;
  /// The cert's province.
  final String province;
  /// The cert's subject alternative name.
  final String sans;
  /// The cert's not valid before time.
  final String startDate;

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
      buyInAliyun: map['buyInAliyun'] as bool,
      cert: map['cert'] as String,
      certId: map['certId'] as String,
      certificateName: map['certificateName'] as String,
      city: map['city'] as String,
      common: map['common'] as String,
      country: map['country'] as String,
      endDate: map['endDate'] as String,
      expired: map['expired'] as bool,
      fingerprint: map['fingerprint'] as String,
      id: map['id'] as String,
      issuer: map['issuer'] as String,
      key: map['key'] as String,
      name: map['name'] as String,
      orgName: map['orgName'] as String,
      province: map['province'] as String,
      sans: map['sans'] as String,
      startDate: map['startDate'] as String,
    );
  }
}

