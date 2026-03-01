// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_odb_get_db_node_get_db_node_args_doc}
/// Arguments for getDbNode.
/// {@endtemplate}
/// {@macro pulumi_odb_get_db_node_get_db_node_args_doc}
class GetDbNodeArgs {
  /// The unique identifier of the cloud vm cluster.
  final pulumi.Input<String> cloudVmClusterId;
  /// The unique identifier of db node associated with vm cluster.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> id;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetDbNodeArgs].
  /// [cloudVmClusterId] The unique identifier of the cloud vm cluster.
  /// [id] The unique identifier of db node associated with vm cluster.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetDbNodeArgs({
    required pulumi.Output<String> cloudVmClusterId,
    required pulumi.Output<String> id,
    pulumi.Output<String>? region,
  }) :
      cloudVmClusterId = pulumi.Input.asInput<String>(cloudVmClusterId),
      id = pulumi.Input.asInput<String>(id),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudVmClusterId': cloudVmClusterId,
      'id': id,
      'region': ?region,
    };
  }

  factory GetDbNodeArgs.fromMap(Map<String, dynamic> map) {
    return GetDbNodeArgs(
      cloudVmClusterId: pulumi.Output.create<String>(map['cloudVmClusterId'] as String),
      id: pulumi.Output.create<String>(map['id'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

