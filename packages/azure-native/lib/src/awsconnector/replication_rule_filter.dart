// ignore_for_file: unused_element, unnecessary_cast

import 'replication_rule_and_operator.dart';
import 'tag_filter.dart';

/// Definition of ReplicationRuleFilter
class ReplicationRuleFilter {
  /// A container for specifying rule filters. The filters determine the subset of objects to which the rule applies. This element is required only if you specify more than one filter. For example:   +  If you specify both a ``Prefix`` and a ``TagFilter``, wrap these filters in an ``And`` tag.  +  If you specify a filter based on multiple tags, wrap the ``TagFilter`` elements in an ``And`` tag. A container for specifying rule filters. The filters determine the subset of objects to which the rule applies. This element is required only if you specify more than one filter.  For example:  +  If you specify both a ``Prefix`` and a ``TagFilter``, wrap these filters in an ``And`` tag.   +  If you specify a filter based on multiple tags, wrap the ``TagFilter`` elements in an ``And`` tag
  final ReplicationRuleAndOperator? and;
  /// An object key name prefix that identifies the subset of objects to which the rule applies.  Replacement must be made for object keys containing special characters (such as carriage returns) when using XML requests. For more information, see [XML related object key constraints](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints).
  final String? prefix;
  /// A container for specifying a tag key and value.  The rule applies only to objects that have the tag in their tag set. Specifies tags to use to identify a subset of objects for an Amazon S3 bucket.
  final TagFilter? tagFilter;

  /// Creates a new [ReplicationRuleFilter].
  /// [and] A container for specifying rule filters. The filters determine the subset of objects to which the rule applies. This element is required only if you specify more than one filter. For example:   +  If you specify both a ``Prefix`` and a ``TagFilter``, wrap these filters in an ``And`` tag.  +  If you specify a filter based on multiple tags, wrap the ``TagFilter`` elements in an ``And`` tag. A container for specifying rule filters. The filters determine the subset of objects to which the rule applies. This element is required only if you specify more than one filter.  For example:  +  If you specify both a ``Prefix`` and a ``TagFilter``, wrap these filters in an ``And`` tag.   +  If you specify a filter based on multiple tags, wrap the ``TagFilter`` elements in an ``And`` tag
  /// [prefix] An object key name prefix that identifies the subset of objects to which the rule applies.  Replacement must be made for object keys containing special characters (such as carriage returns) when using XML requests. For more information, see [XML related object key constraints](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints).
  /// [tagFilter] A container for specifying a tag key and value.  The rule applies only to objects that have the tag in their tag set. Specifies tags to use to identify a subset of objects for an Amazon S3 bucket.
  ReplicationRuleFilter({
    this.and,
    this.prefix,
    this.tagFilter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'and': ?and == null ? null : and!.toMap(),
      'prefix': ?prefix,
      'tagFilter': ?tagFilter == null ? null : tagFilter!.toMap(),
    };
  }

  factory ReplicationRuleFilter.fromMap(Map<String, dynamic> map) {
    return ReplicationRuleFilter(
      and: map['and'] == null ? null : ReplicationRuleAndOperator.fromMap((map['and'] as Map).cast<String, dynamic>()),
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
      tagFilter: map['tagFilter'] == null ? null : TagFilter.fromMap((map['tagFilter'] as Map).cast<String, dynamic>()),
    );
  }
}

