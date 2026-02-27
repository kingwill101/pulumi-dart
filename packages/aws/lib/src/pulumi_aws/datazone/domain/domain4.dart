import 'package:pulumi/pulumi.dart';
import '../domain_single_sign_on/domain_single_sign_on.dart';
import '../domain_timeouts/domain_timeouts.dart';
import 'domain_args4.dart';

/// Resource for managing an AWS DataZone Domain.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### V2 Domain
///
///
///
/// ## Import
///
/// Using `pulumi import`, import DataZone Domain using the `domain_id`. For example:
///
/// ```sh
/// $ pulumi import aws:datazone/domain:Domain example domain-id-12345678
/// ```
class Domain4 extends CustomResource {
  /// ARN of the Domain.
  late final Output<String> arn;

  /// Description of the Domain.
  late final Output<String?> description;

  /// ARN of the role used by DataZone to configure the Domain.
  ///
  /// The following arguments are optional:
  late final Output<String> domainExecutionRole;

  /// Version of the Domain. Valid values are `V1` and `V2`. Defaults to `V1`.
  late final Output<String> domainVersion;

  /// ARN of the KMS key used to encrypt the Amazon DataZone domain, metadata and reporting data.
  late final Output<String?> kmsKeyIdentifier;

  /// Name of the Domain.
  late final Output<String> name;

  /// URL of the data portal for the Domain.
  late final Output<String> portalUrl;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ID of the root domain unit.
  late final Output<String> rootDomainUnitId;

  /// ARN of the service role used by DataZone. Required when `domain_version` is set to `V2`.
  late final Output<String?> serviceRole;

  /// Single sign on options, used to [enable AWS IAM Identity Center](https://docs.aws.amazon.com/datazone/latest/userguide/enable-IAM-identity-center-for-datazone.html) for DataZone.
  late final Output<DomainSingleSignOn?> singleSignOn;

  /// Whether to skip the deletion check for the Domain.
  late final Output<bool?> skipDeletionCheck;
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<DomainTimeouts?> timeouts;

  Domain4(
    String name, {
    DomainArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:datazone/domain:Domain',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.domainExecutionRole = registerOutput<String>('domainExecutionRole');
    this.domainVersion = registerOutput<String>('domainVersion');
    this.kmsKeyIdentifier = registerOutput<String?>('kmsKeyIdentifier');
    this.name = registerOutput<String>('name');
    this.portalUrl = registerOutput<String>('portalUrl');
    this.region = registerOutput<String>('region');
    this.rootDomainUnitId = registerOutput<String>('rootDomainUnitId');
    this.serviceRole = registerOutput<String?>('serviceRole');
    this.singleSignOn = registerOutput<DomainSingleSignOn?>('singleSignOn');
    this.skipDeletionCheck = registerOutput<bool?>('skipDeletionCheck');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<DomainTimeouts?>('timeouts');
  }
}
