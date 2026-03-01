// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'one_dashboard_page_widget_stacked_bar_unit_series_override.dart';

class OneDashboardPageWidgetStackedBarUnit {
  /// (Optional) A Nested block which will take two string attributes `color` and `series_name`. This nested block is used to customize colors of individual.
  final List<OneDashboardPageWidgetStackedBarUnitSeriesOverride>? seriesOverrides;
  /// (Optional) Choose a unit to customize the unit on your Y axis and in each of your series.
  final String? unit;

  /// Creates a new [OneDashboardPageWidgetStackedBarUnit].
  /// [seriesOverrides] (Optional) A Nested block which will take two string attributes `color` and `series_name`. This nested block is used to customize colors of individual.
  /// [unit] (Optional) Choose a unit to customize the unit on your Y axis and in each of your series.
  OneDashboardPageWidgetStackedBarUnit({
    this.seriesOverrides,
    this.unit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'seriesOverrides': ?seriesOverrides == null ? null : pulumi.Input.encodeList<OneDashboardPageWidgetStackedBarUnitSeriesOverride, Map<String, dynamic>>(seriesOverrides!, (value) => value.toMap()),
      'unit': ?unit,
    };
  }

  factory OneDashboardPageWidgetStackedBarUnit.fromMap(Map<String, dynamic> map) {
    return OneDashboardPageWidgetStackedBarUnit(
      seriesOverrides: map['seriesOverrides'] == null ? null : pulumi.Input.decodeList<OneDashboardPageWidgetStackedBarUnitSeriesOverride>(map['seriesOverrides'], (value) => OneDashboardPageWidgetStackedBarUnitSeriesOverride.fromMap((value as Map).cast<String, dynamic>())),
      unit: map['unit'] == null ? null : map['unit'] as String,
    );
  }
}

