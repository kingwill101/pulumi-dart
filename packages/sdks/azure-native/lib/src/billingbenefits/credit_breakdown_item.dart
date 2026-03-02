// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'commitment.dart';
import 'credit_dimension.dart';

/// Credit breakdown item representing a milestone, line-item, or no-charge service
class CreditBreakdownItem {
  /// Allocation details including currency and amount for this breakdown item
  final pulumi.Input<Commitment>? allocation;
  /// Key-value pairs for additional parameters and metadata
  final pulumi.Input<List<CreditDimension>>? dimensions;
  /// End DateTime in UTC.
  final pulumi.Input<String>? endAt;
  /// Start DateTime.
  final pulumi.Input<String>? startAt;

  /// Creates a new [CreditBreakdownItem].
  /// [allocation] Allocation details including currency and amount for this breakdown item
  /// [dimensions] Key-value pairs for additional parameters and metadata
  /// [endAt] End DateTime in UTC.
  /// [startAt] Start DateTime.
  CreditBreakdownItem({
    this.allocation,
    this.dimensions,
    this.endAt,
    this.startAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocation': ?pulumi.Input.mapOptionalInputValue<Commitment, Map<String, dynamic>>(allocation, (value) => value.toMap()),
      'dimensions': ?pulumi.Input.mapOptionalInputValue<List<CreditDimension>, List<Map<String, dynamic>>>(dimensions, (value) => pulumi.Input.encodeList<CreditDimension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'endAt': ?endAt,
      'startAt': ?startAt,
    };
  }

  factory CreditBreakdownItem.fromMap(Map<String, dynamic> map) {
    return CreditBreakdownItem(
      allocation: map['allocation'] == null ? null : (Commitment.fromMap((map['allocation'] as Map).cast<String, dynamic>())).input(),
      dimensions: map['dimensions'] == null ? null : (pulumi.Input.decodeList<CreditDimension>(map['dimensions'], (value) => CreditDimension.fromMap((value as Map).cast<String, dynamic>()))).input(),
      endAt: map['endAt'] == null ? null : (map['endAt'] as String).input(),
      startAt: map['startAt'] == null ? null : (map['startAt'] as String).input(),
    );
  }
}

