// ignore_for_file: unused_element, unnecessary_cast

import 'sql_managed_instance_k8s_spec.dart';

/// The raw kubernetes information.
class SqlManagedInstanceK8sRaw {
  /// The kubernetes spec information.
  final SqlManagedInstanceK8sSpec? spec;

  /// Creates a new [SqlManagedInstanceK8sRaw].
  /// [spec] The kubernetes spec information.
  SqlManagedInstanceK8sRaw({
    this.spec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'spec': ?spec == null ? null : spec!.toMap(),
    };
  }

  factory SqlManagedInstanceK8sRaw.fromMap(Map<String, dynamic> map) {
    return SqlManagedInstanceK8sRaw(
      spec: map['spec'] == null ? null : SqlManagedInstanceK8sSpec.fromMap((map['spec'] as Map).cast<String, dynamic>()),
    );
  }
}

