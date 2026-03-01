// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'commitment_response.dart';
import 'credit_dimension_response.dart';

/// Credit breakdown item representing a milestone, line-item, or no-charge service
class CreditBreakdownItemResponse {
  /// Allocation details including currency and amount for this breakdown item
  final CommitmentResponse? allocation;
  /// Key-value pairs for additional parameters and metadata
  final List<CreditDimensionResponse>? dimensions;
  /// End DateTime in UTC.
  final String? endAt;
  /// Start DateTime.
  final String? startAt;

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
      'allocation': ?allocation == null ? null : allocation!.toMap(),
      'dimensions': ?dimensions == null ? null : pulumi.Input.encodeList<CreditDimensionResponse, Map<String, dynamic>>(dimensions!, (value) => value.toMap()),
      'endAt': ?endAt,
      'startAt': ?startAt,
    };
  }

  factory CreditBreakdownItemResponse.fromMap(Map<String, dynamic> map) {
    return CreditBreakdownItemResponse(
      allocation: map['allocation'] == null ? null : CommitmentResponse.fromMap((map['allocation'] as Map).cast<String, dynamic>()),
      dimensions: map['dimensions'] == null ? null : pulumi.Input.decodeList<CreditDimensionResponse>(map['dimensions'], (value) => CreditDimensionResponse.fromMap((value as Map).cast<String, dynamic>())),
      endAt: map['endAt'] == null ? null : map['endAt'] as String,
      startAt: map['startAt'] == null ? null : map['startAt'] as String,
    );
  }
}

