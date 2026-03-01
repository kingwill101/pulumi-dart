// ignore_for_file: unused_element, unnecessary_cast


/// Subscription key parameter names details.
class SubscriptionKeyParameterNamesContractResponse {
  /// Subscription key header name.
  final String? header;
  /// Subscription key query string parameter name.
  final String? query;

  /// Creates a new [SubscriptionKeyParameterNamesContractResponse].
  /// [header] Subscription key header name.
  /// [query] Subscription key query string parameter name.
  SubscriptionKeyParameterNamesContractResponse({
    this.header,
    this.query,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'header': ?header,
      'query': ?query,
    };
  }

  factory SubscriptionKeyParameterNamesContractResponse.fromMap(Map<String, dynamic> map) {
    return SubscriptionKeyParameterNamesContractResponse(
      header: map['header'] == null ? null : map['header'] as String,
      query: map['query'] == null ? null : map['query'] as String,
    );
  }
}

