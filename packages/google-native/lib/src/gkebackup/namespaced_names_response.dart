// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespaced_name_response.dart';

/// A list of namespaced Kubernetes resources.
class NamespacedNamesResponse {
  /// Optional. A list of namespaced Kubernetes resources.
  final List<NamespacedNameResponse> namespacedNames;

  /// Creates a new [NamespacedNamesResponse].
  /// [namespacedNames] Optional. A list of namespaced Kubernetes resources.
  NamespacedNamesResponse({
    required this.namespacedNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespacedNames': pulumi.Input.encodeList<NamespacedNameResponse, Map<String, dynamic>>(namespacedNames, (value) => value.toMap()),
    };
  }

  factory NamespacedNamesResponse.fromMap(Map<String, dynamic> map) {
    return NamespacedNamesResponse(
      namespacedNames: pulumi.Input.decodeList<NamespacedNameResponse>(map['namespacedNames'], (value) => NamespacedNameResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

