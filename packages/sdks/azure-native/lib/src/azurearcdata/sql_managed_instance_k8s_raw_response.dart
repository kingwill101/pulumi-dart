// ignore_for_file: unused_element, unnecessary_cast

import 'sql_managed_instance_k8s_spec_response.dart';

/// The raw kubernetes information.
class SqlManagedInstanceK8sRawResponse {
  /// The kubernetes spec information.
  final SqlManagedInstanceK8sSpecResponse? spec;

  /// Creates a new [SqlManagedInstanceK8sRawResponse].
  /// [spec] The kubernetes spec information.
  SqlManagedInstanceK8sRawResponse({
    this.spec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'spec': ?spec == null ? null : spec!.toMap(),
    };
  }

  factory SqlManagedInstanceK8sRawResponse.fromMap(Map<String, dynamic> map) {
    return SqlManagedInstanceK8sRawResponse(
      spec: map['spec'] == null ? null : SqlManagedInstanceK8sSpecResponse.fromMap((map['spec'] as Map).cast<String, dynamic>()),
    );
  }
}

