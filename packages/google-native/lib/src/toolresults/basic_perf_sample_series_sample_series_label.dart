enum BasicPerfSampleSeriesSampleSeriesLabel {
  sampleSeriesTypeUnspecified("sampleSeriesTypeUnspecified"),
  memoryRssPrivate("memoryRssPrivate"),
  memoryRssShared("memoryRssShared"),
  memoryRssTotal("memoryRssTotal"),
  memoryTotal("memoryTotal"),
  cpuUser("cpuUser"),
  cpuKernel("cpuKernel"),
  cpuTotal("cpuTotal"),
  ntBytesTransferred("ntBytesTransferred"),
  ntBytesReceived("ntBytesReceived"),
  networkSent("networkSent"),
  networkReceived("networkReceived"),
  graphicsFrameRate("graphicsFrameRate");

  const BasicPerfSampleSeriesSampleSeriesLabel(this.value);
  final String value;

  static BasicPerfSampleSeriesSampleSeriesLabel fromValue(String value) {
    for (final item in BasicPerfSampleSeriesSampleSeriesLabel.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown BasicPerfSampleSeriesSampleSeriesLabel value: $value',
    );
  }
}
