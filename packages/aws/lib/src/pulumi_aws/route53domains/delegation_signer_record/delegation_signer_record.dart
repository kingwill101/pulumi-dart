import 'package:pulumi/pulumi.dart';
import '../delegation_signer_record_signing_attributes/delegation_signer_record_signing_attributes.dart';
import '../delegation_signer_record_timeouts/delegation_signer_record_timeouts.dart';
import 'delegation_signer_record_args.dart';

/// Provides a resource to manage a [delegation signer record](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-configuring-dnssec-enable-signing.html#dns-configuring-dnssec-enable-signing-step-1) in the parent DNS zone for domains registered with Route53.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import delegation signer records using the domain name and DNSSEC key ID, separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:route53domains/delegationSignerRecord:DelegationSignerRecord example example.com,40DE3534F5324DBDAC598ACEDB5B1E26A5368732D9C791D1347E4FBDDF6FC343
/// ```
class DelegationSignerRecord extends CustomResource {
  /// An ID assigned to the created DS record.
  late final Output<String> dnssecKeyId;

  /// The name of the domain that will have its parent DNS zone updated with the Delegation Signer record.
  late final Output<String> domainName;

  /// The information about a key, including the algorithm, public key-value, and flags.
  late final Output<DelegationSignerRecordSigningAttributes?> signingAttributes;
  late final Output<DelegationSignerRecordTimeouts?> timeouts;

  DelegationSignerRecord(
    String name, {
    DelegationSignerRecordArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:route53domains/delegationSignerRecord:DelegationSignerRecord',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.dnssecKeyId = registerOutput<String>('dnssecKeyId');
    this.domainName = registerOutput<String>('domainName');
    this.signingAttributes =
        registerOutput<DelegationSignerRecordSigningAttributes?>(
            'signingAttributes');
    this.timeouts = registerOutput<DelegationSignerRecordTimeouts?>('timeouts');
  }
}
