// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_filter_response.dart';

/// Definition of ReplicationRuleAndOperator
class ReplicationRuleAndOperatorResponse {
  /// An object key name prefix that identifies the subset of objects to which the rule applies.
  final pulumi.Input<String>? prefix;
  /// An array of tags containing key and value pairs.
  final pulumi.Input<List<TagFilterResponse>>? tagFilters;

  /// Creates a new [ReplicationRuleAndOperatorResponse].
  /// [prefix] An object key name prefix that identifies the subset of objects to which the rule applies.
  /// [tagFilters] An array of tags containing key and value pairs.
  const ReplicationRuleAndOperatorResponse({
    this.prefix,
    this.tagFilters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'prefix': ?prefix,
      'tagFilters': ?pulumi.Input.mapOptionalInputValue<List<TagFilterResponse>, List<Map<String, dynamic>>>(tagFilters, (value) => pulumi.Input.encodeList<TagFilterResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ReplicationRuleAndOperatorResponse.fromMap(Map<String, dynamic> map) {
    return ReplicationRuleAndOperatorResponse(
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tagFilters: (() { final guardedValue = map['tagFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TagFilterResponse>(guardedValue, (value) => TagFilterResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

