// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespaced_name.dart';

/// A list of namespaced Kubernetes resources.
class NamespacedNames {
  /// Optional. A list of namespaced Kubernetes resources.
  final List<NamespacedName>? namespacedNames;

  /// Creates a new [NamespacedNames].
  /// [namespacedNames] Optional. A list of namespaced Kubernetes resources.
  NamespacedNames({
    this.namespacedNames,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final namespacedNamesValue = namespacedNames;
    if (namespacedNamesValue != null) {
      map['namespacedNames'] =
          pulumi.Input.encodeList<NamespacedName, Map<String, dynamic>>(
              namespacedNamesValue, (value) => value.toMap());
    }
    return map;
  }

  factory NamespacedNames.fromMap(Map<String, dynamic> map) {
    return NamespacedNames(
      namespacedNames: map['namespacedNames'] == null
          ? null
          : pulumi.Input.decodeList<NamespacedName>(
              map['namespacedNames'],
              (value) => NamespacedName.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
