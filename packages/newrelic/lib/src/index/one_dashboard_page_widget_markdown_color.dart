// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'one_dashboard_page_widget_markdown_color_series_override.dart';

class OneDashboardPageWidgetMarkdownColor {
  /// (Optional) Choose a color to customize the color of your charts per series in area, bar, line, pie, and stacked bar charts. Accepted values are RGB, HEX, or HSL code.
  final String? color;
  /// (Optional) A Nested block which will take two string attributes `color` and `series_name`. This nested block is used to customize colors of individual.
  final List<OneDashboardPageWidgetMarkdownColorSeriesOverride>? seriesOverrides;

  /// Creates a new [OneDashboardPageWidgetMarkdownColor].
  /// [color] (Optional) Choose a color to customize the color of your charts per series in area, bar, line, pie, and stacked bar charts. Accepted values are RGB, HEX, or HSL code.
  /// [seriesOverrides] (Optional) A Nested block which will take two string attributes `color` and `series_name`. This nested block is used to customize colors of individual.
  OneDashboardPageWidgetMarkdownColor({
    this.color,
    this.seriesOverrides,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'color': ?color,
      'seriesOverrides': ?seriesOverrides == null ? null : pulumi.Input.encodeList<OneDashboardPageWidgetMarkdownColorSeriesOverride, Map<String, dynamic>>(seriesOverrides!, (value) => value.toMap()),
    };
  }

  factory OneDashboardPageWidgetMarkdownColor.fromMap(Map<String, dynamic> map) {
    return OneDashboardPageWidgetMarkdownColor(
      color: map['color'] == null ? null : map['color'] as String,
      seriesOverrides: map['seriesOverrides'] == null ? null : pulumi.Input.decodeList<OneDashboardPageWidgetMarkdownColorSeriesOverride>(map['seriesOverrides'], (value) => OneDashboardPageWidgetMarkdownColorSeriesOverride.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

