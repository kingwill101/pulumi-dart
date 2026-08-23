// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_opensearch_get_serverless_collection_group_get_serverless_collection_group_args_doc}
/// Arguments for getServerlessCollectionGroup.
/// {@endtemplate}
/// {@macro pulumi_opensearch_get_serverless_collection_group_get_serverless_collection_group_args_doc}
class GetServerlessCollectionGroupArgs {
  /// ID of the collection group.
  final pulumi.Input<String>? id;
  /// Name of the collection group.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  ///
  /// &gt; Specify exactly one of `id` or `name`.
  final pulumi.Input<String>? region;

  /// Creates a new [GetServerlessCollectionGroupArgs].
  /// [id] ID of the collection group.
  /// [name] Name of the collection group.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GetServerlessCollectionGroupArgs({
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

  factory GetServerlessCollectionGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetServerlessCollectionGroupArgs(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
