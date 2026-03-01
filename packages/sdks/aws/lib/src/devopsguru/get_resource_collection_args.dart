// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devopsguru_get_resource_collection_get_resource_collection_args_doc}
/// Arguments for getResourceCollection.
/// {@endtemplate}
/// {@macro pulumi_devopsguru_get_resource_collection_get_resource_collection_args_doc}
class GetResourceCollectionArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Type of AWS resource collection to create. Valid values are `AWS_CLOUD_FORMATION`, `AWS_SERVICE`, and `AWS_TAGS`.
  final pulumi.Input<String> type;

  /// Creates a new [GetResourceCollectionArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [type] Type of AWS resource collection to create. Valid values are `AWS_CLOUD_FORMATION`, `AWS_SERVICE`, and `AWS_TAGS`.
  GetResourceCollectionArgs({
    pulumi.Output<String>? region,
    required pulumi.Output<String> type,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      type = pulumi.Input.asInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'type': type,
    };
  }

  factory GetResourceCollectionArgs.fromMap(Map<String, dynamic> map) {
    return GetResourceCollectionArgs(
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      type: pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

