// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Source.
class SourceSecuritycenterV1Args {
  /// The canonical name of the finding source. It's either "organizations/{organization_id}/sources/{source_id}", "folders/{folder_id}/sources/{source_id}", or "projects/{project_number}/sources/{source_id}", depending on the closest CRM ancestor of the resource associated with the finding.
  final pulumi.Input<String>? canonicalName;

  /// The description of the source (max of 1024 characters). Example: "Web Security Scanner is a web security scanner for common vulnerabilities in App Engine applications. It can automatically scan and detect four common vulnerabilities, including cross-site-scripting (XSS), Flash injection, mixed content (HTTP in HTTPS), and outdated or insecure libraries."
  final pulumi.Input<String>? description;

  /// The source's display name. A source's display name must be unique amongst its siblings, for example, two sources with the same parent can't share the same display name. The display name must have a length between 1 and 64 characters (inclusive).
  final pulumi.Input<String>? displayName;

  /// The relative resource name of this source. See: https://cloud.google.com/apis/design/resource_names#relative_resource_name Example: "organizations/{organization_id}/sources/{source_id}"
  final pulumi.Input<String>? name;
  final pulumi.Input<String> organizationId;

  SourceSecuritycenterV1Args({
    this.canonicalName,
    this.description,
    this.displayName,
    this.name,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final canonicalNameValue = canonicalName;
    if (canonicalNameValue != null) {
      map['canonicalName'] = canonicalNameValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['organizationId'] = organizationId;
    return map;
  }

  factory SourceSecuritycenterV1Args.fromMap(Map<String, dynamic> map) {
    return SourceSecuritycenterV1Args(
      canonicalName: pulumi.Input.asOptionalInput<String>(map['canonicalName']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
    );
  }
}
