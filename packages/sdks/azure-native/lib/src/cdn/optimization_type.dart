/// Specifies what scenario the customer wants this CDN endpoint to optimize for, e.g. Download, Media services. With this information, CDN can apply scenario driven optimization.
enum OptimizationType {
  generalWebDelivery("GeneralWebDelivery"),
  generalMediaStreaming("GeneralMediaStreaming"),
  videoOnDemandMediaStreaming("VideoOnDemandMediaStreaming"),
  largeFileDownload("LargeFileDownload"),
  dynamicSiteAcceleration("DynamicSiteAcceleration");

  const OptimizationType(this.wireValue);
  final String wireValue;

  static OptimizationType fromValue(String value) {
    for (final item in OptimizationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OptimizationType value: $value');
  }
}

