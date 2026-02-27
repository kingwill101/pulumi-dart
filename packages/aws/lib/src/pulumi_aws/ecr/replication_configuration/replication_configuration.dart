import 'package:pulumi/pulumi.dart';
import '../replication_configuration_replication_configuration/replication_configuration_replication_configuration.dart';
import 'replication_configuration_args.dart';

/// Provides an Elastic Container Registry Replication Configuration.
///
/// ## Example Usage
///
///
///
/// ## Multiple Region Usage
///
///
///
/// ## Repository Filter Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import ECR Replication Configuration using the `registry_id`. For example:
///
/// ```sh
/// $ pulumi import aws:ecr/replicationConfiguration:ReplicationConfiguration service 012345678912
/// ```
class ReplicationConfiguration extends CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The registry ID where the replication configuration was created.
  late final Output<String> registryId;

  /// Replication configuration for a registry. See Replication Configuration.
  late final Output<ReplicationConfigurationReplicationConfiguration?>
      replicationConfiguration;

  ReplicationConfiguration(
    String name, {
    ReplicationConfigurationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ecr/replicationConfiguration:ReplicationConfiguration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.registryId = registerOutput<String>('registryId');
    this.replicationConfiguration =
        registerOutput<ReplicationConfigurationReplicationConfiguration?>(
            'replicationConfiguration');
  }
}
