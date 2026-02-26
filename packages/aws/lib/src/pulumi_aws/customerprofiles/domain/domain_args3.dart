// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../domain_matching/domain_matching.dart';
import '../domain_rule_based_matching/domain_rule_based_matching.dart';

/// The set of arguments for Domain.
class DomainArgs3 {
  /// The URL of the SQS dead letter queue, which is used for reporting errors associated with ingesting data from third party applications.
  final Input<String>? deadLetterQueueUrl;

  /// The default encryption key, which is an AWS managed key, is used when no specific type of encryption key is specified. It is used to encrypt all data before it is placed in permanent or semi-permanent storage.
  final Input<String>? defaultEncryptionKey;

  /// The default number of days until the data within the domain expires.
  ///
  /// The following arguments are optional:
  final Input<int> defaultExpirationDays;

  /// The name for your Customer Profile domain. It must be unique for your AWS account.
  final Input<String> domainName;

  /// A block that specifies the process of matching duplicate profiles. Documented below.
  final Input<DomainMatching>? matching;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A block that specifies the process of matching duplicate profiles using the Rule-Based matching. Documented below.
  final Input<DomainRuleBasedMatching>? ruleBasedMatching;

  /// Tags to apply to the domain. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  DomainArgs3({
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
      map['matching'] =
          Input.mapOptionalInputValue<DomainMatching, Map<String, dynamic>>(
              matchingValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final ruleBasedMatchingValue = ruleBasedMatching;
    if (ruleBasedMatchingValue != null) {
      map['ruleBasedMatching'] = Input.mapOptionalInputValue<
              DomainRuleBasedMatching, Map<String, dynamic>>(
          ruleBasedMatchingValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory DomainArgs3.fromMap(Map<String, dynamic> map) {
    return DomainArgs3(
      deadLetterQueueUrl:
          Input.asOptionalInput<String>(map['deadLetterQueueUrl']),
      defaultEncryptionKey:
          Input.asOptionalInput<String>(map['defaultEncryptionKey']),
      defaultExpirationDays: Input.asInput<int>(map['defaultExpirationDays']),
      domainName: Input.asInput<String>(map['domainName']),
      matching: Input.asOptionalInput<DomainMatching>(map['matching']),
      region: Input.asOptionalInput<String>(map['region']),
      ruleBasedMatching: Input.asOptionalInput<DomainRuleBasedMatching>(
          map['ruleBasedMatching']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
