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
    pulumi.Output<String>? region,
    pulumi.Output<String>? registryId,
    pulumi.Output<ReplicationConfigurationReplicationConfiguration>? replicationConfiguration,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      registryId = pulumi.Input.asOptionalInput<String>(registryId),
      replicationConfiguration = pulumi.Input.asOptionalInput<ReplicationConfigurationReplicationConfiguration>(replicationConfiguration);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'registryId': ?registryId,
      'replicationConfiguration': ?pulumi.Input.mapOptionalInputValue<ReplicationConfigurationReplicationConfiguration, Map<String, dynamic>>(replicationConfiguration, (value) => value.toMap()),
    };
  }

  factory ReplicationConfigurationState.fromMap(Map<String, dynamic> map) {
    return ReplicationConfigurationState(
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      registryId: map['registryId'] == null ? null : pulumi.Output.create<String>(map['registryId'] as String),
      replicationConfiguration: map['replicationConfiguration'] == null ? null : pulumi.Output.create<ReplicationConfigurationReplicationConfiguration>(ReplicationConfigurationReplicationConfiguration.fromMap((map['replicationConfiguration'] as Map).cast<String, dynamic>())),
    );
  }
}

