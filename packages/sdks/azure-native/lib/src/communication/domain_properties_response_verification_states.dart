// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'verification_status_record_response.dart';

/// List of VerificationStatusRecord
class DomainPropertiesResponseVerificationStates {
  /// A class that represents a VerificationStatus record.
  final pulumi.Input<VerificationStatusRecordResponse>? dKIM;
  /// A class that represents a VerificationStatus record.
  final pulumi.Input<VerificationStatusRecordResponse>? dKIM2;
  /// A class that represents a VerificationStatus record.
  final pulumi.Input<VerificationStatusRecordResponse>? dMARC;
  /// A class that represents a VerificationStatus record.
  final pulumi.Input<VerificationStatusRecordResponse>? domain;
  /// A class that represents a VerificationStatus record.
  final pulumi.Input<VerificationStatusRecordResponse>? sPF;

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
      'dKIM': ?pulumi.Input.mapOptionalInputValue<VerificationStatusRecordResponse, Map<String, dynamic>>(dKIM, (value) => value.toMap()),
      'dKIM2': ?pulumi.Input.mapOptionalInputValue<VerificationStatusRecordResponse, Map<String, dynamic>>(dKIM2, (value) => value.toMap()),
      'dMARC': ?pulumi.Input.mapOptionalInputValue<VerificationStatusRecordResponse, Map<String, dynamic>>(dMARC, (value) => value.toMap()),
      'domain': ?pulumi.Input.mapOptionalInputValue<VerificationStatusRecordResponse, Map<String, dynamic>>(domain, (value) => value.toMap()),
      'sPF': ?pulumi.Input.mapOptionalInputValue<VerificationStatusRecordResponse, Map<String, dynamic>>(sPF, (value) => value.toMap()),
    };
  }

  factory DomainPropertiesResponseVerificationStates.fromMap(Map<String, dynamic> map) {
    return DomainPropertiesResponseVerificationStates(
      dKIM: map['dKIM'] == null ? null : (VerificationStatusRecordResponse.fromMap((map['dKIM'] as Map).cast<String, dynamic>())).input(),
      dKIM2: map['dKIM2'] == null ? null : (VerificationStatusRecordResponse.fromMap((map['dKIM2'] as Map).cast<String, dynamic>())).input(),
      dMARC: map['dMARC'] == null ? null : (VerificationStatusRecordResponse.fromMap((map['dMARC'] as Map).cast<String, dynamic>())).input(),
      domain: map['domain'] == null ? null : (VerificationStatusRecordResponse.fromMap((map['domain'] as Map).cast<String, dynamic>())).input(),
      sPF: map['sPF'] == null ? null : (VerificationStatusRecordResponse.fromMap((map['sPF'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

