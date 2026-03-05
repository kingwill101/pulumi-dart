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
      dKIM: (() { final guardedValue = map['dKIM']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VerificationStatusRecordResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dKIM2: (() { final guardedValue = map['dKIM2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VerificationStatusRecordResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dMARC: (() { final guardedValue = map['dMARC']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VerificationStatusRecordResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VerificationStatusRecordResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sPF: (() { final guardedValue = map['sPF']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VerificationStatusRecordResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

