import 'package:pulumi/pulumi.dart' as pulumi;
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
class ReplicationConfiguration extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The registry ID where the replication configuration was created.
  late final pulumi.Output<String> registryId;

  /// Replication configuration for a registry. See Replication Configuration.
  late final pulumi.Output<ReplicationConfigurationReplicationConfiguration?>
      replicationConfiguration;

  ReplicationConfiguration(
    String name, {
    ReplicationConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ecr/replicationConfiguration:ReplicationConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.registryId = registerOutput<String>('registryId');
    this.replicationConfiguration =
        registerOutput<ReplicationConfigurationReplicationConfiguration?>(
            'replicationConfiguration');
  }
}
