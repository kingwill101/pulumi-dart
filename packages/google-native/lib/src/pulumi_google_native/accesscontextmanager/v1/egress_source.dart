// ignore_for_file: unused_element, unnecessary_cast

/// The source that EgressPolicy authorizes access from inside the ServicePerimeter to somewhere outside the ServicePerimeter boundaries.
class EgressSource {
  /// An AccessLevel resource name that allows protected resources inside the ServicePerimeters to access outside the ServicePerimeter boundaries. AccessLevels listed must be in the same policy as this ServicePerimeter. Referencing a nonexistent AccessLevel will cause an error. If an AccessLevel name is not specified, only resources within the perimeter can be accessed through Google Cloud calls with request origins within the perimeter. Example: `accessPolicies/MY_POLICY/accessLevels/MY_LEVEL`. If a single `*` is specified for `access_level`, then all EgressSources will be allowed.
  final String? accessLevel;

  EgressSource({
    this.accessLevel,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessLevelValue = accessLevel;
    if (accessLevelValue != null) {
      map['accessLevel'] = accessLevelValue;
    }
    return map;
  }

  factory EgressSource.fromMap(Map<String, dynamic> map) {
    return EgressSource(
      accessLevel:
          map['accessLevel'] == null ? null : map['accessLevel'] as String,
    );
  }
}
