// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getSource.
class GetSourceSecuritycenterV1Result {
  /// The canonical name of the finding source. It's either "organizations/{organization_id}/sources/{source_id}", "folders/{folder_id}/sources/{source_id}", or "projects/{project_number}/sources/{source_id}", depending on the closest CRM ancestor of the resource associated with the finding.
  final String canonicalName;

  /// The description of the source (max of 1024 characters). Example: "Web Security Scanner is a web security scanner for common vulnerabilities in App Engine applications. It can automatically scan and detect four common vulnerabilities, including cross-site-scripting (XSS), Flash injection, mixed content (HTTP in HTTPS), and outdated or insecure libraries."
  final String description;

  /// The source's display name. A source's display name must be unique amongst its siblings, for example, two sources with the same parent can't share the same display name. The display name must have a length between 1 and 64 characters (inclusive).
  final String displayName;

  /// The relative resource name of this source. See: https://cloud.google.com/apis/design/resource_names#relative_resource_name Example: "organizations/{organization_id}/sources/{source_id}"
  final String name;

  GetSourceSecuritycenterV1Result({
    required this.canonicalName,
    required this.description,
    required this.displayName,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['canonicalName'] = canonicalName;
    map['description'] = description;
    map['displayName'] = displayName;
    map['name'] = name;
    return map;
  }

  factory GetSourceSecuritycenterV1Result.fromMap(Map<String, dynamic> map) {
    return GetSourceSecuritycenterV1Result(
      canonicalName: map['canonicalName'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      name: map['name'] as String,
    );
  }
}
