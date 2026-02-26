// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getPlaceIndex.
class GetPlaceIndexArgs {
  /// Name of the place index resource.
  final Input<String> indexName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value map of resource tags for the place index.
  final Input<Map<String, String>>? tags;

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
      indexName: Input.asInput<String>(map['indexName']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
