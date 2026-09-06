// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'commitment.dart';
import 'credit_dimension.dart';

/// Credit breakdown item representing a milestone, line-item, or no-charge service
class CreditBreakdownItem {
  /// Allocation details including currency and amount for this breakdown item
  final pulumi.Input<Commitment?>? allocation;
  /// Key-value pairs for additional parameters and metadata
  final pulumi.Input<List<CreditDimension>?>? dimensions;
  /// End DateTime in UTC.
  final pulumi.Input<String?>? endAt;
  /// Start DateTime.
  final pulumi.Input<String?>? startAt;

  /// Creates a new [CreditBreakdownItem].
  /// [allocation] Allocation details including currency and amount for this breakdown item
  /// [dimensions] Key-value pairs for additional parameters and metadata
  /// [endAt] End DateTime in UTC.
  /// [startAt] Start DateTime.
  const CreditBreakdownItem({
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
      allocation: (() { final guardedValue = map['allocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Commitment.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dimensions: (() { final guardedValue = map['dimensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CreditDimension>(guardedValue, (value) => CreditDimension.fromMap((value as Map).cast<String, dynamic>()))); })(),
      endAt: (() { final guardedValue = map['endAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startAt: (() { final guardedValue = map['startAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
