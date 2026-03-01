// ignore_for_file: unused_element, unnecessary_cast


/// An SOA record.
class SoaRecordResponse {
  /// The email contact for this SOA record.
  final String? email;
  /// The expire time for this SOA record.
  final double? expireTime;
  /// The domain name of the authoritative name server for this SOA record.
  final String? host;
  /// The minimum value for this SOA record. By convention this is used to determine the negative caching duration.
  final double? minimumTtl;
  /// The refresh value for this SOA record.
  final double? refreshTime;
  /// The retry time for this SOA record.
  final double? retryTime;
  /// The serial number for this SOA record.
  final double? serialNumber;

  /// Creates a new [SoaRecordResponse].
  /// [email] The email contact for this SOA record.
  /// [expireTime] The expire time for this SOA record.
  /// [host] The domain name of the authoritative name server for this SOA record.
  /// [minimumTtl] The minimum value for this SOA record. By convention this is used to determine the negative caching duration.
  /// [refreshTime] The refresh value for this SOA record.
  /// [retryTime] The retry time for this SOA record.
  /// [serialNumber] The serial number for this SOA record.
  SoaRecordResponse({
    this.email,
    this.expireTime,
    this.host,
    this.minimumTtl,
    this.refreshTime,
    this.retryTime,
    this.serialNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': ?email,
      'expireTime': ?expireTime,
      'host': ?host,
      'minimumTtl': ?minimumTtl,
      'refreshTime': ?refreshTime,
      'retryTime': ?retryTime,
      'serialNumber': ?serialNumber,
    };
  }

  factory SoaRecordResponse.fromMap(Map<String, dynamic> map) {
    return SoaRecordResponse(
      email: map['email'] == null ? null : map['email'] as String,
      expireTime: map['expireTime'] == null ? null : map['expireTime'] as double,
      host: map['host'] == null ? null : map['host'] as String,
      minimumTtl: map['minimumTtl'] == null ? null : map['minimumTtl'] as double,
      refreshTime: map['refreshTime'] == null ? null : map['refreshTime'] as double,
      retryTime: map['retryTime'] == null ? null : map['retryTime'] as double,
      serialNumber: map['serialNumber'] == null ? null : map['serialNumber'] as double,
    );
  }
}

