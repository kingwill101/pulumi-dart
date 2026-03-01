/// Optional tier of this particular SKU. 'Standard' or 'Free'.
///
/// `Basic` is deprecated, use `Standard` instead.
enum WebPubSubSkuTier {
  valueFree("Free"),
  valueBasic("Basic"),
  valueStandard("Standard"),
  valuePremium("Premium");

  const WebPubSubSkuTier(this.value);
  final String value;

  static WebPubSubSkuTier fromValue(String value) {
    for (final item in WebPubSubSkuTier.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WebPubSubSkuTier value: $value');
  }
}

