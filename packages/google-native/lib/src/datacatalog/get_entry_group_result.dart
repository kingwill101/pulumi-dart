// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_datacatalog_v1_system_timestamps_response.dart';

/// Result data returned by getEntryGroup.
class GetEntryGroupResult {
  /// Timestamps of the entry group. Default value is empty.
  final GoogleCloudDatacatalogV1SystemTimestampsResponse dataCatalogTimestamps;
  /// Entry group description. Can consist of several sentences or paragraphs that describe the entry group contents. Default value is an empty string.
  final String description;
  /// A short name to identify the entry group, for example, "analytics data - jan 2011". Default value is an empty string.
  final String displayName;
  /// The resource name of the entry group in URL format. Note: The entry group itself and its child resources might not be stored in the location specified in its name.
  final String name;

  /// Creates a new [GetEntryGroupResult].
  /// [dataCatalogTimestamps] Timestamps of the entry group. Default value is empty.
  /// [description] Entry group description. Can consist of several sentences or paragraphs that describe the entry group contents. Default value is an empty string.
  /// [displayName] A short name to identify the entry group, for example, "analytics data - jan 2011". Default value is an empty string.
  /// [name] The resource name of the entry group in URL format. Note: The entry group itself and its child resources might not be stored in the location specified in its name.
  GetEntryGroupResult({
    required this.dataCatalogTimestamps,
    required this.description,
    required this.displayName,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataCatalogTimestamps': dataCatalogTimestamps.toMap(),
      'description': description,
      'displayName': displayName,
      'name': name,
    };
  }

  factory GetEntryGroupResult.fromMap(Map<String, dynamic> map) {
    return GetEntryGroupResult(
      dataCatalogTimestamps: GoogleCloudDatacatalogV1SystemTimestampsResponse.fromMap((map['dataCatalogTimestamps'] as Map).cast<String, dynamic>()),
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      name: map['name'] as String,
    );
  }
}

