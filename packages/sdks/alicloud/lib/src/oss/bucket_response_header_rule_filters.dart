// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketResponseHeaderRuleFilters {
  /// The operation to which the rule applies.
  final pulumi.Input<List<String>>? operations;

  /// Creates a new [BucketResponseHeaderRuleFilters].
  /// [operations] The operation to which the rule applies.
  const BucketResponseHeaderRuleFilters({
    this.operations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operations': ?operations,
    };
  }

  factory BucketResponseHeaderRuleFilters.fromMap(Map<String, dynamic> map) {
    return BucketResponseHeaderRuleFilters(
      operations: (() { final guardedValue = map['operations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

