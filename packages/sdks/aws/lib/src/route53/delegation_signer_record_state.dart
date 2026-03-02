// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delegation_signer_record_signing_attributes.dart';
import 'delegation_signer_record_timeouts.dart';

/// Input properties used for looking up and filtering DelegationSignerRecord resources.
class DelegationSignerRecordState {
  /// An ID assigned to the created DS record.
  final pulumi.Input<String>? dnssecKeyId;
  /// The name of the domain that will have its parent DNS zone updated with the Delegation Signer record.
  final pulumi.Input<String>? domainName;
  /// The information about a key, including the algorithm, public key-value, and flags.
  final pulumi.Input<DelegationSignerRecordSigningAttributes>? signingAttributes;
  final pulumi.Input<DelegationSignerRecordTimeouts>? timeouts;

  /// Creates a new [DelegationSignerRecordState].
  /// [dnssecKeyId] An ID assigned to the created DS record.
  /// [domainName] The name of the domain that will have its parent DNS zone updated with the Delegation Signer record.
  /// [signingAttributes] The information about a key, including the algorithm, public key-value, and flags.
  /// [timeouts] Optional.
  DelegationSignerRecordState({
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
      dnssecKeyId: map['dnssecKeyId'] == null ? null : (map['dnssecKeyId'] as String).input(),
      domainName: map['domainName'] == null ? null : (map['domainName'] as String).input(),
      signingAttributes: map['signingAttributes'] == null ? null : (DelegationSignerRecordSigningAttributes.fromMap((map['signingAttributes'] as Map).cast<String, dynamic>())).input(),
      timeouts: map['timeouts'] == null ? null : (DelegationSignerRecordTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

