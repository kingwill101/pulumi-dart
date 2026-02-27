// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'namespaced_name_response.dart';

/// A list of namespaced Kubernetes resources.
class NamespacedNamesResponse {
  /// Optional. A list of namespaced Kubernetes resources.
  final List<NamespacedNameResponse> namespacedNames;

  NamespacedNamesResponse({
    required this.namespacedNames,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['namespacedNames'] =
        Input.encodeList<NamespacedNameResponse, Map<String, dynamic>>(
            namespacedNames, (value) => value.toMap());
    return map;
  }

  factory NamespacedNamesResponse.fromMap(Map<String, dynamic> map) {
    return NamespacedNamesResponse(
      namespacedNames: Input.decodeList<NamespacedNameResponse>(
          map['namespacedNames'],
          (value) => NamespacedNameResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
