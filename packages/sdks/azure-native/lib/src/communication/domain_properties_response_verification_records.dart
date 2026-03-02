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
      dKIM: map['dKIM'] == null ? null : (DnsRecordResponse.fromMap((map['dKIM']! as Map).cast<String, dynamic>())).input(),
      dKIM2: map['dKIM2'] == null ? null : (DnsRecordResponse.fromMap((map['dKIM2']! as Map).cast<String, dynamic>())).input(),
      dMARC: map['dMARC'] == null ? null : (DnsRecordResponse.fromMap((map['dMARC']! as Map).cast<String, dynamic>())).input(),
      domain: map['domain'] == null ? null : (DnsRecordResponse.fromMap((map['domain']! as Map).cast<String, dynamic>())).input(),
      sPF: map['sPF'] == null ? null : (DnsRecordResponse.fromMap((map['sPF']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

