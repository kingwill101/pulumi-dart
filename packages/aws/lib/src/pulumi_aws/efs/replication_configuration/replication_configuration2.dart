import 'package:pulumi/pulumi.dart';
import '../replication_configuration_destination/replication_configuration_destination.dart';
import 'replication_configuration_args2.dart';

/// Creates a replica of an existing EFS file system in the same or another region. Creating this resource causes the source EFS file system to be replicated to a new read-only destination EFS file system (unless using the `destination.file_system_id` attribute). Deleting this resource will cause the replication from source to destination to stop and the destination file system will no longer be read only.
///
/// > **NOTE:** Deleting this resource does **not** delete the destination file system that was created.
///
/// ## Example Usage
///
/// Will create a replica using regional storage in us-west-2 that will be encrypted by the default EFS KMS key `/aws/elasticfilesystem`.
///
///
///
/// Replica will be created as One Zone storage in the us-west-2b Availability Zone and encrypted with the specified KMS key.
///
///
///
/// Will create a replica and set the existing file system with id `fs-1234567890` in us-west-2 as destination.
///
///
///
/// ## Import
///
/// Using `pulumi import`, import EFS Replication Configurations using the file system ID of either the source or destination file system. When importing, the `availability_zone_name` and `kms_key_id` attributes must **not** be set in the configuration. The AWS API does not return these values when querying the replication configuration and their presence will therefore show as a diff in a subsequent plan. For example:
///
/// ```sh
/// $ pulumi import aws:efs/replicationConfiguration:ReplicationConfiguration example fs-id
/// ```
class ReplicationConfiguration2 extends CustomResource {
  /// When the replication configuration was created.
  /// * `destination[0].file_system_id` - The fs ID of the replica.
  /// * `destination[0].status` - The status of the replication.
  late final Output<String> creationTime;

  /// A destination configuration block (documented below).
  late final Output<ReplicationConfigurationDestination> destination;

  /// The Amazon Resource Name (ARN) of the original source Amazon EFS file system in the replication configuration.
  late final Output<String> originalSourceFileSystemArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The Amazon Resource Name (ARN) of the current source file system in the replication configuration.
  late final Output<String> sourceFileSystemArn;

  /// The ID of the file system that is to be replicated.
  late final Output<String> sourceFileSystemId;

  /// The AWS Region in which the source Amazon EFS file system is located.
  late final Output<String> sourceFileSystemRegion;

  ReplicationConfiguration2(
    String name, {
    ReplicationConfigurationArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:efs/replicationConfiguration:ReplicationConfiguration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.creationTime = registerOutput<String>('creationTime');
    this.destination =
        registerOutput<ReplicationConfigurationDestination>('destination');
    this.originalSourceFileSystemArn =
        registerOutput<String>('originalSourceFileSystemArn');
    this.region = registerOutput<String>('region');
    this.sourceFileSystemArn = registerOutput<String>('sourceFileSystemArn');
    this.sourceFileSystemId = registerOutput<String>('sourceFileSystemId');
    this.sourceFileSystemRegion =
        registerOutput<String>('sourceFileSystemRegion');
  }
}
