// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_odb_get_db_server_get_db_server_args_doc}
/// Arguments for getDbServer.
/// {@endtemplate}
/// {@macro pulumi_odb_get_db_server_get_db_server_args_doc}
class GetDbServerArgs {
  /// Unique identifier of the cloud vm cluster.
  final pulumi.Input<String> cloudExadataInfrastructureId;
  /// Unique identifier of db node associated with vm cluster.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> id;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetDbServerArgs].
  /// [cloudExadataInfrastructureId] Unique identifier of the cloud vm cluster.
  /// [id] Unique identifier of db node associated with vm cluster.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GetDbServerArgs({
    required this.cloudExadataInfrastructureId,
    required this.id,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudExadataInfrastructureId': cloudExadataInfrastructureId,
      'id': id,
      'region': ?region,
    };
  }

  factory GetDbServerArgs.fromMap(Map<String, dynamic> map) {
    return GetDbServerArgs(
      cloudExadataInfrastructureId: pulumi.Input.fromValue(map['cloudExadataInfrastructureId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
