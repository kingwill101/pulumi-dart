import 'package:pulumi/pulumi.dart';
import '../volume_replication_destination_volume_parameters/volume_replication_destination_volume_parameters.dart';
import '../volume_replication_hybrid_peering_detail/volume_replication_hybrid_peering_detail.dart';
import '../volume_replication_hybrid_replication_user_command/volume_replication_hybrid_replication_user_command.dart';
import '../volume_replication_transfer_stat/volume_replication_transfer_stat.dart';
import 'volume_replication_args.dart';

/// ## Example Usage
///
/// ### Netapp Volume Replication Create
///
///
///
///
/// ## Import
///
/// VolumeReplication can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/volumes/{{volume_name}}/replications/{{name}}`
///
/// * `{{project}}/{{location}}/{{volume_name}}/{{name}}`
///
/// * `{{location}}/{{volume_name}}/{{name}}`
///
/// When using the `pulumi import` command, VolumeReplication can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:netapp/volumeReplication:VolumeReplication default projects/{{project}}/locations/{{location}}/volumes/{{volume_name}}/replications/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:netapp/volumeReplication:VolumeReplication default {{project}}/{{location}}/{{volume_name}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:netapp/volumeReplication:VolumeReplication default {{location}}/{{volume_name}}/{{name}}
/// ```
class VolumeReplication extends CustomResource {
  /// Create time of the active directory. A timestamp in RFC3339 UTC "Zulu" format. Examples: "2023-06-22T09:13:01.617Z".
  late final Output<String> createTime;
  late final Output<bool?> deleteDestinationVolume;

  /// An description of this resource.
  late final Output<String?> description;

  /// Full resource name of destination volume with format: `projects/{{project}}/locations/{{location}}/volumes/{{volumeId}}`
  late final Output<String> destinationVolume;

  /// Destination volume parameters.
  /// Structure is documented below.
  late final Output<VolumeReplicationDestinationVolumeParameters?>
      destinationVolumeParameters;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Only replications with mirror_state=MIRRORED can be stopped. A replication in mirror_state=TRANSFERRING
  /// currently receives an update and stopping the update might be undesirable. Set this parameter to true
  /// to stop anyway. All data transferred to the destination will be discarded and content of destination
  /// volume will remain at the state of the last successful update. Default is false.
  late final Output<bool?> forceStopping;

  /// Condition of the relationship. Can be one of the following:
  /// - true: The replication relationship is healthy. It has not missed the most recent scheduled transfer.
  /// - false: The replication relationship is not healthy. It has missed the most recent scheduled transfer.
  late final Output<bool> healthy;

  /// HybridPeeringDetails contains details about the hybrid peering.
  /// Structure is documented below.
  late final Output<List<VolumeReplicationHybridPeeringDetail>>
      hybridPeeringDetails;

  /// Hybrid replication type.
  late final Output<String> hybridReplicationType;

  /// Copy pastable snapmirror commands to be executed on onprem cluster by the customer.
  /// Structure is documented below.
  late final Output<List<VolumeReplicationHybridReplicationUserCommand>>
      hybridReplicationUserCommands;

  /// Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Name of region for this resource. The resource needs to be created in the region of the destination volume.
  late final Output<String> location;

  /// Indicates the state of the mirror between source and destination volumes. Depending on the amount of data
  /// in your source volume, PREPARING phase can take hours or days. mirrorState = MIRRORED indicates your baseline
  /// transfer ended and destination volume became accessible read-only. TRANSFERRING means a MIRRORED volume
  /// currently receives an update. Updated every 5 minutes.
  late final Output<String> mirrorState;

  /// The name of the replication. Needs to be unique per location.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Set to false to stop/break the mirror. Stopping the mirror makes the destination volume read-write
  /// and act independently from the source volume.
  /// Set to true to enable/resume the mirror. WARNING: Resuming a mirror overwrites any changes
  /// done to the destination volume with the content of the source volume.
  late final Output<bool?> replicationEnabled;

  /// Specifies the replication interval.
  /// Possible values are: `EVERY_10_MINUTES`, `HOURLY`, `DAILY`.
  late final Output<String> replicationSchedule;

  /// Reverting a replication can swap source and destination volume roles. This field indicates if the `location` hosts
  /// the source or destination volume. For resume and revert and resume operations it is critical to understand
  /// which volume is the source volume, since it will overwrite changes done to the destination volume.
  late final Output<String> role;

  /// Full resource name of source volume with format: `projects/{{project}}/locations/{{location}}/volumes/{{volumeId}}`
  late final Output<String> sourceVolume;

  /// Indicates the state of replication resource. State of the mirror itself is indicated in mirrorState.
  late final Output<String> state;

  /// State details of the replication resource.
  late final Output<String> stateDetails;

  /// Replication transfer statistics. All statistics are updated every 5 minutes.
  /// Structure is documented below.
  late final Output<List<VolumeReplicationTransferStat>> transferStats;

  /// The name of the existing source volume.
  late final Output<String> volumeName;
  late final Output<bool?> waitForMirror;

  VolumeReplication(
    String name, {
    VolumeReplicationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:netapp/volumeReplication:VolumeReplication',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.deleteDestinationVolume =
        registerOutput<bool?>('deleteDestinationVolume');
    this.description = registerOutput<String?>('description');
    this.destinationVolume = registerOutput<String>('destinationVolume');
    this.destinationVolumeParameters =
        registerOutput<VolumeReplicationDestinationVolumeParameters?>(
            'destinationVolumeParameters');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.forceStopping = registerOutput<bool?>('forceStopping');
    this.healthy = registerOutput<bool>('healthy');
    this.hybridPeeringDetails =
        registerOutput<List<VolumeReplicationHybridPeeringDetail>>(
            'hybridPeeringDetails');
    this.hybridReplicationType =
        registerOutput<String>('hybridReplicationType');
    this.hybridReplicationUserCommands =
        registerOutput<List<VolumeReplicationHybridReplicationUserCommand>>(
            'hybridReplicationUserCommands');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.mirrorState = registerOutput<String>('mirrorState');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.replicationEnabled = registerOutput<bool?>('replicationEnabled');
    this.replicationSchedule = registerOutput<String>('replicationSchedule');
    this.role = registerOutput<String>('role');
    this.sourceVolume = registerOutput<String>('sourceVolume');
    this.state = registerOutput<String>('state');
    this.stateDetails = registerOutput<String>('stateDetails');
    this.transferStats =
        registerOutput<List<VolumeReplicationTransferStat>>('transferStats');
    this.volumeName = registerOutput<String>('volumeName');
    this.waitForMirror = registerOutput<bool?>('waitForMirror');
  }
}
