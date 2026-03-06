// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourceCollectionTags {
  /// An AWS tag key that is used to identify the AWS resources that DevOps Guru analyzes. All AWS resources in your account and Region tagged with this key make up your DevOps Guru application and analysis boundary. The key must begin with the prefix `DevOps-Guru-`. Any casing can be used for the prefix, but the associated tags __must use the same casing__ in their tag key.
  final pulumi.Input<String> appBoundaryKey;
  /// Array of tag values. These can be used to further filter for specific resources within the application boundary. To analyze all resources tagged with the `app_boundary_key` regardless of the corresponding tag value, this array should be a single item containing a wildcard (`"*"`).
  final pulumi.Input<List<String>> tagValues;

  /// Creates a new [ResourceCollectionTags].
  /// [appBoundaryKey] An AWS tag key that is used to identify the AWS resources that DevOps Guru analyzes. All AWS resources in your account and Region tagged with this key make up your DevOps Guru application and analysis boundary. The key must begin with the prefix `DevOps-Guru-`. Any casing can be used for the prefix, but the associated tags __must use the same casing__ in their tag key.
  /// [tagValues] Array of tag values. These can be used to further filter for specific resources within the application boundary. To analyze all resources tagged with the `app_boundary_key` regardless of the corresponding tag value, this array should be a single item containing a wildcard (`"*"`).
  const ResourceCollectionTags({
    required this.appBoundaryKey,
    required this.tagValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appBoundaryKey': appBoundaryKey,
      'tagValues': tagValues,
    };
  }

  factory ResourceCollectionTags.fromMap(Map<String, dynamic> map) {
    return ResourceCollectionTags(
      appBoundaryKey: pulumi.Input.fromValue(map['appBoundaryKey'] as String),
      tagValues: pulumi.Input.fromValue((map['tagValues'] as List).cast<String>()),
    );
  }
}

