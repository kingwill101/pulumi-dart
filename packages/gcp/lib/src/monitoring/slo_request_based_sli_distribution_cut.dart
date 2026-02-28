// ignore_for_file: unused_element, unnecessary_cast

import 'slo_request_based_sli_distribution_cut_range.dart';

class SloRequestBasedSliDistributionCut {
  /// A TimeSeries [monitoring filter](https://cloud.google.com/monitoring/api/v3/filters)
  /// aggregating values to quantify the good service provided.
  /// Must have ValueType = DISTRIBUTION and
  /// MetricKind = DELTA or MetricKind = CUMULATIVE.
  final String distributionFilter;

  /// Range of numerical values. The computed good_service
  /// will be the count of values x in the Distribution such
  /// that range.min <= x <= range.max. inclusive of min and
  /// max. Open ranges can be defined by setting
  /// just one of min or max.
  /// Structure is documented below.
  final SloRequestBasedSliDistributionCutRange range;

  /// Creates a new [SloRequestBasedSliDistributionCut].
  /// [distributionFilter] A TimeSeries [monitoring filter](https://cloud.google.com/monitoring/api/v3/filters)
  /// [range] Range of numerical values. The computed good_service
  SloRequestBasedSliDistributionCut({
    required this.distributionFilter,
    required this.range,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['distributionFilter'] = distributionFilter;
    map['range'] = range.toMap();
    return map;
  }

  factory SloRequestBasedSliDistributionCut.fromMap(Map<String, dynamic> map) {
    return SloRequestBasedSliDistributionCut(
      distributionFilter: map['distributionFilter'] as String,
      range: SloRequestBasedSliDistributionCutRange.fromMap(
          (map['range'] as Map).cast<String, dynamic>()),
    );
  }
}
