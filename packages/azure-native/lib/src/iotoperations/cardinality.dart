// ignore_for_file: unused_element, unnecessary_cast

import 'backend_chain.dart';
import 'frontend.dart';

/// Cardinality properties
class Cardinality {
  /// The backend broker desired properties
  final BackendChain backendChain;
  /// The frontend desired properties
  final Frontend frontend;

  /// Creates a new [Cardinality].
  /// [backendChain] The backend broker desired properties
  /// [frontend] The frontend desired properties
  Cardinality({
    required this.backendChain,
    required this.frontend,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendChain': backendChain.toMap(),
      'frontend': frontend.toMap(),
    };
  }

  factory Cardinality.fromMap(Map<String, dynamic> map) {
    return Cardinality(
      backendChain: BackendChain.fromMap((map['backendChain'] as Map).cast<String, dynamic>()),
      frontend: Frontend.fromMap((map['frontend'] as Map).cast<String, dynamic>()),
    );
  }
}

