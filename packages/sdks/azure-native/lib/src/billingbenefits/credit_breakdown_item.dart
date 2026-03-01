// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'commitment.dart';
import 'credit_dimension.dart';

/// Credit breakdown item representing a milestone, line-item, or no-charge service
class CreditBreakdownItem {
  /// Allocation details including currency and amount for this breakdown item
  final Commitment? allocation;
  /// Key-value pairs for additional parameters and metadata
  final List<CreditDimension>? dimensions;
  /// End DateTime in UTC.
  final String? endAt;
  /// Start DateTime.
  final String? startAt;

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
      'allocation': ?allocation == null ? null : allocation!.toMap(),
      'dimensions': ?dimensions == null ? null : pulumi.Input.encodeList<CreditDimension, Map<String, dynamic>>(dimensions!, (value) => value.toMap()),
      'endAt': ?endAt,
      'startAt': ?startAt,
    };
  }

  factory CreditBreakdownItem.fromMap(Map<String, dynamic> map) {
    return CreditBreakdownItem(
      allocation: map['allocation'] == null ? null : Commitment.fromMap((map['allocation'] as Map).cast<String, dynamic>()),
      dimensions: map['dimensions'] == null ? null : pulumi.Input.decodeList<CreditDimension>(map['dimensions'], (value) => CreditDimension.fromMap((value as Map).cast<String, dynamic>())),
      endAt: map['endAt'] == null ? null : map['endAt'] as String,
      startAt: map['startAt'] == null ? null : map['startAt'] as String,
    );
  }
}

