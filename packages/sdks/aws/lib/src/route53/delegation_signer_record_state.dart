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
    pulumi.Output<String>? dnssecKeyId,
    pulumi.Output<String>? domainName,
    pulumi.Output<DelegationSignerRecordSigningAttributes>? signingAttributes,
    pulumi.Output<DelegationSignerRecordTimeouts>? timeouts,
  }) :
      dnssecKeyId = pulumi.Input.asOptionalInput<String>(dnssecKeyId),
      domainName = pulumi.Input.asOptionalInput<String>(domainName),
      signingAttributes = pulumi.Input.asOptionalInput<DelegationSignerRecordSigningAttributes>(signingAttributes),
      timeouts = pulumi.Input.asOptionalInput<DelegationSignerRecordTimeouts>(timeouts);

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
      dnssecKeyId: map['dnssecKeyId'] == null ? null : pulumi.Output.create<String>(map['dnssecKeyId'] as String),
      domainName: map['domainName'] == null ? null : pulumi.Output.create<String>(map['domainName'] as String),
      signingAttributes: map['signingAttributes'] == null ? null : pulumi.Output.create<DelegationSignerRecordSigningAttributes>(DelegationSignerRecordSigningAttributes.fromMap((map['signingAttributes'] as Map).cast<String, dynamic>())),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<DelegationSignerRecordTimeouts>(DelegationSignerRecordTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

