// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_odb_get_db_nodes_get_db_nodes_args_doc}
/// Arguments for getDbNodes.
/// {@endtemplate}
/// {@macro pulumi_odb_get_db_nodes_get_db_nodes_args_doc}
class GetDbNodesArgs {
  /// The unique identifier of the cloud vm cluster.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> cloudVmClusterId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetDbNodesArgs].
  /// [cloudVmClusterId] The unique identifier of the cloud vm cluster.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetDbNodesArgs({required String cloudVmClusterId, String? region})
    : cloudVmClusterId = pulumi.Input.asInput<String>(cloudVmClusterId),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudVmClusterId': cloudVmClusterId,
      'region': ?region,
    };
  }

  factory GetDbNodesArgs.fromMap(Map<String, dynamic> map) {
    return GetDbNodesArgs(
      cloudVmClusterId: map['cloudVmClusterId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
