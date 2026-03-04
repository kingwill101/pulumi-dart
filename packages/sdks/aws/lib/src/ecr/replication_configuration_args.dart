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
  final pulumi.Input<ReplicationConfigurationReplicationConfiguration>?
  replicationConfiguration;

  /// Creates a new [ReplicationConfigurationArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [replicationConfiguration] Replication configuration for a registry. See Replication Configuration.
  ReplicationConfigurationArgs({this.region, this.replicationConfiguration});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'replicationConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            ReplicationConfigurationReplicationConfiguration,
            Map<String, dynamic>
          >(replicationConfiguration, (value) => value.toMap()),
    };
  }

  factory ReplicationConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return ReplicationConfigurationArgs(
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      replicationConfiguration: (() {
        final guardedValue = map['replicationConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ReplicationConfigurationReplicationConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
