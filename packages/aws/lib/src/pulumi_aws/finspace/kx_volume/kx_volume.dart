import 'package:pulumi/pulumi.dart';
import '../kx_volume_attached_cluster/kx_volume_attached_cluster.dart';
import '../kx_volume_nas1_configuration/kx_volume_nas1_configuration.dart';
import 'kx_volume_args.dart';

/// Resource for managing an AWS FinSpace Kx Volume.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import an AWS FinSpace Kx Volume using the `id` (environment ID and volume name, comma-delimited). For example:
///
/// ```sh
/// $ pulumi import aws:finspace/kxVolume:KxVolume example n3ceo7wqxoxcti5tujqwzs,my-tf-kx-volume
/// ```
class KxVolume extends CustomResource {
  /// Amazon Resource Name (ARN) identifier of the KX volume.
  late final Output<String> arn;
  late final Output<List<KxVolumeAttachedCluster>> attachedClusters;

  /// The identifier of the AWS Availability Zone IDs.
  ///
  /// The following arguments are optional:
  late final Output<List<String>> availabilityZones;

  /// The number of availability zones you want to assign per volume. Currently, Finspace only support SINGLE for volumes.
  /// * `SINGLE` - Assigns one availability zone per volume.
  late final Output<String> azMode;

  /// The timestamp at which the volume was created in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.
  late final Output<String> createdTimestamp;

  /// Description of the volume.
  late final Output<String?> description;

  /// A unique identifier for the kdb environment, whose clusters can attach to the volume.
  late final Output<String> environmentId;

  /// Last timestamp at which the volume was updated in FinSpace. Value determined as epoch time in seconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000.
  late final Output<String> lastModifiedTimestamp;

  /// Unique name for the volumr that you want to create.
  late final Output<String> name;

  /// Specifies the configuration for the Network attached storage (`NAS_1`) file system volume. This parameter is required when `volume_type` is `NAS_1`. See `nas1_configuration` Argument Reference below.
  late final Output<List<KxVolumeNas1Configuration>?> nas1Configurations;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The status of volume creation.
  /// * `CREATING` - The volume creation is in progress.
  /// * `CREATE_FAILED` - The volume creation has failed.
  /// * `ACTIVE` - The volume is active.
  /// * `UPDATING` - The volume is in the process of being updated.
  /// * `UPDATE_FAILED` - The update action failed.
  /// * `UPDATED` - The volume is successfully updated.
  /// * `DELETING` - The volume is in the process of being deleted.
  /// * `DELETE_FAILED` - The system failed to delete the volume.
  /// * `DELETED` - The volume is successfully deleted.
  late final Output<String> status;

  /// The error message when a failed state occurs.
  late final Output<String> statusReason;

  /// A list of key-value pairs to label the volume. You can add up to 50 tags to a volume
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  /// The type of file system volume. Currently, FinSpace only supports the `NAS_1` volume type. When you select the `NAS_1` volume type, you must also provide `nas1_configuration`.
  late final Output<String> type;

  KxVolume(
    String name, {
    KxVolumeArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:finspace/kxVolume:KxVolume',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.attachedClusters =
        registerOutput<List<KxVolumeAttachedCluster>>('attachedClusters');
    this.availabilityZones = registerOutput<List<String>>('availabilityZones');
    this.azMode = registerOutput<String>('azMode');
    this.createdTimestamp = registerOutput<String>('createdTimestamp');
    this.description = registerOutput<String?>('description');
    this.environmentId = registerOutput<String>('environmentId');
    this.lastModifiedTimestamp =
        registerOutput<String>('lastModifiedTimestamp');
    this.name = registerOutput<String>('name');
    this.nas1Configurations =
        registerOutput<List<KxVolumeNas1Configuration>?>('nas1Configurations');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
    this.statusReason = registerOutput<String>('statusReason');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.type = registerOutput<String>('type');
  }
}
