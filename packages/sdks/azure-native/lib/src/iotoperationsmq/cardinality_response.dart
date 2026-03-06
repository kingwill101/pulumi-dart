// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_chain_response.dart';
import 'frontend_response.dart';

/// Cardinality properties
class CardinalityResponse {
  /// The backend broker desired properties
  final pulumi.Input<BackendChainResponse> backendChain;
  /// The frontend broker desired properties
  final pulumi.Input<FrontendResponse> frontend;

  /// Creates a new [CardinalityResponse].
  /// [backendChain] The backend broker desired properties
  /// [frontend] The frontend broker desired properties
  const CardinalityResponse({
    required this.backendChain,
    required this.frontend,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendChain': pulumi.Input.mapInputValue<BackendChainResponse, Map<String, dynamic>>(backendChain, (value) => value.toMap()),
      'frontend': pulumi.Input.mapInputValue<FrontendResponse, Map<String, dynamic>>(frontend, (value) => value.toMap()),
    };
  }

  factory CardinalityResponse.fromMap(Map<String, dynamic> map) {
    return CardinalityResponse(
      backendChain: pulumi.Input.fromValue(BackendChainResponse.fromMap((map['backendChain']! as Map).cast<String, dynamic>())),
      frontend: pulumi.Input.fromValue(FrontendResponse.fromMap((map['frontend']! as Map).cast<String, dynamic>())),
    );
  }
}

