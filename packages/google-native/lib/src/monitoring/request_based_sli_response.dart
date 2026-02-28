// ignore_for_file: unused_element, unnecessary_cast

import 'distribution_cut_response.dart';
import 'time_series_ratio_response.dart';

/// Service Level Indicators for which atomic units of service are counted directly.
class RequestBasedSliResponse {
  /// distribution_cut is used when good_service is a count of values aggregated in a Distribution that fall into a good range. The total_service is the total count of all values aggregated in the Distribution.
  final DistributionCutResponse distributionCut;

  /// good_total_ratio is used when the ratio of good_service to total_service is computed from two TimeSeries.
  final TimeSeriesRatioResponse goodTotalRatio;

  /// Creates a new [RequestBasedSliResponse].
  /// [distributionCut] distribution_cut is used when good_service is a count of values aggregated in a Distribution that fall into a good range. The total_service is the total count of all values aggregated in the Distribution.
  /// [goodTotalRatio] good_total_ratio is used when the ratio of good_service to total_service is computed from two TimeSeries.
  RequestBasedSliResponse({
    required this.distributionCut,
    required this.goodTotalRatio,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['distributionCut'] = distributionCut.toMap();
    map['goodTotalRatio'] = goodTotalRatio.toMap();
    return map;
  }

  factory RequestBasedSliResponse.fromMap(Map<String, dynamic> map) {
    return RequestBasedSliResponse(
      distributionCut: DistributionCutResponse.fromMap(
          (map['distributionCut'] as Map).cast<String, dynamic>()),
      goodTotalRatio: TimeSeriesRatioResponse.fromMap(
          (map['goodTotalRatio'] as Map).cast<String, dynamic>()),
    );
  }
}
