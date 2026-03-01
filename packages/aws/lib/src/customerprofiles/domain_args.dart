// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_matching.dart';
import 'domain_rule_based_matching.dart';

/// {@template pulumi_customerprofiles_domain_domain_args_doc}
/// The set of arguments for Domain.
/// {@endtemplate}
/// {@macro pulumi_customerprofiles_domain_domain_args_doc}
class DomainArgs {
  /// The URL of the SQS dead letter queue, which is used for reporting errors associated with ingesting data from third party applications.
  final pulumi.Input<String>? deadLetterQueueUrl;
  /// The default encryption key, which is an AWS managed key, is used when no specific type of encryption key is specified. It is used to encrypt all data before it is placed in permanent or semi-permanent storage.
  final pulumi.Input<String>? defaultEncryptionKey;
  /// The default number of days until the data within the domain expires.
  ///
  /// The following arguments are optional:
  final pulumi.Input<int> defaultExpirationDays;
  /// The name for your Customer Profile domain. It must be unique for your AWS account.
  final pulumi.Input<String> domainName;
  /// A block that specifies the process of matching duplicate profiles. Documented below.
  final pulumi.Input<DomainMatching>? matching;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A block that specifies the process of matching duplicate profiles using the Rule-Based matching. Documented below.
  final pulumi.Input<DomainRuleBasedMatching>? ruleBasedMatching;
  /// Tags to apply to the domain. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DomainArgs].
  /// [deadLetterQueueUrl] The URL of the SQS dead letter queue, which is used for reporting errors associated with ingesting data from third party applications.
  /// [defaultEncryptionKey] The default encryption key, which is an AWS managed key, is used when no specific type of encryption key is specified. It is used to encrypt all data before it is placed in permanent or semi-permanent storage.
  /// [defaultExpirationDays] The default number of days until the data within the domain expires.
  /// [domainName] The name for your Customer Profile domain. It must be unique for your AWS account.
  /// [matching] A block that specifies the process of matching duplicate profiles. Documented below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [ruleBasedMatching] A block that specifies the process of matching duplicate profiles using the Rule-Based matching. Documented below.
  /// [tags] Tags to apply to the domain. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  DomainArgs({
    String? deadLetterQueueUrl,
    String? defaultEncryptionKey,
    required int defaultExpirationDays,
    required String domainName,
    DomainMatching? matching,
    String? region,
    DomainRuleBasedMatching? ruleBasedMatching,
    Map<String, String>? tags,
  }) :
      deadLetterQueueUrl = pulumi.Input.asOptionalInput<String>(deadLetterQueueUrl),
      defaultEncryptionKey = pulumi.Input.asOptionalInput<String>(defaultEncryptionKey),
      defaultExpirationDays = pulumi.Input.asInput<int>(defaultExpirationDays),
      domainName = pulumi.Input.asInput<String>(domainName),
      matching = pulumi.Input.asOptionalInput<DomainMatching>(matching),
      region = pulumi.Input.asOptionalInput<String>(region),
      ruleBasedMatching = pulumi.Input.asOptionalInput<DomainRuleBasedMatching>(ruleBasedMatching),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deadLetterQueueUrl': ?deadLetterQueueUrl,
      'defaultEncryptionKey': ?defaultEncryptionKey,
      'defaultExpirationDays': defaultExpirationDays,
      'domainName': domainName,
      'matching': ?pulumi.Input.mapOptionalInputValue<DomainMatching, Map<String, dynamic>>(matching, (value) => value.toMap()),
      'region': ?region,
      'ruleBasedMatching': ?pulumi.Input.mapOptionalInputValue<DomainRuleBasedMatching, Map<String, dynamic>>(ruleBasedMatching, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory DomainArgs.fromMap(Map<String, dynamic> map) {
    return DomainArgs(
      deadLetterQueueUrl: map['deadLetterQueueUrl'] == null ? null : map['deadLetterQueueUrl'] as String,
      defaultEncryptionKey: map['defaultEncryptionKey'] == null ? null : map['defaultEncryptionKey'] as String,
      defaultExpirationDays: map['defaultExpirationDays'] as int,
      domainName: map['domainName'] as String,
      matching: map['matching'] == null ? null : DomainMatching.fromMap((map['matching'] as Map).cast<String, dynamic>()),
      region: map['region'] == null ? null : map['region'] as String,
      ruleBasedMatching: map['ruleBasedMatching'] == null ? null : DomainRuleBasedMatching.fromMap((map['ruleBasedMatching'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

