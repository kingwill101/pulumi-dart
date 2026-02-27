import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_signing_key_args.dart';

/// Manages a Route 53 Key Signing Key. To manage Domain Name System Security Extensions (DNSSEC) for a Hosted Zone, see the `aws.route53.HostedZoneDnsSec` resource. For more information about managing DNSSEC in Route 53, see the [Route 53 Developer Guide](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-configuring-dnssec.html).
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.route53.KeySigningKey` resources using the Route 53 Hosted Zone identifier and KMS Key identifier, separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:route53/keySigningKey:KeySigningKey example Z1D633PJN98FT9,example
/// ```
class KeySigningKey extends pulumi.CustomResource {
  /// A string used to represent the delegation signer digest algorithm. This value must follow the guidelines provided by [RFC-8624 Section 3.3](https://tools.ietf.org/html/rfc8624#section-3.3).
  late final pulumi.Output<String> digestAlgorithmMnemonic;

  /// An integer used to represent the delegation signer digest algorithm. This value must follow the guidelines provided by [RFC-8624 Section 3.3](https://tools.ietf.org/html/rfc8624#section-3.3).
  late final pulumi.Output<int> digestAlgorithmType;

  /// A cryptographic digest of a DNSKEY resource record (RR). DNSKEY records are used to publish the public key that resolvers can use to verify DNSSEC signatures that are used to secure certain kinds of information provided by the DNS system.
  late final pulumi.Output<String> digestValue;

  /// A string that represents a DNSKEY record.
  late final pulumi.Output<String> dnskeyRecord;

  /// A string that represents a delegation signer (DS) record.
  late final pulumi.Output<String> dsRecord;

  /// An integer that specifies how the key is used. For key-signing key (KSK), this value is always 257.
  late final pulumi.Output<int> flag;

  /// Identifier of the Route 53 Hosted Zone.
  late final pulumi.Output<String> hostedZoneId;

  /// Amazon Resource Name (ARN) of the Key Management Service (KMS) Key. This must be unique for each key-signing key (KSK) in a single hosted zone. This key must be in the `us-east-1` Region and meet certain requirements, which are described in the [Route 53 Developer Guide](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-configuring-dnssec-cmk-requirements.html) and [Route 53 API Reference](https://docs.aws.amazon.com/Route53/latest/APIReference/API_CreateKeySigningKey.html).
  late final pulumi.Output<String> keyManagementServiceArn;

  /// An integer used to identify the DNSSEC record for the domain name. The process used to calculate the value is described in [RFC-4034 Appendix B](https://tools.ietf.org/rfc/rfc4034.txt).
  late final pulumi.Output<int> keyTag;

  /// Name of the key-signing key (KSK). Must be unique for each key-signing key in the same hosted zone.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;

  /// The public key, represented as a Base64 encoding, as required by [RFC-4034 Page 5](https://tools.ietf.org/rfc/rfc4034.txt).
  late final pulumi.Output<String> publicKey;

  /// A string used to represent the signing algorithm. This value must follow the guidelines provided by [RFC-8624 Section 3.1](https://tools.ietf.org/html/rfc8624#section-3.1).
  late final pulumi.Output<String> signingAlgorithmMnemonic;

  /// An integer used to represent the signing algorithm. This value must follow the guidelines provided by [RFC-8624 Section 3.1](https://tools.ietf.org/html/rfc8624#section-3.1).
  late final pulumi.Output<int> signingAlgorithmType;

  /// Status of the key-signing key (KSK). Valid values: `ACTIVE`, `INACTIVE`. Defaults to `ACTIVE`.
  late final pulumi.Output<String?> status;

  KeySigningKey(
    String name, {
    KeySigningKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53/keySigningKey:KeySigningKey',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.digestAlgorithmMnemonic =
        registerOutput<String>('digestAlgorithmMnemonic');
    this.digestAlgorithmType = registerOutput<int>('digestAlgorithmType');
    this.digestValue = registerOutput<String>('digestValue');
    this.dnskeyRecord = registerOutput<String>('dnskeyRecord');
    this.dsRecord = registerOutput<String>('dsRecord');
    this.flag = registerOutput<int>('flag');
    this.hostedZoneId = registerOutput<String>('hostedZoneId');
    this.keyManagementServiceArn =
        registerOutput<String>('keyManagementServiceArn');
    this.keyTag = registerOutput<int>('keyTag');
    this.name = registerOutput<String>('name');
    this.publicKey = registerOutput<String>('publicKey');
    this.signingAlgorithmMnemonic =
        registerOutput<String>('signingAlgorithmMnemonic');
    this.signingAlgorithmType = registerOutput<int>('signingAlgorithmType');
    this.status = registerOutput<String?>('status');
  }
}
