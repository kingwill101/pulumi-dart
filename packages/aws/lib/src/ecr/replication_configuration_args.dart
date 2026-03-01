// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication_configuration_replication_configuration.dart';

/// {@template pulumi_ecr_replication_configuration_replication_configuration_args_doc}
/// The set of arguments for ReplicationConfiguration.
/// {@endtemplate}
/// {@macro pulumi_ecr_replication_configuration_replication_configuration_args_doc}
class ReplicationConfigurationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Replication configuration for a registry. See Replication Configuration.
  final pulumi.Input<ReplicationConfigurationReplicationConfiguration>? replicationConfiguration;

  /// Creates a new [ReplicationConfigurationArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [replicationConfiguration] Replication configuration for a registry. See Replication Configuration.
  ReplicationConfigurationArgs({
    String? region,
    ReplicationConfigurationReplicationConfiguration? replicationConfiguration,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      replicationConfiguration = pulumi.Input.asOptionalInput<ReplicationConfigurationReplicationConfiguration>(replicationConfiguration);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'replicationConfiguration': ?pulumi.Input.mapOptionalInputValue<ReplicationConfigurationReplicationConfiguration, Map<String, dynamic>>(replicationConfiguration, (value) => value.toMap()),
    };
  }

  factory ReplicationConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return ReplicationConfigurationArgs(
      region: map['region'] == null ? null : map['region'] as String,
      replicationConfiguration: map['replicationConfiguration'] == null ? null : ReplicationConfigurationReplicationConfiguration.fromMap((map['replicationConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

