// ignore_for_file: unused_element, unnecessary_cast


class OriginRequestPolicyHeadersConfigHeaders {
  final List<String>? items;

  /// Creates a new [OriginRequestPolicyHeadersConfigHeaders].
  /// [items] Optional.
  OriginRequestPolicyHeadersConfigHeaders({
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': ?items,
    };
  }

  factory OriginRequestPolicyHeadersConfigHeaders.fromMap(Map<String, dynamic> map) {
    return OriginRequestPolicyHeadersConfigHeaders(
      items: map['items'] == null ? null : (map['items'] as List).cast<String>(),
    );
  }
}

