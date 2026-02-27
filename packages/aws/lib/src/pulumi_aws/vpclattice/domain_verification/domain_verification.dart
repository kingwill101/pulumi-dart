import 'package:pulumi/pulumi.dart';
import 'domain_verification_args.dart';

/// Resource for managing an AWS VPC Lattice Domain Verification.
///
/// Starts the domain verification process for a custom domain name. Use this resource to verify ownership of a domain before associating it with VPC Lattice resources.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### With Tags
///
///
///
/// ## Import
///
/// Using `pulumi import`, import VPC Lattice Domain Verification using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:vpclattice/domainVerification:DomainVerification example dv-0a1b2c3d4e5f
/// ```
class DomainVerification extends CustomResource {
  /// The Amazon Resource Name (ARN) of the domain verification.
  late final Output<String> arn;

  /// The date and time that the domain verification was created, in ISO-8601 format.
  late final Output<String> createdAt;

  /// The domain name to verify ownership for.
  ///
  /// The following arguments are optional:
  late final Output<String> domainName;

  /// The date and time that the domain was last successfully verified, in ISO-8601 format.
  late final Output<String> lastVerifiedTime;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The current status of the domain verification process. Valid values: `VERIFIED`, `PENDING`, `VERIFICATION_TIMED_OUT`.
  late final Output<String> status;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The name of the TXT record that must be created for domain verification.
  late final Output<String> txtRecordName;

  /// The value that must be added to the TXT record for domain verification.
  late final Output<String> txtRecordValue;

  DomainVerification(
    String name, {
    DomainVerificationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:vpclattice/domainVerification:DomainVerification',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.createdAt = registerOutput<String>('createdAt');
    this.domainName = registerOutput<String>('domainName');
    this.lastVerifiedTime = registerOutput<String>('lastVerifiedTime');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.txtRecordName = registerOutput<String>('txtRecordName');
    this.txtRecordValue = registerOutput<String>('txtRecordValue');
  }
}
