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
  const SubscriptionKeyParameterNamesContractResponse({
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
      header: (() { final guardedValue = map['header']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      query: (() { final guardedValue = map['query']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
