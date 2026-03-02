// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// This class represents additional info which Resource Providers pass when an error occurs.
class AdditionalErrorInfoResponse {
  /// Additional information of the type of error.
  final pulumi.Input<dynamic>? info;
  /// Type of error (e.g. CustomerIntervention, PolicyViolation, SecurityViolation).
  final pulumi.Input<String>? type;

  /// Creates a new [AdditionalErrorInfoResponse].
  /// [info] Additional information of the type of error.
  /// [type] Type of error (e.g. CustomerIntervention, PolicyViolation, SecurityViolation).
  AdditionalErrorInfoResponse({
    this.info,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'info': ?info,
      'type': ?type,
    };
  }

  factory AdditionalErrorInfoResponse.fromMap(Map<String, dynamic> map) {
    return AdditionalErrorInfoResponse(
      info: map['info'] == null ? null : (map['info']).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

