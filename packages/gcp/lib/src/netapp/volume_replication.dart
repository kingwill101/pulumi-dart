import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_replication_args.dart';
import 'volume_replication_destination_volume_parameters.dart';
import 'volume_replication_hybrid_peering_detail.dart';
import 'volume_replication_hybrid_replication_user_command.dart';
import 'volume_replication_transfer_stat.dart';

/// ## Example Usage
///
/// ### Netapp Volume Replication Create
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = gcp.compute.getNetwork({
///     name: "test-network",
/// });
/// const sourcePool = new gcp.netapp.StoragePool("source_pool", {
///     name: "source-pool",
///     location: "us-central1",
///     serviceLevel: "PREMIUM",
///     capacityGib: "2048",
///     network: _default.then(_default => _default.id),
/// });
/// const destinationPool = new gcp.netapp.StoragePool("destination_pool", {
///     name: "destination-pool",
///     location: "us-west2",
///     serviceLevel: "PREMIUM",
///     capacityGib: "2048",
///     network: _default.then(_default => _default.id),
///     allowAutoTiering: true,
/// });
/// const sourceVolume = new gcp.netapp.Volume("source_volume", {
///     location: sourcePool.location,
///     name: "source-volume",
///     capacityGib: "100",
///     shareName: "source-volume",
///     storagePool: sourcePool.name,
///     protocols: ["NFSV3"],
///     deletionPolicy: "FORCE",
/// });
/// const testReplication = new gcp.netapp.VolumeReplication("test_replication", {
///     location: sourceVolume.location,
///     volumeName: sourceVolume.name,
///     name: "test-replication",
///     replicationSchedule: "EVERY_10_MINUTES",
///     description: "This is a replication resource",
///     destinationVolumeParameters: {
///         storagePool: destinationPool.id,
///         volumeId: "destination-volume",
///         shareName: "source-volume",
///         description: "This is a replicated volume",
///         tieringPolicy: {
///             coolingThresholdDays: 20,
///             tierAction: "ENABLED",
///         },
///     },
///     deleteDestinationVolume: true,
///     waitForMirror: true,
/// }, {
///     dependsOn: [sourceVolume],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.get_network(name="test-network")
/// source_pool = gcp.netapp.StoragePool("source_pool",
///     name="source-pool",
///     location="us-central1",
///     service_level="PREMIUM",
///     capacity_gib="2048",
///     network=default.id)
/// destination_pool = gcp.netapp.StoragePool("destination_pool",
///     name="destination-pool",
///     location="us-west2",
///     service_level="PREMIUM",
///     capacity_gib="2048",
///     network=default.id,
///     allow_auto_tiering=True)
/// source_volume = gcp.netapp.Volume("source_volume",
///     location=source_pool.location,
///     name="source-volume",
///     capacity_gib="100",
///     share_name="source-volume",
///     storage_pool=source_pool.name,
///     protocols=["NFSV3"],
///     deletion_policy="FORCE")
/// test_replication = gcp.netapp.VolumeReplication("test_replication",
///     location=source_volume.location,
///     volume_name=source_volume.name,
///     name="test-replication",
///     replication_schedule="EVERY_10_MINUTES",
///     description="This is a replication resource",
///     destination_volume_parameters={
///         "storage_pool": destination_pool.id,
///         "volume_id": "destination-volume",
///         "share_name": "source-volume",
///         "description": "This is a replicated volume",
///         "tiering_policy": {
///             "cooling_threshold_days": 20,
///             "tier_action": "ENABLED",
///         },
///     },
///     delete_destination_volume=True,
///     wait_for_mirror=True,
///     opts = pulumi.ResourceOptions(depends_on=[source_volume]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = Gcp.Compute.GetNetwork.Invoke(new()
///     {
///         Name = "test-network",
///     });
///
///     var sourcePool = new Gcp.Netapp.StoragePool("source_pool", new()
///     {
///         Name = "source-pool",
///         Location = "us-central1",
///         ServiceLevel = "PREMIUM",
///         CapacityGib = "2048",
///         Network = @default.Apply(@default => @default.Apply(getNetworkResult => getNetworkResult.Id)),
///     });
///
///     var destinationPool = new Gcp.Netapp.StoragePool("destination_pool", new()
///     {
///         Name = "destination-pool",
///         Location = "us-west2",
///         ServiceLevel = "PREMIUM",
///         CapacityGib = "2048",
///         Network = @default.Apply(@default => @default.Apply(getNetworkResult => getNetworkResult.Id)),
///         AllowAutoTiering = true,
///     });
///
///     var sourceVolume = new Gcp.Netapp.Volume("source_volume", new()
///     {
///         Location = sourcePool.Location,
///         Name = "source-volume",
///         CapacityGib = "100",
///         ShareName = "source-volume",
///         StoragePool = sourcePool.Name,
///         Protocols = new[]
///         {
///             "NFSV3",
///         },
///         DeletionPolicy = "FORCE",
///     });
///
///     var testReplication = new Gcp.Netapp.VolumeReplication("test_replication", new()
///     {
///         Location = sourceVolume.Location,
///         VolumeName = sourceVolume.Name,
///         Name = "test-replication",
///         ReplicationSchedule = "EVERY_10_MINUTES",
///         Description = "This is a replication resource",
///         DestinationVolumeParameters = new Gcp.Netapp.Inputs.VolumeReplicationDestinationVolumeParametersArgs
///         {
///             StoragePool = destinationPool.Id,
///             VolumeId = "destination-volume",
///             ShareName = "source-volume",
///             Description = "This is a replicated volume",
///             TieringPolicy = new Gcp.Netapp.Inputs.VolumeReplicationDestinationVolumeParametersTieringPolicyArgs
///             {
///                 CoolingThresholdDays = 20,
///                 TierAction = "ENABLED",
///             },
///         },
///         DeleteDestinationVolume = true,
///         WaitForMirror = true,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             sourceVolume,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/netapp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.LookupNetwork(ctx, &compute.LookupNetworkArgs{
/// 			Name: "test-network",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		sourcePool, err := netapp.NewStoragePool(ctx, "source_pool", &netapp.StoragePoolArgs{
/// 			Name:         pulumi.String("source-pool"),
/// 			Location:     pulumi.String("us-central1"),
/// 			ServiceLevel: pulumi.String("PREMIUM"),
/// 			CapacityGib:  pulumi.String("2048"),
/// 			Network:      pulumi.String(_default.Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		destinationPool, err := netapp.NewStoragePool(ctx, "destination_pool", &netapp.StoragePoolArgs{
/// 			Name:             pulumi.String("destination-pool"),
/// 			Location:         pulumi.String("us-west2"),
/// 			ServiceLevel:     pulumi.String("PREMIUM"),
/// 			CapacityGib:      pulumi.String("2048"),
/// 			Network:          pulumi.String(_default.Id),
/// 			AllowAutoTiering: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		sourceVolume, err := netapp.NewVolume(ctx, "source_volume", &netapp.VolumeArgs{
/// 			Location:    sourcePool.Location,
/// 			Name:        pulumi.String("source-volume"),
/// 			CapacityGib: pulumi.String("100"),
/// 			ShareName:   pulumi.String("source-volume"),
/// 			StoragePool: sourcePool.Name,
/// 			Protocols: pulumi.StringArray{
/// 				pulumi.String("NFSV3"),
/// 			},
/// 			DeletionPolicy: pulumi.String("FORCE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = netapp.NewVolumeReplication(ctx, "test_replication", &netapp.VolumeReplicationArgs{
/// 			Location:            sourceVolume.Location,
/// 			VolumeName:          sourceVolume.Name,
/// 			Name:                pulumi.String("test-replication"),
/// 			ReplicationSchedule: pulumi.String("EVERY_10_MINUTES"),
/// 			Description:         pulumi.String("This is a replication resource"),
/// 			DestinationVolumeParameters: &netapp.VolumeReplicationDestinationVolumeParametersArgs{
/// 				StoragePool: destinationPool.ID(),
/// 				VolumeId:    pulumi.String("destination-volume"),
/// 				ShareName:   pulumi.String("source-volume"),
/// 				Description: pulumi.String("This is a replicated volume"),
/// 				TieringPolicy: &netapp.VolumeReplicationDestinationVolumeParametersTieringPolicyArgs{
/// 					CoolingThresholdDays: pulumi.Int(20),
/// 					TierAction:           pulumi.String("ENABLED"),
/// 				},
/// 			},
/// 			DeleteDestinationVolume: pulumi.Bool(true),
/// 			WaitForMirror:           pulumi.Bool(true),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			sourceVolume,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetNetworkArgs;
/// import com.pulumi.gcp.netapp.StoragePool;
/// import com.pulumi.gcp.netapp.StoragePoolArgs;
/// import com.pulumi.gcp.netapp.Volume;
/// import com.pulumi.gcp.netapp.VolumeArgs;
/// import com.pulumi.gcp.netapp.VolumeReplication;
/// import com.pulumi.gcp.netapp.VolumeReplicationArgs;
/// import com.pulumi.gcp.netapp.inputs.VolumeReplicationDestinationVolumeParametersArgs;
/// import com.pulumi.gcp.netapp.inputs.VolumeReplicationDestinationVolumeParametersTieringPolicyArgs;
/// import com.pulumi.resources.CustomResourceOptions;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var default = ComputeFunctions.getNetwork(GetNetworkArgs.builder()
///             .name("test-network")
///             .build());
///
///         var sourcePool = new StoragePool("sourcePool", StoragePoolArgs.builder()
///             .name("source-pool")
///             .location("us-central1")
///             .serviceLevel("PREMIUM")
///             .capacityGib("2048")
///             .network(default_.id())
///             .build());
///
///         var destinationPool = new StoragePool("destinationPool", StoragePoolArgs.builder()
///             .name("destination-pool")
///             .location("us-west2")
///             .serviceLevel("PREMIUM")
///             .capacityGib("2048")
///             .network(default_.id())
///             .allowAutoTiering(true)
///             .build());
///
///         var sourceVolume = new Volume("sourceVolume", VolumeArgs.builder()
///             .location(sourcePool.location())
///             .name("source-volume")
///             .capacityGib("100")
///             .shareName("source-volume")
///             .storagePool(sourcePool.name())
///             .protocols("NFSV3")
///             .deletionPolicy("FORCE")
///             .build());
///
///         var testReplication = new VolumeReplication("testReplication", VolumeReplicationArgs.builder()
///             .location(sourceVolume.location())
///             .volumeName(sourceVolume.name())
///             .name("test-replication")
///             .replicationSchedule("EVERY_10_MINUTES")
///             .description("This is a replication resource")
///             .destinationVolumeParameters(VolumeReplicationDestinationVolumeParametersArgs.builder()
///                 .storagePool(destinationPool.id())
///                 .volumeId("destination-volume")
///                 .shareName("source-volume")
///                 .description("This is a replicated volume")
///                 .tieringPolicy(VolumeReplicationDestinationVolumeParametersTieringPolicyArgs.builder()
///                     .coolingThresholdDays(20)
///                     .tierAction("ENABLED")
///                     .build())
///                 .build())
///             .deleteDestinationVolume(true)
///             .waitForMirror(true)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(sourceVolume)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   sourcePool:
///     type: gcp:netapp:StoragePool
///     name: source_pool
///     properties:
///       name: source-pool
///       location: us-central1
///       serviceLevel: PREMIUM
///       capacityGib: 2048
///       network: ${default.id}
///   destinationPool:
///     type: gcp:netapp:StoragePool
///     name: destination_pool
///     properties:
///       name: destination-pool
///       location: us-west2
///       serviceLevel: PREMIUM
///       capacityGib: 2048
///       network: ${default.id}
///       allowAutoTiering: true
///   sourceVolume:
///     type: gcp:netapp:Volume
///     name: source_volume
///     properties:
///       location: ${sourcePool.location}
///       name: source-volume
///       capacityGib: 100
///       shareName: source-volume
///       storagePool: ${sourcePool.name}
///       protocols:
///         - NFSV3
///       deletionPolicy: FORCE
///   testReplication:
///     type: gcp:netapp:VolumeReplication
///     name: test_replication
///     properties:
///       location: ${sourceVolume.location}
///       volumeName: ${sourceVolume.name}
///       name: test-replication
///       replicationSchedule: EVERY_10_MINUTES
///       description: This is a replication resource
///       destinationVolumeParameters:
///         storagePool: ${destinationPool.id}
///         volumeId: destination-volume
///         shareName: source-volume
///         description: This is a replicated volume
///         tieringPolicy:
///           coolingThresholdDays: 20
///           tierAction: ENABLED
///       deleteDestinationVolume: true
///       waitForMirror: true
///     options:
///       dependsOn:
///         - ${sourceVolume}
/// variables:
///   default:
///     fn::invoke:
///       function: gcp:compute:getNetwork
///       arguments:
///         name: test-network
/// ```
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
class VolumeReplication extends pulumi.CustomResource {
  /// Create time of the active directory. A timestamp in RFC3339 UTC "Zulu" format. Examples: "2023-06-22T09:13:01.617Z".
  late final pulumi.Output<String> createTime;
  late final pulumi.Output<bool?> deleteDestinationVolume;

  /// An description of this resource.
  late final pulumi.Output<String?> description;

  /// Full resource name of destination volume with format: `projects/{{project}}/locations/{{location}}/volumes/{{volumeId}}`
  late final pulumi.Output<String> destinationVolume;

  /// Destination volume parameters.
  /// Structure is documented below.
  late final pulumi.Output<VolumeReplicationDestinationVolumeParameters?>
  destinationVolumeParameters;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Only replications with mirror_state=MIRRORED can be stopped. A replication in mirror_state=TRANSFERRING
  /// currently receives an update and stopping the update might be undesirable. Set this parameter to true
  /// to stop anyway. All data transferred to the destination will be discarded and content of destination
  /// volume will remain at the state of the last successful update. Default is false.
  late final pulumi.Output<bool?> forceStopping;

  /// Condition of the relationship. Can be one of the following:
  /// - true: The replication relationship is healthy. It has not missed the most recent scheduled transfer.
  /// - false: The replication relationship is not healthy. It has missed the most recent scheduled transfer.
  late final pulumi.Output<bool> healthy;

  /// HybridPeeringDetails contains details about the hybrid peering.
  /// Structure is documented below.
  late final pulumi.Output<List<VolumeReplicationHybridPeeringDetail>>
  hybridPeeringDetails;

  /// Hybrid replication type.
  late final pulumi.Output<String> hybridReplicationType;

  /// Copy pastable snapmirror commands to be executed on onprem cluster by the customer.
  /// Structure is documented below.
  late final pulumi.Output<List<VolumeReplicationHybridReplicationUserCommand>>
  hybridReplicationUserCommands;

  /// Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Name of region for this resource. The resource needs to be created in the region of the destination volume.
  late final pulumi.Output<String> location;

  /// Indicates the state of the mirror between source and destination volumes. Depending on the amount of data
  /// in your source volume, PREPARING phase can take hours or days. mirrorState = MIRRORED indicates your baseline
  /// transfer ended and destination volume became accessible read-only. TRANSFERRING means a MIRRORED volume
  /// currently receives an update. Updated every 5 minutes.
  late final pulumi.Output<String> mirrorState;

  /// The name of the replication. Needs to be unique per location.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Set to false to stop/break the mirror. Stopping the mirror makes the destination volume read-write
  /// and act independently from the source volume.
  /// Set to true to enable/resume the mirror. WARNING: Resuming a mirror overwrites any changes
  /// done to the destination volume with the content of the source volume.
  late final pulumi.Output<bool?> replicationEnabled;

  /// Specifies the replication interval.
  /// Possible values are: `EVERY_10_MINUTES`, `HOURLY`, `DAILY`.
  late final pulumi.Output<String> replicationSchedule;

  /// Reverting a replication can swap source and destination volume roles. This field indicates if the `location` hosts
  /// the source or destination volume. For resume and revert and resume operations it is critical to understand
  /// which volume is the source volume, since it will overwrite changes done to the destination volume.
  late final pulumi.Output<String> role;

  /// Full resource name of source volume with format: `projects/{{project}}/locations/{{location}}/volumes/{{volumeId}}`
  late final pulumi.Output<String> sourceVolume;

  /// Indicates the state of replication resource. State of the mirror itself is indicated in mirrorState.
  late final pulumi.Output<String> state;

  /// State details of the replication resource.
  late final pulumi.Output<String> stateDetails;

  /// Replication transfer statistics. All statistics are updated every 5 minutes.
  /// Structure is documented below.
  late final pulumi.Output<List<VolumeReplicationTransferStat>> transferStats;

  /// The name of the existing source volume.
  late final pulumi.Output<String> volumeName;
  late final pulumi.Output<bool?> waitForMirror;

  /// Creates a new [VolumeReplication].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VolumeReplication]. {@macro pulumi_netapp_volume_replication_volume_replication_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VolumeReplication(
    String name, {
    VolumeReplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:netapp/volumeReplication:VolumeReplication',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.createTime = registerOutput<String>('createTime');
    this.deleteDestinationVolume = registerOutput<bool?>(
      'deleteDestinationVolume',
    );
    this.description = registerOutput<String?>('description');
    this.destinationVolume = registerOutput<String>('destinationVolume');
    this.destinationVolumeParameters =
        registerOutput<VolumeReplicationDestinationVolumeParameters?>(
          'destinationVolumeParameters',
        );
    this.effectiveLabels = registerOutput<Map<String, String>>(
      'effectiveLabels',
    );
    this.forceStopping = registerOutput<bool?>('forceStopping');
    this.healthy = registerOutput<bool>('healthy');
    this.hybridPeeringDetails =
        registerOutput<List<VolumeReplicationHybridPeeringDetail>>(
          'hybridPeeringDetails',
        );
    this.hybridReplicationType = registerOutput<String>(
      'hybridReplicationType',
    );
    this.hybridReplicationUserCommands =
        registerOutput<List<VolumeReplicationHybridReplicationUserCommand>>(
          'hybridReplicationUserCommands',
        );
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
    this.transferStats = registerOutput<List<VolumeReplicationTransferStat>>(
      'transferStats',
    );
    this.volumeName = registerOutput<String>('volumeName');
    this.waitForMirror = registerOutput<bool?>('waitForMirror');
  }
}
