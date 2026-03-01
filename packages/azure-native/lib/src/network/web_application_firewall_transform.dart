/// Transforms applied before matching.
enum WebApplicationFirewallTransform {
  valueUppercase("Uppercase"),
  valueLowercase("Lowercase"),
  valueTrim("Trim"),
  valueUrlDecode("UrlDecode"),
  valueUrlEncode("UrlEncode"),
  valueRemoveNulls("RemoveNulls"),
  valueHtmlEntityDecode("HtmlEntityDecode");

  const WebApplicationFirewallTransform(this.value);
  final String value;

  static WebApplicationFirewallTransform fromValue(String value) {
    for (final item in WebApplicationFirewallTransform.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WebApplicationFirewallTransform value: $value');
  }
}

