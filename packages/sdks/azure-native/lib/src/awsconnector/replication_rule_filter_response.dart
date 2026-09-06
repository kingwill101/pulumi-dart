// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication_rule_and_operator_response.dart';
import 'tag_filter_response.dart';

/// Definition of ReplicationRuleFilter
class ReplicationRuleFilterResponse {
  /// A container for specifying rule filters. The filters determine the subset of objects to which the rule applies. This element is required only if you specify more than one filter. For example:   +  If you specify both a ``Prefix`` and a ``TagFilter``, wrap these filters in an ``And`` tag.  +  If you specify a filter based on multiple tags, wrap the ``TagFilter`` elements in an ``And`` tag. A container for specifying rule filters. The filters determine the subset of objects to which the rule applies. This element is required only if you specify more than one filter.  For example:  +  If you specify both a ``Prefix`` and a ``TagFilter``, wrap these filters in an ``And`` tag.   +  If you specify a filter based on multiple tags, wrap the ``TagFilter`` elements in an ``And`` tag
  final pulumi.Input<ReplicationRuleAndOperatorResponse?>? and;
  /// An object key name prefix that identifies the subset of objects to which the rule applies.  Replacement must be made for object keys containing special characters (such as carriage returns) when using XML requests. For more information, see [XML related object key constraints](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints).
  final pulumi.Input<String?>? prefix;
  /// A container for specifying a tag key and value.  The rule applies only to objects that have the tag in their tag set. Specifies tags to use to identify a subset of objects for an Amazon S3 bucket.
  final pulumi.Input<TagFilterResponse?>? tagFilter;

  /// Creates a new [ReplicationRuleFilterResponse].
  /// [and] A container for specifying rule filters. The filters determine the subset of objects to which the rule applies. This element is required only if you specify more than one filter. For example:   +  If you specify both a ``Prefix`` and a ``TagFilter``, wrap these filters in an ``And`` tag.  +  If you specify a filter based on multiple tags, wrap the ``TagFilter`` elements in an ``And`` tag. A container for specifying rule filters. The filters determine the subset of objects to which the rule applies. This element is required only if you specify more than one filter.  For example:  +  If you specify both a ``Prefix`` and a ``TagFilter``, wrap these filters in an ``And`` tag.   +  If you specify a filter based on multiple tags, wrap the ``TagFilter`` elements in an ``And`` tag
  /// [prefix] An object key name prefix that identifies the subset of objects to which the rule applies.  Replacement must be made for object keys containing special characters (such as carriage returns) when using XML requests. For more information, see [XML related object key constraints](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints).
  /// [tagFilter] A container for specifying a tag key and value.  The rule applies only to objects that have the tag in their tag set. Specifies tags to use to identify a subset of objects for an Amazon S3 bucket.
  const ReplicationRuleFilterResponse({
    this.and,
    this.prefix,
    this.tagFilter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'and': ?pulumi.Input.mapOptionalInputValue<ReplicationRuleAndOperatorResponse, Map<String, dynamic>>(and, (value) => value.toMap()),
      'prefix': ?prefix,
      'tagFilter': ?pulumi.Input.mapOptionalInputValue<TagFilterResponse, Map<String, dynamic>>(tagFilter, (value) => value.toMap()),
    };
  }

  factory ReplicationRuleFilterResponse.fromMap(Map<String, dynamic> map) {
    return ReplicationRuleFilterResponse(
      and: (() { final guardedValue = map['and']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReplicationRuleAndOperatorResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tagFilter: (() { final guardedValue = map['tagFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TagFilterResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
