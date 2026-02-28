// ignore_for_file: unused_element, unnecessary_cast

class OriginRequestPolicyHeadersConfigHeaders {
  final List<String>? items;

  /// Creates a new [OriginRequestPolicyHeadersConfigHeaders].
  /// [items] Optional.
  OriginRequestPolicyHeadersConfigHeaders({
    this.items,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final itemsValue = items;
    if (itemsValue != null) {
      map['items'] = itemsValue;
    }
    return map;
  }

  factory OriginRequestPolicyHeadersConfigHeaders.fromMap(
      Map<String, dynamic> map) {
    return OriginRequestPolicyHeadersConfigHeaders(
      items:
          map['items'] == null ? null : (map['items'] as List).cast<String>(),
    );
  }
}
