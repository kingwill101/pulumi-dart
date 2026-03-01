// ignore_for_file: unused_element, unnecessary_cast

import 'dns_record_response.dart';

/// List of DnsRecord
class DomainPropertiesResponseVerificationRecords {
  /// A class that represents a VerificationStatus record.
  final DnsRecordResponse? dKIM;
  /// A class that represents a VerificationStatus record.
  final DnsRecordResponse? dKIM2;
  /// A class that represents a VerificationStatus record.
  final DnsRecordResponse? dMARC;
  /// A class that represents a VerificationStatus record.
  final DnsRecordResponse? domain;
  /// A class that represents a VerificationStatus record.
  final DnsRecordResponse? sPF;

  /// Creates a new [DomainPropertiesResponseVerificationRecords].
  /// [dKIM] A class that represents a VerificationStatus record.
  /// [dKIM2] A class that represents a VerificationStatus record.
  /// [dMARC] A class that represents a VerificationStatus record.
  /// [domain] A class that represents a VerificationStatus record.
  /// [sPF] A class that represents a VerificationStatus record.
  DomainPropertiesResponseVerificationRecords({
    this.dKIM,
    this.dKIM2,
    this.dMARC,
    this.domain,
    this.sPF,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dKIM': ?dKIM == null ? null : dKIM!.toMap(),
      'dKIM2': ?dKIM2 == null ? null : dKIM2!.toMap(),
      'dMARC': ?dMARC == null ? null : dMARC!.toMap(),
      'domain': ?domain == null ? null : domain!.toMap(),
      'sPF': ?sPF == null ? null : sPF!.toMap(),
    };
  }

  factory DomainPropertiesResponseVerificationRecords.fromMap(Map<String, dynamic> map) {
    return DomainPropertiesResponseVerificationRecords(
      dKIM: map['dKIM'] == null ? null : DnsRecordResponse.fromMap((map['dKIM'] as Map).cast<String, dynamic>()),
      dKIM2: map['dKIM2'] == null ? null : DnsRecordResponse.fromMap((map['dKIM2'] as Map).cast<String, dynamic>()),
      dMARC: map['dMARC'] == null ? null : DnsRecordResponse.fromMap((map['dMARC'] as Map).cast<String, dynamic>()),
      domain: map['domain'] == null ? null : DnsRecordResponse.fromMap((map['domain'] as Map).cast<String, dynamic>()),
      sPF: map['sPF'] == null ? null : DnsRecordResponse.fromMap((map['sPF'] as Map).cast<String, dynamic>()),
    );
  }
}

