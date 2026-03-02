// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VolumeClaimResourceRequirements properties
class VolumeClaimResourceRequirements {
  /// Limits describes the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
  final pulumi.Input<Map<String, String>>? limits;
  /// Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
  final pulumi.Input<Map<String, String>>? requests;

  /// Creates a new [VolumeClaimResourceRequirements].
  /// [limits] Limits describes the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
  /// [requests] Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
  VolumeClaimResourceRequirements({
    this.limits,
    this.requests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'limits': ?limits,
      'requests': ?requests,
    };
  }

  factory VolumeClaimResourceRequirements.fromMap(Map<String, dynamic> map) {
    return VolumeClaimResourceRequirements(
      limits: map['limits'] == null ? null : ((map['limits']! as Map).cast<String, String>()).input(),
      requests: map['requests'] == null ? null : ((map['requests']! as Map).cast<String, String>()).input(),
    );
  }
}

