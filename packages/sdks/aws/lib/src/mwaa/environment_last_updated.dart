// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_last_updated_error.dart';

class EnvironmentLastUpdated {
  /// The Created At date of the MWAA Environment
  final pulumi.Input<String>? createdAt;
  final pulumi.Input<List<EnvironmentLastUpdatedError>>? errors;
  /// The status of the Amazon MWAA Environment
  final pulumi.Input<String>? status;

  /// Creates a new [EnvironmentLastUpdated].
  /// [createdAt] The Created At date of the MWAA Environment
  /// [errors] Optional.
  /// [status] The status of the Amazon MWAA Environment
  EnvironmentLastUpdated({
    this.createdAt,
    this.errors,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'errors': ?pulumi.Input.mapOptionalInputValue<List<EnvironmentLastUpdatedError>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<EnvironmentLastUpdatedError, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': ?status,
    };
  }

  factory EnvironmentLastUpdated.fromMap(Map<String, dynamic> map) {
    return EnvironmentLastUpdated(
      createdAt: map['createdAt'] == null ? null : (map['createdAt'] as String).input(),
      errors: map['errors'] == null ? null : (pulumi.Input.decodeList<EnvironmentLastUpdatedError>(map['errors'], (value) => EnvironmentLastUpdatedError.fromMap((value as Map).cast<String, dynamic>()))).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

