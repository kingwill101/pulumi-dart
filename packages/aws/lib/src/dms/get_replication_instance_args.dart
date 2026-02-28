// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dms_get_replication_instance_get_replication_instance_args_doc}
/// Arguments for getReplicationInstance.
/// {@endtemplate}
/// {@macro pulumi_dms_get_replication_instance_get_replication_instance_args_doc}
class GetReplicationInstanceArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The replication instance identifier.
  final pulumi.Input<String> replicationInstanceId;
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetReplicationInstanceArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [replicationInstanceId] The replication instance identifier.
  /// [tags] Optional.
  GetReplicationInstanceArgs({
    String? region,
    required String replicationInstanceId,
    Map<String, String>? tags,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      replicationInstanceId = pulumi.Input.asInput<String>(replicationInstanceId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'replicationInstanceId': replicationInstanceId,
      'tags': ?tags,
    };
  }

  factory GetReplicationInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetReplicationInstanceArgs(
      region: map['region'] == null ? null : map['region'] as String,
      replicationInstanceId: map['replicationInstanceId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

