// ignore_for_file: unused_element, unnecessary_cast


/// SeccompProfile defines a pod/container's seccomp profile settings. Only one profile source may be set.
class SeccompProfile {
  /// localhostProfile indicates a profile defined in a file on the node should be used. The profile must be preconfigured on the node to work. Must be a descending path, relative to the kubelet's configured seccomp profile location. Must be set if type is "Localhost". Must NOT be set for any other type.
  final String? localhostProfile;
  /// type indicates which kind of seccomp profile will be applied. Valid options are:
  ///
  /// Localhost - a profile defined in a file on the node should be used. RuntimeDefault - the container runtime default profile should be used. Unconfined - no profile should be applied.
  final String type;

  /// Creates a new [SeccompProfile].
  /// [localhostProfile] localhostProfile indicates a profile defined in a file on the node should be used. The profile must be preconfigured on the node to work. Must be a descending path, relative to the kubelet's configured seccomp profile location. Must be set if type is "Localhost". Must NOT be set for any other type.
  /// [type] type indicates which kind of seccomp profile will be applied. Valid options are:
  SeccompProfile({
    this.localhostProfile,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localhostProfile': ?localhostProfile,
      'type': type,
    };
  }

  factory SeccompProfile.fromMap(Map<String, dynamic> map) {
    return SeccompProfile(
      localhostProfile: map['localhostProfile'] == null ? null : map['localhostProfile'] as String,
      type: map['type'] as String,
    );
  }
}

