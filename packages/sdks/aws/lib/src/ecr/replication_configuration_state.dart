// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication_configuration_replication_configuration.dart';

/// Input properties used for looking up and filtering ReplicationConfiguration resources.
class ReplicationConfigurationState {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The registry ID where the replication configuration was created.
  final pulumi.Input<String>? registryId;
  /// Replication configuration for a registry. See Replication Configuration.
  final pulumi.Input<ReplicationConfigurationReplicationConfiguration>? replicationConfiguration;

  /// Creates a new [ReplicationConfigurationState].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [registryId] The registry ID where the replication configuration was created.
  /// [replicationConfiguration] Replication configuration for a registry. See Replication Configuration.
  ReplicationConfigurationState({
    this.region,
    this.registryId,
    this.replicationConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'registryId': ?registryId,
      'replicationConfiguration': ?pulumi.Input.mapOptionalInputValue<ReplicationConfigurationReplicationConfiguration, Map<String, dynamic>>(replicationConfiguration, (value) => value.toMap()),
    };
  }

  factory ReplicationConfigurationState.fromMap(Map<String, dynamic> map) {
    return ReplicationConfigurationState(
      region: map['region'] == null ? null : (map['region'] as String).input(),
      registryId: map['registryId'] == null ? null : (map['registryId'] as String).input(),
      replicationConfiguration: map['replicationConfiguration'] == null ? null : (ReplicationConfigurationReplicationConfiguration.fromMap((map['replicationConfiguration'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

