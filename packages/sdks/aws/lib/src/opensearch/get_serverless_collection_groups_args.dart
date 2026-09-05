// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_opensearch_get_serverless_collection_groups_get_serverless_collection_groups_args_doc}
/// Arguments for getServerlessCollectionGroups.
/// {@endtemplate}
/// {@macro pulumi_opensearch_get_serverless_collection_groups_get_serverless_collection_groups_args_doc}
class GetServerlessCollectionGroupsArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [GetServerlessCollectionGroupsArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GetServerlessCollectionGroupsArgs({
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
    };
  }

  factory GetServerlessCollectionGroupsArgs.fromMap(Map<String, dynamic> map) {
    return GetServerlessCollectionGroupsArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
