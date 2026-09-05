// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delegation_signer_record_signing_attributes.dart';
import 'delegation_signer_record_timeouts.dart';

/// Input properties used for looking up and filtering DelegationSignerRecord resources.
class DelegationSignerRecordState {
  /// An ID assigned to the created DS record.
  final pulumi.Input<String?>? dnssecKeyId;
  /// The name of the domain that will have its parent DNS zone updated with the Delegation Signer record.
  final pulumi.Input<String?>? domainName;
  /// The information about a key, including the algorithm, public key-value, and flags.
  final pulumi.Input<DelegationSignerRecordSigningAttributes?>? signingAttributes;
  final pulumi.Input<DelegationSignerRecordTimeouts?>? timeouts;

  /// Creates a new [DelegationSignerRecordState].
  /// [dnssecKeyId] An ID assigned to the created DS record.
  /// [domainName] The name of the domain that will have its parent DNS zone updated with the Delegation Signer record.
  /// [signingAttributes] The information about a key, including the algorithm, public key-value, and flags.
  /// [timeouts] Optional.
  const DelegationSignerRecordState({
    this.dnssecKeyId,
    this.domainName,
    this.signingAttributes,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnssecKeyId': ?dnssecKeyId,
      'domainName': ?domainName,
      'signingAttributes': ?pulumi.Input.mapOptionalInputValue<DelegationSignerRecordSigningAttributes, Map<String, dynamic>>(signingAttributes, (value) => value.toMap()),
      'timeouts': ?pulumi.Input.mapOptionalInputValue<DelegationSignerRecordTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory DelegationSignerRecordState.fromMap(Map<String, dynamic> map) {
    return DelegationSignerRecordState(
      dnssecKeyId: (() { final guardedValue = map['dnssecKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      signingAttributes: (() { final guardedValue = map['signingAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DelegationSignerRecordSigningAttributes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DelegationSignerRecordTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
