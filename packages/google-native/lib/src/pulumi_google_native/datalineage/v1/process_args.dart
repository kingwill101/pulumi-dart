// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_datacatalog_lineage_v1_origin.dart';

/// The set of arguments for Process.
class ProcessArgs {
  /// Optional. The attributes of the process. Should only be used for the purpose of non-semantic management (classifying, describing or labeling the process). Up to 100 attributes are allowed.
  final Input<Map<String, String>>? attributes;

  /// Optional. A human-readable name you can set to display in a user interface. Must be not longer than 200 characters and only contain UTF-8 letters or numbers, spaces or characters like `_-:&.`
  final Input<String>? displayName;
  final Input<String>? location;

  /// Immutable. The resource name of the lineage process. Format: `projects/{project}/locations/{location}/processes/{process}`. Can be specified or auto-assigned. {process} must be not longer than 200 characters and only contain characters in a set: `a-zA-Z0-9_-:.`
  final Input<String>? name;

  /// Optional. The origin of this process and its runs and lineage events.
  final Input<GoogleCloudDatacatalogLineageV1Origin>? origin;
  final Input<String>? project;

  /// A unique identifier for this request. Restricted to 36 ASCII characters. A random UUID is recommended. This request is idempotent only if a `request_id` is provided.
  final Input<String>? requestId;

  ProcessArgs({
    this.attributes,
    this.displayName,
    this.location,
    this.name,
    this.origin,
    this.project,
    this.requestId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final attributesValue = attributes;
    if (attributesValue != null) {
      map['attributes'] = attributesValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final originValue = origin;
    if (originValue != null) {
      map['origin'] = Input.mapOptionalInputValue<
          GoogleCloudDatacatalogLineageV1Origin,
          Map<String, dynamic>>(originValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    return map;
  }

  factory ProcessArgs.fromMap(Map<String, dynamic> map) {
    return ProcessArgs(
      attributes: Input.asOptionalInput<Map<String, String>>(map['attributes']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      origin: Input.asOptionalInput<GoogleCloudDatacatalogLineageV1Origin>(
          map['origin']),
      project: Input.asOptionalInput<String>(map['project']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
    );
  }
}
