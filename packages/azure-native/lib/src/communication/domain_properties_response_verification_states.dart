// ignore_for_file: unused_element, unnecessary_cast

import 'verification_status_record_response.dart';

/// List of VerificationStatusRecord
class DomainPropertiesResponseVerificationStates {
  /// A class that represents a VerificationStatus record.
  final VerificationStatusRecordResponse? dKIM;
  /// A class that represents a VerificationStatus record.
  final VerificationStatusRecordResponse? dKIM2;
  /// A class that represents a VerificationStatus record.
  final VerificationStatusRecordResponse? dMARC;
  /// A class that represents a VerificationStatus record.
  final VerificationStatusRecordResponse? domain;
  /// A class that represents a VerificationStatus record.
  final VerificationStatusRecordResponse? sPF;

  /// Creates a new [DomainPropertiesResponseVerificationStates].
  /// [dKIM] A class that represents a VerificationStatus record.
  /// [dKIM2] A class that represents a VerificationStatus record.
  /// [dMARC] A class that represents a VerificationStatus record.
  /// [domain] A class that represents a VerificationStatus record.
  /// [sPF] A class that represents a VerificationStatus record.
  DomainPropertiesResponseVerificationStates({
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

  factory DomainPropertiesResponseVerificationStates.fromMap(Map<String, dynamic> map) {
    return DomainPropertiesResponseVerificationStates(
      dKIM: map['dKIM'] == null ? null : VerificationStatusRecordResponse.fromMap((map['dKIM'] as Map).cast<String, dynamic>()),
      dKIM2: map['dKIM2'] == null ? null : VerificationStatusRecordResponse.fromMap((map['dKIM2'] as Map).cast<String, dynamic>()),
      dMARC: map['dMARC'] == null ? null : VerificationStatusRecordResponse.fromMap((map['dMARC'] as Map).cast<String, dynamic>()),
      domain: map['domain'] == null ? null : VerificationStatusRecordResponse.fromMap((map['domain'] as Map).cast<String, dynamic>()),
      sPF: map['sPF'] == null ? null : VerificationStatusRecordResponse.fromMap((map['sPF'] as Map).cast<String, dynamic>()),
    );
  }
}

