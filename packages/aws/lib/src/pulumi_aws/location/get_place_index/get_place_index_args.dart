// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getPlaceIndex.
class GetPlaceIndexArgs {
  /// Name of the place index resource.
  final pulumi.Input<String> indexName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value map of resource tags for the place index.
  final pulumi.Input<Map<String, String>>? tags;

  GetPlaceIndexArgs({
    required this.indexName,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['indexName'] = indexName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetPlaceIndexArgs.fromMap(Map<String, dynamic> map) {
    return GetPlaceIndexArgs(
      indexName: pulumi.Input.asInput<String>(map['indexName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
