// ignore_for_file: unused_element, unnecessary_cast

import '../slo_request_based_sli_distribution_cut/slo_request_based_sli_distribution_cut.dart';
import '../slo_request_based_sli_good_total_ratio/slo_request_based_sli_good_total_ratio.dart';

class SloRequestBasedSli {
  /// Used when<span pulumi-lang-nodejs=" goodService " pulumi-lang-dotnet=" GoodService " pulumi-lang-go=" goodService " pulumi-lang-python=" good_service " pulumi-lang-yaml=" goodService " pulumi-lang-java=" goodService "> good_service </span>is defined by a count of values aggregated in a
  /// Distribution that fall into a good range. The<span pulumi-lang-nodejs=" totalService " pulumi-lang-dotnet=" TotalService " pulumi-lang-go=" totalService " pulumi-lang-python=" total_service " pulumi-lang-yaml=" totalService " pulumi-lang-java=" totalService "> total_service </span>is the
  /// total count of all values aggregated in the Distribution.
  /// Defines a distribution TimeSeries filter and thresholds used for
  /// measuring good service and total service.
  /// Exactly one of <span pulumi-lang-nodejs="`distributionCut`" pulumi-lang-dotnet="`DistributionCut`" pulumi-lang-go="`distributionCut`" pulumi-lang-python="`distribution_cut`" pulumi-lang-yaml="`distributionCut`" pulumi-lang-java="`distributionCut`">`distribution_cut`</span> or <span pulumi-lang-nodejs="`goodTotalRatio`" pulumi-lang-dotnet="`GoodTotalRatio`" pulumi-lang-go="`goodTotalRatio`" pulumi-lang-python="`good_total_ratio`" pulumi-lang-yaml="`goodTotalRatio`" pulumi-lang-java="`goodTotalRatio`">`good_total_ratio`</span> can be set.
  /// Structure is documented below.
  final SloRequestBasedSliDistributionCut? distributionCut;

  /// A means to compute a ratio of <span pulumi-lang-nodejs="`goodService`" pulumi-lang-dotnet="`GoodService`" pulumi-lang-go="`goodService`" pulumi-lang-python="`good_service`" pulumi-lang-yaml="`goodService`" pulumi-lang-java="`goodService`">`good_service`</span> to <span pulumi-lang-nodejs="`totalService`" pulumi-lang-dotnet="`TotalService`" pulumi-lang-go="`totalService`" pulumi-lang-python="`total_service`" pulumi-lang-yaml="`totalService`" pulumi-lang-java="`totalService`">`total_service`</span>.
  /// Defines computing this ratio with two TimeSeries [monitoring filters](https://cloud.google.com/monitoring/api/v3/filters)
  /// Must specify exactly two of good, bad, and total service filters.
  /// The relationship<span pulumi-lang-nodejs=" goodService " pulumi-lang-dotnet=" GoodService " pulumi-lang-go=" goodService " pulumi-lang-python=" good_service " pulumi-lang-yaml=" goodService " pulumi-lang-java=" goodService "> good_service </span>+<span pulumi-lang-nodejs=" badService " pulumi-lang-dotnet=" BadService " pulumi-lang-go=" badService " pulumi-lang-python=" bad_service " pulumi-lang-yaml=" badService " pulumi-lang-java=" badService "> bad_service </span>=<span pulumi-lang-nodejs=" totalService
  /// " pulumi-lang-dotnet=" TotalService
  /// " pulumi-lang-go=" totalService
  /// " pulumi-lang-python=" total_service
  /// " pulumi-lang-yaml=" totalService
  /// " pulumi-lang-java=" totalService
  /// "> total_service
  /// </span>will be assumed.
  /// Exactly one of <span pulumi-lang-nodejs="`distributionCut`" pulumi-lang-dotnet="`DistributionCut`" pulumi-lang-go="`distributionCut`" pulumi-lang-python="`distribution_cut`" pulumi-lang-yaml="`distributionCut`" pulumi-lang-java="`distributionCut`">`distribution_cut`</span> or <span pulumi-lang-nodejs="`goodTotalRatio`" pulumi-lang-dotnet="`GoodTotalRatio`" pulumi-lang-go="`goodTotalRatio`" pulumi-lang-python="`good_total_ratio`" pulumi-lang-yaml="`goodTotalRatio`" pulumi-lang-java="`goodTotalRatio`">`good_total_ratio`</span> can be set.
  /// Structure is documented below.
  final SloRequestBasedSliGoodTotalRatio? goodTotalRatio;

  SloRequestBasedSli({
    this.distributionCut,
    this.goodTotalRatio,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final distributionCutValue = distributionCut;
    if (distributionCutValue != null) {
      map['distributionCut'] = distributionCutValue.toMap();
    }
    final goodTotalRatioValue = goodTotalRatio;
    if (goodTotalRatioValue != null) {
      map['goodTotalRatio'] = goodTotalRatioValue.toMap();
    }
    return map;
  }

  factory SloRequestBasedSli.fromMap(Map<String, dynamic> map) {
    return SloRequestBasedSli(
      distributionCut: map['distributionCut'] == null
          ? null
          : SloRequestBasedSliDistributionCut.fromMap(
              (map['distributionCut'] as Map).cast<String, dynamic>()),
      goodTotalRatio: map['goodTotalRatio'] == null
          ? null
          : SloRequestBasedSliGoodTotalRatio.fromMap(
              (map['goodTotalRatio'] as Map).cast<String, dynamic>()),
    );
  }
}
