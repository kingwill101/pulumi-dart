// ignore_for_file: unused_element, unnecessary_cast

/// Google API Policy Annotation This message defines a simple API policy annotation that can be used to annotate API request and response message fields with applicable policies. One field may have multiple applicable policies that must all be satisfied before a request can be processed. This policy annotation is used to generate the overall policy that will be used for automatic runtime policy enforcement and documentation generation.
class FieldPolicy {
  /// Specifies the required permission(s) for the resource referred to by the field. It requires the field contains a valid resource reference, and the request must pass the permission checks to proceed. For example, "resourcemanager.projects.get".
  final String? resourcePermission;

  /// Specifies the resource type for the resource referred to by the field.
  final String? resourceType;

  /// Selects one or more request or response message fields to apply this `FieldPolicy`. When a `FieldPolicy` is used in proto annotation, the selector must be left as empty. The service config generator will automatically fill the correct value. When a `FieldPolicy` is used in service config, the selector must be a comma-separated string with valid request or response field paths, such as "foo.bar" or "foo.bar,foo.baz".
  final String? selector;

  FieldPolicy({
    this.resourcePermission,
    this.resourceType,
    this.selector,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final resourcePermissionValue = resourcePermission;
    if (resourcePermissionValue != null) {
      map['resourcePermission'] = resourcePermissionValue;
    }
    final resourceTypeValue = resourceType;
    if (resourceTypeValue != null) {
      map['resourceType'] = resourceTypeValue;
    }
    final selectorValue = selector;
    if (selectorValue != null) {
      map['selector'] = selectorValue;
    }
    return map;
  }

  factory FieldPolicy.fromMap(Map<String, dynamic> map) {
    return FieldPolicy(
      resourcePermission: map['resourcePermission'] == null
          ? null
          : map['resourcePermission'] as String,
      resourceType:
          map['resourceType'] == null ? null : map['resourceType'] as String,
      selector: map['selector'] == null ? null : map['selector'] as String,
    );
  }
}
