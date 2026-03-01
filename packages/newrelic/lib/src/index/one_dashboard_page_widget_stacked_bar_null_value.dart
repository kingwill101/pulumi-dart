// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'one_dashboard_page_widget_stacked_bar_null_value_series_override.dart';

class OneDashboardPageWidgetStackedBarNullValue {
  /// Choose an option in displaying null values. Accepted values are `default`, `remove`, `preserve`, or `zero`.
  final String? nullValue;
  /// (Optional) A Nested block which will take two string attributes `color` and `series_name`. This nested block is used to customize colors of individual.
  final List<OneDashboardPageWidgetStackedBarNullValueSeriesOverride>? seriesOverrides;

  /// Creates a new [OneDashboardPageWidgetStackedBarNullValue].
  /// [nullValue] Choose an option in displaying null values. Accepted values are `default`, `remove`, `preserve`, or `zero`.
  /// [seriesOverrides] (Optional) A Nested block which will take two string attributes `color` and `series_name`. This nested block is used to customize colors of individual.
  OneDashboardPageWidgetStackedBarNullValue({
    this.nullValue,
    this.seriesOverrides,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nullValue': ?nullValue,
      'seriesOverrides': ?seriesOverrides == null ? null : pulumi.Input.encodeList<OneDashboardPageWidgetStackedBarNullValueSeriesOverride, Map<String, dynamic>>(seriesOverrides!, (value) => value.toMap()),
    };
  }

  factory OneDashboardPageWidgetStackedBarNullValue.fromMap(Map<String, dynamic> map) {
    return OneDashboardPageWidgetStackedBarNullValue(
      nullValue: map['nullValue'] == null ? null : map['nullValue'] as String,
      seriesOverrides: map['seriesOverrides'] == null ? null : pulumi.Input.decodeList<OneDashboardPageWidgetStackedBarNullValueSeriesOverride>(map['seriesOverrides'], (value) => OneDashboardPageWidgetStackedBarNullValueSeriesOverride.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

