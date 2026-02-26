// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../delegation_signer_record_signing_attributes/delegation_signer_record_signing_attributes.dart';
import '../delegation_signer_record_timeouts/delegation_signer_record_timeouts.dart';

/// The set of arguments for DelegationSignerRecord.
class DelegationSignerRecordArgs {
  /// The name of the domain that will have its parent DNS zone updated with the Delegation Signer record.
  final Input<String> domainName;

  /// The information about a key, including the algorithm, public key-value, and flags.
  final Input<DelegationSignerRecordSigningAttributes>? signingAttributes;
  final Input<DelegationSignerRecordTimeouts>? timeouts;

  DelegationSignerRecordArgs({
    required this.domainName,
    this.signingAttributes,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['domainName'] = domainName;
    final signingAttributesValue = signingAttributes;
    if (signingAttributesValue != null) {
      map['signingAttributes'] = Input.mapOptionalInputValue<
              DelegationSignerRecordSigningAttributes, Map<String, dynamic>>(
          signingAttributesValue, (value) => value.toMap());
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = Input.mapOptionalInputValue<
          DelegationSignerRecordTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory DelegationSignerRecordArgs.fromMap(Map<String, dynamic> map) {
    return DelegationSignerRecordArgs(
      domainName: Input.asInput<String>(map['domainName']),
      signingAttributes:
          Input.asOptionalInput<DelegationSignerRecordSigningAttributes>(
              map['signingAttributes']),
      timeouts: Input.asOptionalInput<DelegationSignerRecordTimeouts>(
          map['timeouts']),
    );
  }
}
