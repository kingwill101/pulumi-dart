import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_replica_group_args.dart';
import 'disk_replica_group_state.dart';

/// Provides a Elastic Block Storage(EBS) Disk Replica Group resource.
///
/// consistent replica group.
///
/// For information about Elastic Block Storage(EBS) Disk Replica Group and how to use it, see [What is Disk Replica Group](https://www.alibabacloud.com/help/en/elastic-compute-service/latest/creatediskreplicagroup).
///
/// &gt; **NOTE:** Available since v1.187.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf-example";
/// const _default = alicloud.getRegions({
///     current: true,
/// });
/// const defaultGetRegions = _default.then(_default => alicloud.ebs.getRegions({
///     regionId: _default.regions?.[0]?.id,
/// }));
/// const defaultDiskReplicaGroup = new alicloud.ebs.DiskReplicaGroup("default", {
///     sourceRegionId: _default.then(_default => _default.regions?.[0]?.id),
///     sourceZoneId: defaultGetRegions.then(defaultGetRegions => defaultGetRegions.regions?.[0]?.zones?.[0]?.zoneId),
///     destinationRegionId: _default.then(_default => _default.regions?.[0]?.id),
///     destinationZoneId: defaultGetRegions.then(defaultGetRegions => defaultGetRegions.regions?.[0]?.zones?.[1]?.zoneId),
///     groupName: name,
///     description: name,
///     rpo: 900,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// default = alicloud.get_regions(current=True)
/// default_get_regions = alicloud.ebs.get_regions(region_id=default.regions[0].id)
/// default_disk_replica_group = alicloud.ebs.DiskReplicaGroup("default",
///     source_region_id=default.regions[0].id,
///     source_zone_id=default_get_regions.regions[0].zones[0].zone_id,
///     destination_region_id=default.regions[0].id,
///     destination_zone_id=default_get_regions.regions[0].zones[1].zone_id,
///     group_name=name,
///     description=name,
///     rpo=900)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "tf-example";
///     var @default = AliCloud.GetRegions.Invoke(new()
///     {
///         Current = true,
///     });
///
///     var defaultGetRegions = AliCloud.Ebs.GetRegions.Invoke(new()
///     {
///         RegionId = @default.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Id),
///     });
///
///     var defaultDiskReplicaGroup = new AliCloud.Ebs.DiskReplicaGroup("default", new()
///     {
///         SourceRegionId = @default.Apply(@default => @default.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Id)),
///         SourceZoneId = defaultGetRegions.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Zones[0]?.ZoneId),
///         DestinationRegionId = @default.Apply(@default => @default.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Id)),
///         DestinationZoneId = defaultGetRegions.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Zones[1]?.ZoneId),
///         GroupName = name,
///         Description = name,
///         Rpo = 900,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ebs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := alicloud.GetRegions(ctx, &alicloud.GetRegionsArgs{
/// 			Current: pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetRegions, err := ebs.GetRegions(ctx, &ebs.GetRegionsArgs{
/// 			RegionId: pulumi.StringRef(_default.Regions[0].Id),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ebs.NewDiskReplicaGroup(ctx, "default", &ebs.DiskReplicaGroupArgs{
/// 			SourceRegionId:      pulumi.String(_default.Regions[0].Id),
/// 			SourceZoneId:        pulumi.String(defaultGetRegions.Regions[0].Zones[0].ZoneId),
/// 			DestinationRegionId: pulumi.String(_default.Regions[0].Id),
/// 			DestinationZoneId:   pulumi.String(defaultGetRegions.Regions[0].Zones[1].ZoneId),
/// 			GroupName:           pulumi.String(name),
/// 			Description:         pulumi.String(name),
/// 			Rpo:                 pulumi.Int(900),
/// 		})
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.ebs.EbsFunctions;
/// import com.pulumi.alicloud.ebs.DiskReplicaGroup;
/// import com.pulumi.alicloud.ebs.DiskReplicaGroupArgs;
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
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("tf-example");
///         final var default = AlicloudFunctions.getRegions(GetRegionsArgs.builder()
///             .current(true)
///             .build());
///
///         final var defaultGetRegions = EbsFunctions.getRegions(GetRegionsArgs.builder()
///             .regionId(default_.regions()[0].id())
///             .build());
///
///         var defaultDiskReplicaGroup = new DiskReplicaGroup("defaultDiskReplicaGroup", DiskReplicaGroupArgs.builder()
///             .sourceRegionId(default_.regions()[0].id())
///             .sourceZoneId(defaultGetRegions.regions()[0].zones()[0].zoneId())
///             .destinationRegionId(default_.regions()[0].id())
///             .destinationZoneId(defaultGetRegions.regions()[0].zones()[1].zoneId())
///             .groupName(name)
///             .description(name)
///             .rpo(900)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf-example
/// resources:
///   defaultDiskReplicaGroup:
///     type: alicloud:ebs:DiskReplicaGroup
///     name: default
///     properties:
///       sourceRegionId: ${default.regions[0].id}
///       sourceZoneId: ${defaultGetRegions.regions[0].zones[0].zoneId}
///       destinationRegionId: ${default.regions[0].id}
///       destinationZoneId: ${defaultGetRegions.regions[0].zones[1].zoneId}
///       groupName: ${name}
///       description: ${name}
///       rpo: 900
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getRegions
///       arguments:
///         current: true
///   defaultGetRegions:
///     fn::invoke:
///       function: alicloud:ebs:getRegions
///       arguments:
///         regionId: ${default.regions[0].id}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Elastic Block Storage(EBS) Disk Replica Group can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ebs/diskReplicaGroup:DiskReplicaGroup example <id>
/// ```
class DiskReplicaGroup extends pulumi.CustomResource {
  /// The description of the consistent replication group.
  late final pulumi.Output<String?> description;

  /// The ID of the region to which the disaster recovery site belongs.
  late final pulumi.Output<String> destinationRegionId;

  /// The ID of the zone to which the disaster recovery site belongs.
  late final pulumi.Output<String> destinationZoneId;

  /// Consistent replication group name.
  late final pulumi.Output<String> diskReplicaGroupName;

  /// . Field 'group_name' has been deprecated from provider version 1.245.0. New field 'disk_replica_group_name' instead.
  late final pulumi.Output<String> groupName;

  /// Whether to synchronize immediately. Value range:
  /// - true: Start data synchronization immediately.
  /// - false: Data Synchronization starts after the RPO time period.
  ///
  /// Default value: false.
  late final pulumi.Output<bool?> oneShot;

  /// List of replication pair IDs contained in a consistent replication group.
  late final pulumi.Output<List<String>?> pairIds;

  /// resource group ID of enterprise
  late final pulumi.Output<String> resourceGroupId;

  /// Specifies whether to enable the reverse replication sub-feature. Valid values: true and false. Default value: true.
  late final pulumi.Output<bool?> reverseReplicate;

  /// The RPO value set by the consistency group in seconds. Currently only 900 seconds are supported.
  late final pulumi.Output<int?> rpo;

  /// The ID of the region to which the production site belongs.
  late final pulumi.Output<String> sourceRegionId;

  /// The ID of the zone to which the production site belongs.
  late final pulumi.Output<String> sourceZoneId;

  /// The status of the consistent replication group. Possible values:
  /// - invalid: invalid. This state indicates that there is an exception to the replication pair in the consistent replication group.
  /// - creating: creating.
  /// - created: created.
  /// - create_failed: creation failed.
  /// - manual_syncing: in a single synchronization. If it is the first single synchronization, this status is also displayed in the synchronization.
  /// - syncing: synchronization. This state is the first time data is copied asynchronously between the master and slave disks.
  /// - normal: normal. When data replication is completed within the current cycle of asynchronous replication, it will be in this state.
  /// - stopping: stopping.
  /// - stopped: stopped.
  /// - stop_failed: Stop failed.
  /// - Failover: failover.
  /// - Failed: failover completed.
  /// - failover_failed: failover failed.
  /// - Reprotection: In reverse copy operation.
  /// - reprotect_failed: reverse replication failed.
  /// - deleting: deleting.
  /// - delete_failed: delete failed.
  /// - deleted: deleted.
  late final pulumi.Output<String> status;

  /// The tag of the resource
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [DiskReplicaGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DiskReplicaGroup]. {@macro pulumi_ebs_disk_replica_group_disk_replica_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DiskReplicaGroup(
    String name, {
    DiskReplicaGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ebs/diskReplicaGroup:DiskReplicaGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String?>('description');
    destinationRegionId = registerOutput<String>('destinationRegionId');
    destinationZoneId = registerOutput<String>('destinationZoneId');
    diskReplicaGroupName = registerOutput<String>('diskReplicaGroupName');
    groupName = registerOutput<String>('groupName');
    oneShot = registerOutput<bool?>('oneShot');
    pairIds = registerOutput<List<String>?>('pairIds');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    reverseReplicate = registerOutput<bool?>('reverseReplicate');
    rpo = registerOutput<int?>('rpo');
    sourceRegionId = registerOutput<String>('sourceRegionId');
    sourceZoneId = registerOutput<String>('sourceZoneId');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [DiskReplicaGroup] resource's state with the given [name] and [id].
  static DiskReplicaGroup get(
    String name,
    pulumi.Input<String> id, {
    DiskReplicaGroupState? state,
  }) {
    return DiskReplicaGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DiskReplicaGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ebs/diskReplicaGroup:DiskReplicaGroup',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String?>('description');
    destinationRegionId = registerOutput<String>('destinationRegionId');
    destinationZoneId = registerOutput<String>('destinationZoneId');
    diskReplicaGroupName = registerOutput<String>('diskReplicaGroupName');
    groupName = registerOutput<String>('groupName');
    oneShot = registerOutput<bool?>('oneShot');
    pairIds = registerOutput<List<String>?>('pairIds');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    reverseReplicate = registerOutput<bool?>('reverseReplicate');
    rpo = registerOutput<int?>('rpo');
    sourceRegionId = registerOutput<String>('sourceRegionId');
    sourceZoneId = registerOutput<String>('sourceZoneId');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
