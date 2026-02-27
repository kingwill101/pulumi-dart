// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../replication_configuration_replication_configuration/replication_configuration_replication_configuration.dart';

/// The set of arguments for ReplicationConfiguration.
class ReplicationConfigurationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Replication configuration for a registry. See Replication Configuration.
  final pulumi.Input<ReplicationConfigurationReplicationConfiguration>?
      replicationConfiguration;

  ReplicationConfigurationArgs({
    this.region,
    this.replicationConfiguration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final replicationConfigurationValue = replicationConfiguration;
    if (replicationConfigurationValue != null) {
      map['replicationConfiguration'] = pulumi.Input.mapOptionalInputValue<
              ReplicationConfigurationReplicationConfiguration,
              Map<String, dynamic>>(
          replicationConfigurationValue, (value) => value.toMap());
    }
    return map;
  }

  factory ReplicationConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return ReplicationConfigurationArgs(
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      replicationConfiguration: pulumi.Input.asOptionalInput<
              ReplicationConfigurationReplicationConfiguration>(
          map['replicationConfiguration']),
    );
  }
}
