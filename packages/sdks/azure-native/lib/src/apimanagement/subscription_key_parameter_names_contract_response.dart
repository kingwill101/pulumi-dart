// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Subscription key parameter names details.
class SubscriptionKeyParameterNamesContractResponse {
  /// Subscription key header name.
  final pulumi.Input<String>? header;
  /// Subscription key query string parameter name.
  final pulumi.Input<String>? query;

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
      header: map['header'] == null ? null : (map['header'] as String).input(),
      query: map['query'] == null ? null : (map['query'] as String).input(),
    );
  }
}

