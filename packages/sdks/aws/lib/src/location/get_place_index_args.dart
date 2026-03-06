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
  const GetPlaceIndexArgs({
    required this.indexName,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'indexName': indexName,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetPlaceIndexArgs.fromMap(Map<String, dynamic> map) {
    return GetPlaceIndexArgs(
      indexName: pulumi.Input.fromValue(map['indexName'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

