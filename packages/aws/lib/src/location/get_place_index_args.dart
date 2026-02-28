// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_location_get_place_index_get_place_index_args_doc}
/// Arguments for getPlaceIndex.
/// {@endtemplate}
/// {@macro pulumi_location_get_place_index_get_place_index_args_doc}
class GetPlaceIndexArgs {
  /// Name of the place index resource.
  final pulumi.Input<String> indexName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value map of resource tags for the place index.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetPlaceIndexArgs].
  /// [indexName] Name of the place index resource.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags for the place index.
  GetPlaceIndexArgs({
    required String indexName,
    String? region,
    Map<String, String>? tags,
  })  : indexName = pulumi.Input.asInput<String>(indexName),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      indexName: map['indexName'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
