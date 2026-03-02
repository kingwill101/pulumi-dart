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
  CreditBreakdownItemResponse({
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
      allocation: map['allocation'] == null ? null : (CommitmentResponse.fromMap((map['allocation']! as Map).cast<String, dynamic>())).input(),
      dimensions: map['dimensions'] == null ? null : (pulumi.Input.decodeList<CreditDimensionResponse>(map['dimensions']!, (value) => CreditDimensionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      endAt: map['endAt'] == null ? null : (map['endAt']! as String).input(),
      startAt: map['startAt'] == null ? null : (map['startAt']! as String).input(),
    );
  }
}

