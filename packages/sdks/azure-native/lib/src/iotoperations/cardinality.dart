// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_chain.dart';
import 'frontend.dart';

/// Cardinality properties
class Cardinality {
  /// The backend broker desired properties
  final pulumi.Input<BackendChain> backendChain;
  /// The frontend desired properties
  final pulumi.Input<Frontend> frontend;

  /// Creates a new [Cardinality].
  /// [backendChain] The backend broker desired properties
  /// [frontend] The frontend desired properties
  const Cardinality({
    required this.backendChain,
    required this.frontend,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendChain': pulumi.Input.mapInputValue<BackendChain, Map<String, dynamic>>(backendChain, (value) => value.toMap()),
      'frontend': pulumi.Input.mapInputValue<Frontend, Map<String, dynamic>>(frontend, (value) => value.toMap()),
    };
  }

  factory Cardinality.fromMap(Map<String, dynamic> map) {
    return Cardinality(
      backendChain: pulumi.Input.fromValue(BackendChain.fromMap((map['backendChain']! as Map).cast<String, dynamic>())),
      frontend: pulumi.Input.fromValue(Frontend.fromMap((map['frontend']! as Map).cast<String, dynamic>())),
    );
  }
}
