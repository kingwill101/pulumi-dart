// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_odb_get_db_server_get_db_server_args_doc}
/// Arguments for getDbServer.
/// {@endtemplate}
/// {@macro pulumi_odb_get_db_server_get_db_server_args_doc}
class GetDbServerArgs {
  /// The unique identifier of the cloud vm cluster.
  final pulumi.Input<String> cloudExadataInfrastructureId;
  /// The unique identifier of db node associated with vm cluster.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> id;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetDbServerArgs].
  /// [cloudExadataInfrastructureId] The unique identifier of the cloud vm cluster.
  /// [id] The unique identifier of db node associated with vm cluster.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetDbServerArgs({
    required String cloudExadataInfrastructureId,
    required String id,
    String? region,
  }) :
      cloudExadataInfrastructureId = pulumi.Input.asInput<String>(cloudExadataInfrastructureId),
      id = pulumi.Input.asInput<String>(id),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudExadataInfrastructureId': cloudExadataInfrastructureId,
      'id': id,
      'region': ?region,
    };
  }

  factory GetDbServerArgs.fromMap(Map<String, dynamic> map) {
    return GetDbServerArgs(
      cloudExadataInfrastructureId: map['cloudExadataInfrastructureId'] as String,
      id: map['id'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

