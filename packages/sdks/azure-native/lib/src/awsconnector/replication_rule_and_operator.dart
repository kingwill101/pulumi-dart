// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_filter.dart';

/// Definition of ReplicationRuleAndOperator
class ReplicationRuleAndOperator {
  /// An object key name prefix that identifies the subset of objects to which the rule applies.
  final pulumi.Input<String>? prefix;
  /// An array of tags containing key and value pairs.
  final pulumi.Input<List<TagFilter>>? tagFilters;

  /// Creates a new [ReplicationRuleAndOperator].
  /// [prefix] An object key name prefix that identifies the subset of objects to which the rule applies.
  /// [tagFilters] An array of tags containing key and value pairs.
  ReplicationRuleAndOperator({
    this.prefix,
    this.tagFilters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'prefix': ?prefix,
      'tagFilters': ?pulumi.Input.mapOptionalInputValue<List<TagFilter>, List<Map<String, dynamic>>>(tagFilters, (value) => pulumi.Input.encodeList<TagFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ReplicationRuleAndOperator.fromMap(Map<String, dynamic> map) {
    return ReplicationRuleAndOperator(
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tagFilters: (() { final guardedValue = map['tagFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TagFilter>(guardedValue, (value) => TagFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

