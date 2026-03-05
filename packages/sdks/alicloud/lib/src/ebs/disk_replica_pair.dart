import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_replica_pair_args.dart';
import 'disk_replica_pair_state.dart';

/// Provides a Elastic Block Storage(EBS) Disk Replica Pair resource.
///
///
///
/// For information about Elastic Block Storage(EBS) Disk Replica Pair and how to use it, see [What is Disk Replica Pair](https://www.alibabacloud.com/help/en/ecs/developer-reference/api-ebs-2021-07-30-creatediskreplicapair).
///
/// &gt; **NOTE:** Available since v1.196.0.
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
/// import * as std from "@pulumi/std";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf-example";
/// const _default = alicloud.getRegions({
///     current: true,
/// });
/// const defaultGetRegions = _default.then(_default => alicloud.ebs.getRegions({
///     regionId: _default.regions?.[0]?.id,
/// }));
/// const defaultEcsDisk = new alicloud.ecs.EcsDisk("default", {
///     zoneId: defaultGetRegions.then(defaultGetRegions => defaultGetRegions.regions?.[0]?.zones?.[0]?.zoneId),
///     category: "cloud_essd",
///     deleteAutoSnapshot: true,
///     deleteWithInstance: true,
///     description: name,
///     diskName: name,
///     enableAutoSnapshot: true,
///     encrypted: true,
///     size: 500,
///     tags: {
///         Created: "TF",
///         For: "example",
///         controlledBy: "ear",
///     },
/// });
/// const destination = new alicloud.ecs.EcsDisk("destination", {
///     zoneId: defaultGetRegions.then(defaultGetRegions => defaultGetRegions.regions?.[0]?.zones?.[1]?.zoneId),
///     category: "cloud_essd",
///     deleteAutoSnapshot: true,
///     deleteWithInstance: true,
///     description: std.format({
///         input: "%s-destination",
///         args: [name],
///     }).then(invoke => invoke.result),
///     diskName: name,
///     enableAutoSnapshot: true,
///     encrypted: true,
///     size: 500,
///     tags: {
///         Created: "TF",
///         For: "example",
///         controlledBy: "ear",
///     },
/// });
/// const defaultDiskReplicaPair = new alicloud.ebs.DiskReplicaPair("default", {
///     destinationDiskId: destination.id,
///     destinationRegionId: _default.then(_default => _default.regions?.[0]?.id),
///     paymentType: "POSTPAY",
///     destinationZoneId: destination.zoneId,
///     sourceZoneId: defaultEcsDisk.zoneId,
///     diskId: defaultEcsDisk.id,
///     description: name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_std as std
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// default = alicloud.get_regions(current=True)
/// default_get_regions = alicloud.ebs.get_regions(region_id=default.regions[0].id)
/// default_ecs_disk = alicloud.ecs.EcsDisk("default",
///     zone_id=default_get_regions.regions[0].zones[0].zone_id,
///     category="cloud_essd",
///     delete_auto_snapshot=True,
///     delete_with_instance=True,
///     description=name,
///     disk_name=name,
///     enable_auto_snapshot=True,
///     encrypted=True,
///     size=500,
///     tags={
///         "Created": "TF",
///         "For": "example",
///         "controlledBy": "ear",
///     })
/// destination = alicloud.ecs.EcsDisk("destination",
///     zone_id=default_get_regions.regions[0].zones[1].zone_id,
///     category="cloud_essd",
///     delete_auto_snapshot=True,
///     delete_with_instance=True,
///     description=std.format(input="%s-destination",
///         args=[name]).result,
///     disk_name=name,
///     enable_auto_snapshot=True,
///     encrypted=True,
///     size=500,
///     tags={
///         "Created": "TF",
///         "For": "example",
///         "controlledBy": "ear",
///     })
/// default_disk_replica_pair = alicloud.ebs.DiskReplicaPair("default",
///     destination_disk_id=destination.id,
///     destination_region_id=default.regions[0].id,
///     payment_type="POSTPAY",
///     destination_zone_id=destination.zone_id,
///     source_zone_id=default_ecs_disk.zone_id,
///     disk_id=default_ecs_disk.id,
///     description=name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Std = Pulumi.Std;
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
///     var defaultEcsDisk = new AliCloud.Ecs.EcsDisk("default", new()
///     {
///         ZoneId = defaultGetRegions.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Zones[0]?.ZoneId),
///         Category = "cloud_essd",
///         DeleteAutoSnapshot = true,
///         DeleteWithInstance = true,
///         Description = name,
///         DiskName = name,
///         EnableAutoSnapshot = true,
///         Encrypted = true,
///         Size = 500,
///         Tags =
///         {
///             { "Created", "TF" },
///             { "For", "example" },
///             { "controlledBy", "ear" },
///         },
///     });
///
///     var destination = new AliCloud.Ecs.EcsDisk("destination", new()
///     {
///         ZoneId = defaultGetRegions.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Zones[1]?.ZoneId),
///         Category = "cloud_essd",
///         DeleteAutoSnapshot = true,
///         DeleteWithInstance = true,
///         Description = Std.Format.Invoke(new()
///         {
///             Input = "%s-destination",
///             Args = new[]
///             {
///                 name,
///             },
///         }).Apply(invoke => invoke.Result),
///         DiskName = name,
///         EnableAutoSnapshot = true,
///         Encrypted = true,
///         Size = 500,
///         Tags =
///         {
///             { "Created", "TF" },
///             { "For", "example" },
///             { "controlledBy", "ear" },
///         },
///     });
///
///     var defaultDiskReplicaPair = new AliCloud.Ebs.DiskReplicaPair("default", new()
///     {
///         DestinationDiskId = destination.Id,
///         DestinationRegionId = @default.Apply(@default => @default.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Id)),
///         PaymentType = "POSTPAY",
///         DestinationZoneId = destination.ZoneId,
///         SourceZoneId = defaultEcsDisk.ZoneId,
///         DiskId = defaultEcsDisk.Id,
///         Description = name,
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
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
/// 		defaultEcsDisk, err := ecs.NewEcsDisk(ctx, "default", &ecs.EcsDiskArgs{
/// 			ZoneId:             pulumi.String(defaultGetRegions.Regions[0].Zones[0].ZoneId),
/// 			Category:           pulumi.String("cloud_essd"),
/// 			DeleteAutoSnapshot: pulumi.Bool(true),
/// 			DeleteWithInstance: pulumi.Bool(true),
/// 			Description:        pulumi.String(name),
/// 			DiskName:           pulumi.String(name),
/// 			EnableAutoSnapshot: pulumi.Bool(true),
/// 			Encrypted:          pulumi.Bool(true),
/// 			Size:               pulumi.Int(500),
/// 			Tags: pulumi.StringMap{
/// 				"Created":      pulumi.String("TF"),
/// 				"For":          pulumi.String("example"),
/// 				"controlledBy": pulumi.String("ear"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "%s-destination",
/// 			Args: []string{
/// 				name,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		destination, err := ecs.NewEcsDisk(ctx, "destination", &ecs.EcsDiskArgs{
/// 			ZoneId:             pulumi.String(defaultGetRegions.Regions[0].Zones[1].ZoneId),
/// 			Category:           pulumi.String("cloud_essd"),
/// 			DeleteAutoSnapshot: pulumi.Bool(true),
/// 			DeleteWithInstance: pulumi.Bool(true),
/// 			Description:        pulumi.String(invokeFormat.Result),
/// 			DiskName:           pulumi.String(name),
/// 			EnableAutoSnapshot: pulumi.Bool(true),
/// 			Encrypted:          pulumi.Bool(true),
/// 			Size:               pulumi.Int(500),
/// 			Tags: pulumi.StringMap{
/// 				"Created":      pulumi.String("TF"),
/// 				"For":          pulumi.String("example"),
/// 				"controlledBy": pulumi.String("ear"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ebs.NewDiskReplicaPair(ctx, "default", &ebs.DiskReplicaPairArgs{
/// 			DestinationDiskId:   destination.ID(),
/// 			DestinationRegionId: pulumi.String(_default.Regions[0].Id),
/// 			PaymentType:         pulumi.String("POSTPAY"),
/// 			DestinationZoneId:   destination.ZoneId,
/// 			SourceZoneId:        defaultEcsDisk.ZoneId,
/// 			DiskId:              defaultEcsDisk.ID(),
/// 			Description:         pulumi.String(name),
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
/// import com.pulumi.alicloud.ecs.EcsDisk;
/// import com.pulumi.alicloud.ecs.EcsDiskArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FormatArgs;
/// import com.pulumi.alicloud.ebs.DiskReplicaPair;
/// import com.pulumi.alicloud.ebs.DiskReplicaPairArgs;
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
///         var defaultEcsDisk = new EcsDisk("defaultEcsDisk", EcsDiskArgs.builder()
///             .zoneId(defaultGetRegions.regions()[0].zones()[0].zoneId())
///             .category("cloud_essd")
///             .deleteAutoSnapshot(true)
///             .deleteWithInstance(true)
///             .description(name)
///             .diskName(name)
///             .enableAutoSnapshot(true)
///             .encrypted(true)
///             .size(500)
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "TF"),
///                 Map.entry("For", "example"),
///                 Map.entry("controlledBy", "ear")
///             ))
///             .build());
///
///         var destination = new EcsDisk("destination", EcsDiskArgs.builder()
///             .zoneId(defaultGetRegions.regions()[0].zones()[1].zoneId())
///             .category("cloud_essd")
///             .deleteAutoSnapshot(true)
///             .deleteWithInstance(true)
///             .description(StdFunctions.format(FormatArgs.builder()
///                 .input("%s-destination")
///                 .args(name)
///                 .build()).result())
///             .diskName(name)
///             .enableAutoSnapshot(true)
///             .encrypted(true)
///             .size(500)
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "TF"),
///                 Map.entry("For", "example"),
///                 Map.entry("controlledBy", "ear")
///             ))
///             .build());
///
///         var defaultDiskReplicaPair = new DiskReplicaPair("defaultDiskReplicaPair", DiskReplicaPairArgs.builder()
///             .destinationDiskId(destination.id())
///             .destinationRegionId(default_.regions()[0].id())
///             .paymentType("POSTPAY")
///             .destinationZoneId(destination.zoneId())
///             .sourceZoneId(defaultEcsDisk.zoneId())
///             .diskId(defaultEcsDisk.id())
///             .description(name)
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
///   defaultEcsDisk:
///     type: alicloud:ecs:EcsDisk
///     name: default
///     properties:
///       zoneId: ${defaultGetRegions.regions[0].zones[0].zoneId}
///       category: cloud_essd
///       deleteAutoSnapshot: 'true'
///       deleteWithInstance: 'true'
///       description: ${name}
///       diskName: ${name}
///       enableAutoSnapshot: 'true'
///       encrypted: 'true'
///       size: '500'
///       tags:
///         Created: TF
///         For: example
///         controlledBy: ear
///   destination:
///     type: alicloud:ecs:EcsDisk
///     properties:
///       zoneId: ${defaultGetRegions.regions[0].zones[1].zoneId}
///       category: cloud_essd
///       deleteAutoSnapshot: 'true'
///       deleteWithInstance: 'true'
///       description:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: '%s-destination'
///             args:
///               - ${name}
///           return: result
///       diskName: ${name}
///       enableAutoSnapshot: 'true'
///       encrypted: 'true'
///       size: '500'
///       tags:
///         Created: TF
///         For: example
///         controlledBy: ear
///   defaultDiskReplicaPair:
///     type: alicloud:ebs:DiskReplicaPair
///     name: default
///     properties:
///       destinationDiskId: ${destination.id}
///       destinationRegionId: ${default.regions[0].id}
///       paymentType: POSTPAY
///       destinationZoneId: ${destination.zoneId}
///       sourceZoneId: ${defaultEcsDisk.zoneId}
///       diskId: ${defaultEcsDisk.id}
///       description: ${name}
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
/// Elastic Block Storage(EBS) Disk Replica Pair can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ebs/diskReplicaPair:DiskReplicaPair example <id>
/// ```
class DiskReplicaPair extends pulumi.CustomResource {
  /// The bandwidth for asynchronous data replication between cloud disks. The unit is Kbps. Value range:
  /// - 10240 Kbps: equal to 10 Mbps.
  /// - 20480 Kbps: equal to 20 Mbps.
  /// - 51200 Kbps: equal to 50 Mbps.
  /// - 102400 Kbps: equal to 100 Mbps.
  ///
  /// Default value: 10240.
  /// This parameter cannot be specified when the ChargeType value is PayAsYouGo The system value is 0, which indicates that the disk is dynamically allocated according to data write changes during asynchronous replication.
  late final pulumi.Output<int?> bandwidth;
  /// The creation time of the resource
  late final pulumi.Output<int> createTime;
  /// The description of the asynchronous replication relationship. 2 to 256 English or Chinese characters in length and cannot start with' http:// 'or' https.
  late final pulumi.Output<String?> description;
  /// The ID of the standby disk.
  late final pulumi.Output<String> destinationDiskId;
  /// The ID of the region to which the disaster recovery site belongs.
  late final pulumi.Output<String> destinationRegionId;
  /// The ID of the zone to which the disaster recovery site belongs.
  late final pulumi.Output<String> destinationZoneId;
  /// The ID of the primary disk.
  late final pulumi.Output<String> diskId;
  /// The name of the asynchronous replication relationship. The length must be 2 to 128 characters in length and must start with a letter or Chinese name. It cannot start with http:// or https. It can contain Chinese, English, numbers, half-width colons (:), underscores (_), half-width periods (.), or dashes (-).
  late final pulumi.Output<String> diskReplicaPairName;
  /// Whether to synchronize immediately. Value range:
  /// - true: Start data synchronization immediately.
  /// - false: Data Synchronization starts after the RPO time period.
  ///
  /// Default value: false.
  late final pulumi.Output<bool?> oneShot;
  /// . Field 'pair_name' has been deprecated from provider version 1.245.0. New field 'disk_replica_pair_name' instead.
  late final pulumi.Output<String> pairName;
  /// The payment type of the resource
  late final pulumi.Output<String> paymentType;
  /// The purchase duration of the asynchronous replication relationship. This parameter is required when 'ChargeType = PrePay. The duration unit is specified by'periodunit', and the value range is:
  /// - When 'PeriodUnit = Week', the value range of this parameter is 1, 2, 3, and 4.
  /// - When 'PeriodUnit = Month', the value range of this parameter is 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 24, 36, 48, 60.
  late final pulumi.Output<int?> period;
  /// The unit of the purchase time of the asynchronous replication relationship. Value range:
  /// - Week: Week.
  /// - Month: Month.
  ///
  /// Default value: Month.
  late final pulumi.Output<String?> periodUnit;
  /// The region ID  of the resource
  late final pulumi.Output<String> regionId;
  /// The ID of the resource group
  late final pulumi.Output<String> resourceGroupId;
  /// Specifies whether to enable the reverse replication sub-feature. Valid values: true and false. Default value: true.
  late final pulumi.Output<bool?> reverseReplicate;
  /// The RPO value set by the consistency group in seconds. Currently only 900 seconds are supported.
  late final pulumi.Output<int> rpo;
  /// The ID of the zone to which the production site belongs.
  late final pulumi.Output<String> sourceZoneId;
  /// The status of the resource
  late final pulumi.Output<String> status;
  /// The tag of the resource
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [DiskReplicaPair].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DiskReplicaPair]. {@macro pulumi_ebs_disk_replica_pair_disk_replica_pair_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DiskReplicaPair(
    String name, {
    DiskReplicaPairArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ebs/diskReplicaPair:DiskReplicaPair',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bandwidth = registerOutput<int?>('bandwidth');
    createTime = registerOutput<int>('createTime');
    description = registerOutput<String?>('description');
    destinationDiskId = registerOutput<String>('destinationDiskId');
    destinationRegionId = registerOutput<String>('destinationRegionId');
    destinationZoneId = registerOutput<String>('destinationZoneId');
    diskId = registerOutput<String>('diskId');
    diskReplicaPairName = registerOutput<String>('diskReplicaPairName');
    oneShot = registerOutput<bool?>('oneShot');
    pairName = registerOutput<String>('pairName');
    paymentType = registerOutput<String>('paymentType');
    period = registerOutput<int?>('period');
    periodUnit = registerOutput<String?>('periodUnit');
    regionId = registerOutput<String>('regionId');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    reverseReplicate = registerOutput<bool?>('reverseReplicate');
    rpo = registerOutput<int>('rpo');
    sourceZoneId = registerOutput<String>('sourceZoneId');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [DiskReplicaPair] resource's state with the given [name] and [id].
  static DiskReplicaPair get(
    String name,
    pulumi.Input<String> id, {
    DiskReplicaPairState? state,
  }) {
    return DiskReplicaPair._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DiskReplicaPair._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ebs/diskReplicaPair:DiskReplicaPair',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bandwidth = registerOutput<int?>('bandwidth');
    createTime = registerOutput<int>('createTime');
    description = registerOutput<String?>('description');
    destinationDiskId = registerOutput<String>('destinationDiskId');
    destinationRegionId = registerOutput<String>('destinationRegionId');
    destinationZoneId = registerOutput<String>('destinationZoneId');
    diskId = registerOutput<String>('diskId');
    diskReplicaPairName = registerOutput<String>('diskReplicaPairName');
    oneShot = registerOutput<bool?>('oneShot');
    pairName = registerOutput<String>('pairName');
    paymentType = registerOutput<String>('paymentType');
    period = registerOutput<int?>('period');
    periodUnit = registerOutput<String?>('periodUnit');
    regionId = registerOutput<String>('regionId');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    reverseReplicate = registerOutput<bool?>('reverseReplicate');
    rpo = registerOutput<int>('rpo');
    sourceZoneId = registerOutput<String>('sourceZoneId');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
