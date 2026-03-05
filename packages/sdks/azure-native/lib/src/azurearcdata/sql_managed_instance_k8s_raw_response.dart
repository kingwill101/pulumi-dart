// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_managed_instance_k8s_spec_response.dart';

/// The raw kubernetes information.
class SqlManagedInstanceK8sRawResponse {
  /// The kubernetes spec information.
  final pulumi.Input<SqlManagedInstanceK8sSpecResponse>? spec;

  /// Creates a new [SqlManagedInstanceK8sRawResponse].
  /// [spec] The kubernetes spec information.
  SqlManagedInstanceK8sRawResponse({
    this.spec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'spec': ?pulumi.Input.mapOptionalInputValue<SqlManagedInstanceK8sSpecResponse, Map<String, dynamic>>(spec, (value) => value.toMap()),
    };
  }

  factory SqlManagedInstanceK8sRawResponse.fromMap(Map<String, dynamic> map) {
    return SqlManagedInstanceK8sRawResponse(
      spec: (() { final guardedValue = map['spec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SqlManagedInstanceK8sSpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

