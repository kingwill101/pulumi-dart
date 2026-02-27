// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Service.
class ServiceServicedirectoryV1beta1Args {
  final pulumi.Input<String>? location;

  /// Optional. Metadata for the service. This data can be consumed by service clients. Restrictions: * The entire metadata dictionary may contain up to 2000 characters, spread accoss all key-value pairs. Metadata that goes beyond this limit are rejected * Valid metadata keys have two segments: an optional prefix and name, separated by a slash (/). The name segment is required and must be 63 characters or less, beginning and ending with an alphanumeric character ([a-z0-9A-Z]) with dashes (-), underscores (_), dots (.), and alphanumerics between. The prefix is optional. If specified, the prefix must be a DNS subdomain: a series of DNS labels separated by dots (.), not longer than 253 characters in total, followed by a slash (/). Metadata that fails to meet these requirements are rejected Note: This field is equivalent to the `annotations` field in the v1 API. They have the same syntax and read/write to the same location in Service Directory.
  final pulumi.Input<Map<String, String>>? metadata;

  /// Immutable. The resource name for the service in the format `projects/*/locations/*/namespaces/*/services/*`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String> namespaceId;
  final pulumi.Input<String>? project;

  /// Required. The Resource ID must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String> serviceId;

  ServiceServicedirectoryV1beta1Args({
    this.location,
    this.metadata,
    this.name,
    required this.namespaceId,
    this.project,
    required this.serviceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final metadataValue = metadata;
    if (metadataValue != null) {
      map['metadata'] = metadataValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['namespaceId'] = namespaceId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['serviceId'] = serviceId;
    return map;
  }

  factory ServiceServicedirectoryV1beta1Args.fromMap(Map<String, dynamic> map) {
    return ServiceServicedirectoryV1beta1Args(
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      metadata:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['metadata']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      namespaceId: pulumi.Input.asInput<String>(map['namespaceId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      serviceId: pulumi.Input.asInput<String>(map['serviceId']),
    );
  }
}
