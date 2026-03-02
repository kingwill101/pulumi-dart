// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_opensearch_get_serverless_collection_get_serverless_collection_args_doc}
/// Arguments for getServerlessCollection.
/// {@endtemplate}
/// {@macro pulumi_opensearch_get_serverless_collection_get_serverless_collection_args_doc}
class GetServerlessCollectionArgs {
  /// ID of the collection.
  final pulumi.Input<String>? id;
  /// Name of the collection.
  ///
  /// > Exactly one of `id` or `name` is required.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetServerlessCollectionArgs].
  /// [id] ID of the collection.
  /// [name] Name of the collection.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetServerlessCollectionArgs({
    this.id,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'region': ?region,
    };
  }

  factory GetServerlessCollectionArgs.fromMap(Map<String, dynamic> map) {
    return GetServerlessCollectionArgs(
      id: map['id'] == null ? null : (map['id'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

