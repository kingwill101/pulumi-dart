// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_datacatalog_lineage_v1_origin_response.dart';

/// Result data returned by getProcess.
class GetProcessResult {
  /// Optional. The attributes of the process. Should only be used for the purpose of non-semantic management (classifying, describing or labeling the process). Up to 100 attributes are allowed.
  final Map<String, String> attributes;

  /// Optional. A human-readable name you can set to display in a user interface. Must be not longer than 200 characters and only contain UTF-8 letters or numbers, spaces or characters like `_-:&.`
  final String displayName;

  /// Immutable. The resource name of the lineage process. Format: `projects/{project}/locations/{location}/processes/{process}`. Can be specified or auto-assigned. {process} must be not longer than 200 characters and only contain characters in a set: `a-zA-Z0-9_-:.`
  final String name;

  /// Optional. The origin of this process and its runs and lineage events.
  final GoogleCloudDatacatalogLineageV1OriginResponse origin;

  /// Creates a new [GetProcessResult].
  /// [attributes] Optional. The attributes of the process. Should only be used for the purpose of non-semantic management (classifying, describing or labeling the process). Up to 100 attributes are allowed.
  /// [displayName] Optional. A human-readable name you can set to display in a user interface. Must be not longer than 200 characters and only contain UTF-8 letters or numbers, spaces or characters like `_-:&.`
  /// [name] Immutable. The resource name of the lineage process. Format: `projects/{project}/locations/{location}/processes/{process}`. Can be specified or auto-assigned. {process} must be not longer than 200 characters and only contain characters in a set: `a-zA-Z0-9_-:.`
  /// [origin] Optional. The origin of this process and its runs and lineage events.
  GetProcessResult({
    required this.attributes,
    required this.displayName,
    required this.name,
    required this.origin,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['attributes'] = attributes;
    map['displayName'] = displayName;
    map['name'] = name;
    map['origin'] = origin.toMap();
    return map;
  }

  factory GetProcessResult.fromMap(Map<String, dynamic> map) {
    return GetProcessResult(
      attributes: (map['attributes'] as Map).cast<String, String>(),
      displayName: map['displayName'] as String,
      name: map['name'] as String,
      origin: GoogleCloudDatacatalogLineageV1OriginResponse.fromMap(
          (map['origin'] as Map).cast<String, dynamic>()),
    );
  }
}
