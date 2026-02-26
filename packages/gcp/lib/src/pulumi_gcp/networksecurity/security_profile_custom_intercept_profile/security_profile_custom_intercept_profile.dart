// ignore_for_file: unused_element, unnecessary_cast

class SecurityProfileCustomInterceptProfile {
  /// The Intercept Endpoint Group to which matching traffic should be intercepted.
  /// Format: projects/{project_id}/locations/global/interceptEndpointGroups/{endpoint_group_id}
  final String interceptEndpointGroup;

  SecurityProfileCustomInterceptProfile({
    required this.interceptEndpointGroup,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['interceptEndpointGroup'] = interceptEndpointGroup;
    return map;
  }

  factory SecurityProfileCustomInterceptProfile.fromMap(
      Map<String, dynamic> map) {
    return SecurityProfileCustomInterceptProfile(
      interceptEndpointGroup: map['interceptEndpointGroup'] as String,
    );
  }
}
