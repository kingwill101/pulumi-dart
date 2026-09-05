// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_odb_get_db_node_get_db_node_args_doc}
/// Arguments for getDbNode.
/// {@endtemplate}
/// {@macro pulumi_odb_get_db_node_get_db_node_args_doc}
class GetDbNodeArgs {
  /// Unique identifier of the cloud vm cluster.
  final pulumi.Input<String> cloudVmClusterId;
  /// Unique identifier of db node associated with vm cluster.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> id;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [GetDbNodeArgs].
  /// [cloudVmClusterId] Unique identifier of the cloud vm cluster.
  /// [id] Unique identifier of db node associated with vm cluster.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GetDbNodeArgs({
    required this.cloudVmClusterId,
    required this.id,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudVmClusterId': cloudVmClusterId,
      'id': id,
      'region': ?region,
    };
  }

  factory GetDbNodeArgs.fromMap(Map<String, dynamic> map) {
    return GetDbNodeArgs(
      cloudVmClusterId: pulumi.Input.fromValue(map['cloudVmClusterId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
