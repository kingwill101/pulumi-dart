// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../domain_matching/domain_matching.dart';
import '../domain_rule_based_matching/domain_rule_based_matching.dart';

/// The set of arguments for Domain.
class DomainCustomerprofilesArgs {
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

  DomainCustomerprofilesArgs({
    this.deadLetterQueueUrl,
    this.defaultEncryptionKey,
    required this.defaultExpirationDays,
    required this.domainName,
    this.matching,
    this.region,
    this.ruleBasedMatching,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deadLetterQueueUrlValue = deadLetterQueueUrl;
    if (deadLetterQueueUrlValue != null) {
      map['deadLetterQueueUrl'] = deadLetterQueueUrlValue;
    }
    final defaultEncryptionKeyValue = defaultEncryptionKey;
    if (defaultEncryptionKeyValue != null) {
      map['defaultEncryptionKey'] = defaultEncryptionKeyValue;
    }
    map['defaultExpirationDays'] = defaultExpirationDays;
    map['domainName'] = domainName;
    final matchingValue = matching;
    if (matchingValue != null) {
      map['matching'] = pulumi.Input.mapOptionalInputValue<DomainMatching,
          Map<String, dynamic>>(matchingValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final ruleBasedMatchingValue = ruleBasedMatching;
    if (ruleBasedMatchingValue != null) {
      map['ruleBasedMatching'] = pulumi.Input.mapOptionalInputValue<
              DomainRuleBasedMatching, Map<String, dynamic>>(
          ruleBasedMatchingValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory DomainCustomerprofilesArgs.fromMap(Map<String, dynamic> map) {
    return DomainCustomerprofilesArgs(
      deadLetterQueueUrl:
          pulumi.Input.asOptionalInput<String>(map['deadLetterQueueUrl']),
      defaultEncryptionKey:
          pulumi.Input.asOptionalInput<String>(map['defaultEncryptionKey']),
      defaultExpirationDays:
          pulumi.Input.asInput<int>(map['defaultExpirationDays']),
      domainName: pulumi.Input.asInput<String>(map['domainName']),
      matching: pulumi.Input.asOptionalInput<DomainMatching>(map['matching']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      ruleBasedMatching: pulumi.Input.asOptionalInput<DomainRuleBasedMatching>(
          map['ruleBasedMatching']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
