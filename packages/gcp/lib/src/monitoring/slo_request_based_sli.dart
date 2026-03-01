// ignore_for_file: unused_element, unnecessary_cast

import 'slo_request_based_sli_distribution_cut.dart';
import 'slo_request_based_sli_good_total_ratio.dart';

class SloRequestBasedSli {
  /// Used when good_service is defined by a count of values aggregated in a
  /// Distribution that fall into a good range. The total_service is the
  /// total count of all values aggregated in the Distribution.
  /// Defines a distribution TimeSeries filter and thresholds used for
  /// measuring good service and total service.
  /// Exactly one of `distribution_cut` or `good_total_ratio` can be set.
  /// Structure is documented below.
  final SloRequestBasedSliDistributionCut? distributionCut;

  /// A means to compute a ratio of `good_service` to `total_service`.
  /// Defines computing this ratio with two TimeSeries [monitoring filters](https://cloud.google.com/monitoring/api/v3/filters)
  /// Must specify exactly two of good, bad, and total service filters.
  /// The relationship good_service + bad_service = total_service
  /// will be assumed.
  /// Exactly one of `distribution_cut` or `good_total_ratio` can be set.
  /// Structure is documented below.
  final SloRequestBasedSliGoodTotalRatio? goodTotalRatio;

  /// Creates a new [SloRequestBasedSli].
  /// [distributionCut] Used when good_service is defined by a count of values aggregated in a
  /// [goodTotalRatio] A means to compute a ratio of `good_service` to `total_service`.
  SloRequestBasedSli({this.distributionCut, this.goodTotalRatio});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'distributionCut': ?distributionCut == null
          ? null
          : distributionCut!.toMap(),
      'goodTotalRatio': ?goodTotalRatio == null
          ? null
          : goodTotalRatio!.toMap(),
    };
  }

  factory SloRequestBasedSli.fromMap(Map<String, dynamic> map) {
    return SloRequestBasedSli(
      distributionCut: map['distributionCut'] == null
          ? null
          : SloRequestBasedSliDistributionCut.fromMap(
              (map['distributionCut'] as Map).cast<String, dynamic>(),
            ),
      goodTotalRatio: map['goodTotalRatio'] == null
          ? null
          : SloRequestBasedSliGoodTotalRatio.fromMap(
              (map['goodTotalRatio'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
