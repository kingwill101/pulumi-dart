// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An SOA record.
class SoaRecord {
  /// The email contact for this SOA record.
  final pulumi.Input<String>? email;
  /// The expire time for this SOA record.
  final pulumi.Input<double>? expireTime;
  /// The domain name of the authoritative name server for this SOA record.
  final pulumi.Input<String>? host;
  /// The minimum value for this SOA record. By convention this is used to determine the negative caching duration.
  final pulumi.Input<double>? minimumTtl;
  /// The refresh value for this SOA record.
  final pulumi.Input<double>? refreshTime;
  /// The retry time for this SOA record.
  final pulumi.Input<double>? retryTime;
  /// The serial number for this SOA record.
  final pulumi.Input<double>? serialNumber;

  /// Creates a new [SoaRecord].
  /// [email] The email contact for this SOA record.
  /// [expireTime] The expire time for this SOA record.
  /// [host] The domain name of the authoritative name server for this SOA record.
  /// [minimumTtl] The minimum value for this SOA record. By convention this is used to determine the negative caching duration.
  /// [refreshTime] The refresh value for this SOA record.
  /// [retryTime] The retry time for this SOA record.
  /// [serialNumber] The serial number for this SOA record.
  const SoaRecord({
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

  factory SoaRecord.fromMap(Map<String, dynamic> map) {
    return SoaRecord(
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expireTime: (() { final guardedValue = map['expireTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minimumTtl: (() { final guardedValue = map['minimumTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      refreshTime: (() { final guardedValue = map['refreshTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      retryTime: (() { final guardedValue = map['retryTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      serialNumber: (() { final guardedValue = map['serialNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

