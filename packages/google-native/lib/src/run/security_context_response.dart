// ignore_for_file: unused_element, unnecessary_cast


/// Not supported by Cloud Run. SecurityContext holds security configuration that will be applied to a container. Some fields are present in both SecurityContext and PodSecurityContext. When both are set, the values in SecurityContext take precedence.
class SecurityContextResponse {
  /// The UID to run the entrypoint of the container process. Defaults to user specified in image metadata if unspecified. May also be set in PodSecurityContext. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
  final int runAsUser;

  /// Creates a new [SecurityContextResponse].
  /// [runAsUser] The UID to run the entrypoint of the container process. Defaults to user specified in image metadata if unspecified. May also be set in PodSecurityContext. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
  SecurityContextResponse({
    required this.runAsUser,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'runAsUser': runAsUser,
    };
  }

  factory SecurityContextResponse.fromMap(Map<String, dynamic> map) {
    return SecurityContextResponse(
      runAsUser: map['runAsUser'] as int,
    );
  }
}

