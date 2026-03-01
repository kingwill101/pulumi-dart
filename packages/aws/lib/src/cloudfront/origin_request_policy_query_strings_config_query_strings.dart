// ignore_for_file: unused_element, unnecessary_cast


class OriginRequestPolicyQueryStringsConfigQueryStrings {
  final List<String>? items;

  /// Creates a new [OriginRequestPolicyQueryStringsConfigQueryStrings].
  /// [items] Optional.
  OriginRequestPolicyQueryStringsConfigQueryStrings({
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': ?items,
    };
  }

  factory OriginRequestPolicyQueryStringsConfigQueryStrings.fromMap(Map<String, dynamic> map) {
    return OriginRequestPolicyQueryStringsConfigQueryStrings(
      items: map['items'] == null ? null : (map['items'] as List).cast<String>(),
    );
  }
}

