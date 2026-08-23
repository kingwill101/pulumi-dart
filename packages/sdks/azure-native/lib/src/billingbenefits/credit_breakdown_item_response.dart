// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'commitment_response.dart';
import 'credit_dimension_response.dart';

/// Credit breakdown item representing a milestone, line-item, or no-charge service
class CreditBreakdownItemResponse {
  /// Allocation details including currency and amount for this breakdown item
  final pulumi.Input<CommitmentResponse>? allocation;
  /// Key-value pairs for additional parameters and metadata
  final pulumi.Input<List<CreditDimensionResponse>>? dimensions;
  /// End DateTime in UTC.
  final pulumi.Input<String>? endAt;
  /// Start DateTime.
  final pulumi.Input<String>? startAt;

  /// Creates a new [CreditBreakdownItemResponse].
  /// [allocation] Allocation details including currency and amount for this breakdown item
  /// [dimensions] Key-value pairs for additional parameters and metadata
  /// [endAt] End DateTime in UTC.
  /// [startAt] Start DateTime.
  const CreditBreakdownItemResponse({
    this.allocation,
    this.dimensions,
    this.endAt,
    this.startAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocation': ?pulumi.Input.mapOptionalInputValue<CommitmentResponse, Map<String, dynamic>>(allocation, (value) => value.toMap()),
      'dimensions': ?pulumi.Input.mapOptionalInputValue<List<CreditDimensionResponse>, List<Map<String, dynamic>>>(dimensions, (value) => pulumi.Input.encodeList<CreditDimensionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'endAt': ?endAt,
      'startAt': ?startAt,
    };
  }

  factory CreditBreakdownItemResponse.fromMap(Map<String, dynamic> map) {
    return CreditBreakdownItemResponse(
      allocation: (() { final guardedValue = map['allocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CommitmentResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dimensions: (() { final guardedValue = map['dimensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CreditDimensionResponse>(guardedValue, (value) => CreditDimensionResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      endAt: (() { final guardedValue = map['endAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startAt: (() { final guardedValue = map['startAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
