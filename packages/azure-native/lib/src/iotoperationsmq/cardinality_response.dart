// ignore_for_file: unused_element, unnecessary_cast

import 'backend_chain_response.dart';
import 'frontend_response.dart';

/// Cardinality properties
class CardinalityResponse {
  /// The backend broker desired properties
  final BackendChainResponse backendChain;
  /// The frontend broker desired properties
  final FrontendResponse frontend;

  /// Creates a new [CardinalityResponse].
  /// [backendChain] The backend broker desired properties
  /// [frontend] The frontend broker desired properties
  CardinalityResponse({
    required this.backendChain,
    required this.frontend,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendChain': backendChain.toMap(),
      'frontend': frontend.toMap(),
    };
  }

  factory CardinalityResponse.fromMap(Map<String, dynamic> map) {
    return CardinalityResponse(
      backendChain: BackendChainResponse.fromMap((map['backendChain'] as Map).cast<String, dynamic>()),
      frontend: FrontendResponse.fromMap((map['frontend'] as Map).cast<String, dynamic>()),
    );
  }
}

