// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'report_summary_histogram_chart_data_bucket_response2.dart';

/// A Histogram Chart shows a distribution of values into buckets, showing a count of values which fall into a bucket.
class ReportSummaryHistogramChartDataResponse2 {
  /// Buckets in the histogram. There will be `n+1` buckets matching `n` lower bounds in the request. The first bucket will be from -infinity to the first bound. Subsequent buckets will be between one bound and the next. The final bucket will be from the final bound to infinity.
  final List<ReportSummaryHistogramChartDataBucketResponse2> buckets;

  ReportSummaryHistogramChartDataResponse2({
    required this.buckets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['buckets'] = Input.encodeList<
        ReportSummaryHistogramChartDataBucketResponse2,
        Map<String, dynamic>>(buckets, (value) => value.toMap());
    return map;
  }

  factory ReportSummaryHistogramChartDataResponse2.fromMap(
      Map<String, dynamic> map) {
    return ReportSummaryHistogramChartDataResponse2(
      buckets: Input.decodeList<ReportSummaryHistogramChartDataBucketResponse2>(
          map['buckets'],
          (value) => ReportSummaryHistogramChartDataBucketResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
