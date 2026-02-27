import 'package:pulumi/pulumi.dart' as pulumi;
import '../domain_matching/domain_matching.dart';
import '../domain_rule_based_matching/domain_rule_based_matching.dart';
import 'domain_customerprofiles_args.dart';

/// Resource for managing an Amazon Customer Profiles Domain.
/// See the [Create Domain](https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_CreateDomain.html) for more information.
///
/// ## Example Usage
///
///
///
/// ### With SQS DLQ and KMS set
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Amazon Customer Profiles Domain using the resource `id`. For example:
///
/// ```sh
/// $ pulumi import aws:customerprofiles/domain:Domain example e6f777be-22d0-4b40-b307-5d2720ef16b2
/// ```
class DomainCustomerprofiles extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) of the Customer Profiles Domain.
  late final pulumi.Output<String> arn;

  /// The URL of the SQS dead letter queue, which is used for reporting errors associated with ingesting data from third party applications.
  late final pulumi.Output<String?> deadLetterQueueUrl;

  /// The default encryption key, which is an AWS managed key, is used when no specific type of encryption key is specified. It is used to encrypt all data before it is placed in permanent or semi-permanent storage.
  late final pulumi.Output<String?> defaultEncryptionKey;

  /// The default number of days until the data within the domain expires.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<int> defaultExpirationDays;

  /// The name for your Customer Profile domain. It must be unique for your AWS account.
  late final pulumi.Output<String> domainName;

  /// A block that specifies the process of matching duplicate profiles. Documented below.
  late final pulumi.Output<DomainMatching?> matching;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A block that specifies the process of matching duplicate profiles using the Rule-Based matching. Documented below.
  late final pulumi.Output<DomainRuleBasedMatching?> ruleBasedMatching;

  /// Tags to apply to the domain. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  DomainCustomerprofiles(
    String name, {
    DomainCustomerprofilesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:customerprofiles/domain:Domain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.deadLetterQueueUrl = registerOutput<String?>('deadLetterQueueUrl');
    this.defaultEncryptionKey = registerOutput<String?>('defaultEncryptionKey');
    this.defaultExpirationDays = registerOutput<int>('defaultExpirationDays');
    this.domainName = registerOutput<String>('domainName');
    this.matching = registerOutput<DomainMatching?>('matching');
    this.region = registerOutput<String>('region');
    this.ruleBasedMatching =
        registerOutput<DomainRuleBasedMatching?>('ruleBasedMatching');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
