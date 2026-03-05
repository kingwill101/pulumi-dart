// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dns_record_response.dart';

/// List of DnsRecord
class DomainPropertiesResponseVerificationRecords {
  /// A class that represents a VerificationStatus record.
  final pulumi.Input<DnsRecordResponse>? dKIM;
  /// A class that represents a VerificationStatus record.
  final pulumi.Input<DnsRecordResponse>? dKIM2;
  /// A class that represents a VerificationStatus record.
  final pulumi.Input<DnsRecordResponse>? dMARC;
  /// A class that represents a VerificationStatus record.
  final pulumi.Input<DnsRecordResponse>? domain;
  /// A class that represents a VerificationStatus record.
  final pulumi.Input<DnsRecordResponse>? sPF;

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
      'dKIM': ?pulumi.Input.mapOptionalInputValue<DnsRecordResponse, Map<String, dynamic>>(dKIM, (value) => value.toMap()),
      'dKIM2': ?pulumi.Input.mapOptionalInputValue<DnsRecordResponse, Map<String, dynamic>>(dKIM2, (value) => value.toMap()),
      'dMARC': ?pulumi.Input.mapOptionalInputValue<DnsRecordResponse, Map<String, dynamic>>(dMARC, (value) => value.toMap()),
      'domain': ?pulumi.Input.mapOptionalInputValue<DnsRecordResponse, Map<String, dynamic>>(domain, (value) => value.toMap()),
      'sPF': ?pulumi.Input.mapOptionalInputValue<DnsRecordResponse, Map<String, dynamic>>(sPF, (value) => value.toMap()),
    };
  }

  factory DomainPropertiesResponseVerificationRecords.fromMap(Map<String, dynamic> map) {
    return DomainPropertiesResponseVerificationRecords(
      dKIM: (() { final guardedValue = map['dKIM']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DnsRecordResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dKIM2: (() { final guardedValue = map['dKIM2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DnsRecordResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dMARC: (() { final guardedValue = map['dMARC']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DnsRecordResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DnsRecordResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sPF: (() { final guardedValue = map['sPF']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DnsRecordResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

