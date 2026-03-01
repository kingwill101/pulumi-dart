// ignore_for_file: unused_element, unnecessary_cast


class OneDashboardPageWidgetStackedBarUnitSeriesOverride {
  /// Series name
  final String? seriesName;
  /// (Optional) Choose a unit to customize the unit on your Y axis and in each of your series.
  final String? unit;

  /// Creates a new [OneDashboardPageWidgetStackedBarUnitSeriesOverride].
  /// [seriesName] Series name
  /// [unit] (Optional) Choose a unit to customize the unit on your Y axis and in each of your series.
  OneDashboardPageWidgetStackedBarUnitSeriesOverride({
    this.seriesName,
    this.unit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'seriesName': ?seriesName,
      'unit': ?unit,
    };
  }

  factory OneDashboardPageWidgetStackedBarUnitSeriesOverride.fromMap(Map<String, dynamic> map) {
    return OneDashboardPageWidgetStackedBarUnitSeriesOverride(
      seriesName: map['seriesName'] == null ? null : map['seriesName'] as String,
      unit: map['unit'] == null ? null : map['unit'] as String,
    );
  }
}

