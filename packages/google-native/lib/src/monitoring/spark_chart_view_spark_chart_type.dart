/// Required. The type of sparkchart to show in this chartView.
enum SparkChartViewSparkChartType {
  sparkChartTypeUnspecified("SPARK_CHART_TYPE_UNSPECIFIED"),
  sparkLine("SPARK_LINE"),
  sparkBar("SPARK_BAR");

  const SparkChartViewSparkChartType(this.value);
  final String value;

  static SparkChartViewSparkChartType fromValue(String value) {
    for (final item in SparkChartViewSparkChartType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SparkChartViewSparkChartType value: $value');
  }
}

