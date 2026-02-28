// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delegation_signer_record_signing_attributes.dart';
import 'delegation_signer_record_timeouts.dart';

/// {@template pulumi_route53_domains_delegation_signer_record_delegation_signer_record_args_doc}
/// The set of arguments for DelegationSignerRecord.
/// {@endtemplate}
/// {@macro pulumi_route53_domains_delegation_signer_record_delegation_signer_record_args_doc}
class DelegationSignerRecordArgs {
  /// The name of the domain that will have its parent DNS zone updated with the Delegation Signer record.
  final pulumi.Input<String> domainName;

  /// The information about a key, including the algorithm, public key-value, and flags.
  final pulumi.Input<DelegationSignerRecordSigningAttributes>?
      signingAttributes;
  final pulumi.Input<DelegationSignerRecordTimeouts>? timeouts;

  /// Creates a new [DelegationSignerRecordArgs].
  /// [domainName] The name of the domain that will have its parent DNS zone updated with the Delegation Signer record.
  /// [signingAttributes] The information about a key, including the algorithm, public key-value, and flags.
  /// [timeouts] Optional.
  DelegationSignerRecordArgs({
    required String domainName,
    DelegationSignerRecordSigningAttributes? signingAttributes,
    DelegationSignerRecordTimeouts? timeouts,
  })  : domainName = pulumi.Input.asInput<String>(domainName),
        signingAttributes = pulumi.Input.asOptionalInput<
            DelegationSignerRecordSigningAttributes>(signingAttributes),
        timeouts = pulumi.Input.asOptionalInput<DelegationSignerRecordTimeouts>(
            timeouts);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['domainName'] = domainName;
    final signingAttributesValue = signingAttributes;
    if (signingAttributesValue != null) {
      map['signingAttributes'] = pulumi.Input.mapOptionalInputValue<
              DelegationSignerRecordSigningAttributes, Map<String, dynamic>>(
          signingAttributesValue, (value) => value.toMap());
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          DelegationSignerRecordTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory DelegationSignerRecordArgs.fromMap(Map<String, dynamic> map) {
    return DelegationSignerRecordArgs(
      domainName: map['domainName'] as String,
      signingAttributes: map['signingAttributes'] == null
          ? null
          : DelegationSignerRecordSigningAttributes.fromMap(
              (map['signingAttributes'] as Map).cast<String, dynamic>()),
      timeouts: map['timeouts'] == null
          ? null
          : DelegationSignerRecordTimeouts.fromMap(
              (map['timeouts'] as Map).cast<String, dynamic>()),
    );
  }
}
