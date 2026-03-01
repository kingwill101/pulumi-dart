// ignore_for_file: unused_element, unnecessary_cast


/// VolumeClaimResourceRequirements properties
class VolumeClaimResourceRequirementsResponse {
  /// Limits describes the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
  final Map<String, String>? limits;
  /// Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
  final Map<String, String>? requests;

  /// Creates a new [VolumeClaimResourceRequirementsResponse].
  /// [limits] Limits describes the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
  /// [requests] Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
  VolumeClaimResourceRequirementsResponse({
    this.limits,
    this.requests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'limits': ?limits,
      'requests': ?requests,
    };
  }

  factory VolumeClaimResourceRequirementsResponse.fromMap(Map<String, dynamic> map) {
    return VolumeClaimResourceRequirementsResponse(
      limits: map['limits'] == null ? null : (map['limits'] as Map).cast<String, String>(),
      requests: map['requests'] == null ? null : (map['requests'] as Map).cast<String, String>(),
    );
  }
}

