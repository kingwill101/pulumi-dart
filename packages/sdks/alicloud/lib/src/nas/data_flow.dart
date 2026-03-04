import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_flow_args.dart';
import 'data_flow_state.dart';

/// Provides a File Storage (NAS) Data Flow resource.
///
/// For information about File Storage (NAS) Data Flow and how to use it, see [What is Data Flow](https://www.alibabacloud.com/help/en/doc-detail/27530.html).
///
/// &gt; **NOTE:** Available since v1.153.0.
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
/// import * as random from "@pulumi/random";
/// import * as std from "@pulumi/std";
///
/// const example = alicloud.nas.getZones({
///     fileSystemType: "cpfs",
/// });
/// const exampleNetwork = new alicloud.vpc.Network("example", {
///     vpcName: "terraform-example",
///     cidrBlock: "172.17.3.0/24",
/// });
/// const exampleSwitch = new alicloud.vpc.Switch("example", {
///     vswitchName: "terraform-example",
///     cidrBlock: "172.17.3.0/24",
///     vpcId: exampleNetwork.id,
///     zoneId: example.then(example => example.zones?.[1]?.zoneId),
/// });
/// const exampleFileSystem = new alicloud.nas.FileSystem("example", {
///     protocolType: "cpfs",
///     storageType: "advance_200",
///     fileSystemType: "cpfs",
///     capacity: 3600,
///     description: "terraform-example",
///     zoneId: example.then(example => example.zones?.[1]?.zoneId),
///     vpcId: exampleNetwork.id,
///     vswitchId: exampleSwitch.id,
/// });
/// const exampleMountTarget = new alicloud.nas.MountTarget("example", {
///     fileSystemId: exampleFileSystem.id,
///     vswitchId: exampleSwitch.id,
/// });
/// const exampleInteger = new random.index.Integer("example", {
///     max: 99999,
///     min: 10000,
/// });
/// const exampleBucket = new alicloud.oss.Bucket("example", {
///     bucket: `example-value-${exampleInteger.result}`,
///     acl: "private",
///     tags: {
///         "cpfs-dataflow": "true",
///     },
/// });
/// const exampleFileset = new alicloud.nas.Fileset("example", {
///     fileSystemId: exampleMountTarget.fileSystemId,
///     description: "terraform-example",
///     fileSystemPath: "/example_path/",
/// });
/// const exampleDataFlow = new alicloud.nas.DataFlow("example", {
///     fsetId: exampleFileset.filesetId,
///     description: "terraform-example",
///     fileSystemId: exampleFileSystem.id,
///     sourceSecurityType: "SSL",
///     sourceStorage: std.joinOutput({
///         separator: "",
///         input: [
///             "oss://",
///             exampleBucket.bucket,
///         ],
///     }).apply(invoke => invoke.result),
///     throughput: 600,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
/// import pulumi_std as std
///
/// example = alicloud.nas.get_zones(file_system_type="cpfs")
/// example_network = alicloud.vpc.Network("example",
///     vpc_name="terraform-example",
///     cidr_block="172.17.3.0/24")
/// example_switch = alicloud.vpc.Switch("example",
///     vswitch_name="terraform-example",
///     cidr_block="172.17.3.0/24",
///     vpc_id=example_network.id,
///     zone_id=example.zones[1].zone_id)
/// example_file_system = alicloud.nas.FileSystem("example",
///     protocol_type="cpfs",
///     storage_type="advance_200",
///     file_system_type="cpfs",
///     capacity=3600,
///     description="terraform-example",
///     zone_id=example.zones[1].zone_id,
///     vpc_id=example_network.id,
///     vswitch_id=example_switch.id)
/// example_mount_target = alicloud.nas.MountTarget("example",
///     file_system_id=example_file_system.id,
///     vswitch_id=example_switch.id)
/// example_integer = random.index.Integer("example",
///     max=99999,
///     min=10000)
/// example_bucket = alicloud.oss.Bucket("example",
///     bucket=f"example-value-{example_integer['result']}",
///     acl="private",
///     tags={
///         "cpfs-dataflow": "true",
///     })
/// example_fileset = alicloud.nas.Fileset("example",
///     file_system_id=example_mount_target.file_system_id,
///     description="terraform-example",
///     file_system_path="/example_path/")
/// example_data_flow = alicloud.nas.DataFlow("example",
///     fset_id=example_fileset.fileset_id,
///     description="terraform-example",
///     file_system_id=example_file_system.id,
///     source_security_type="SSL",
///     source_storage=std.join_output(separator="",
///         input=[
///             "oss://",
///             example_bucket.bucket,
///         ]).apply(lambda invoke: invoke.result),
///     throughput=600)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Nas.GetZones.Invoke(new()
///     {
///         FileSystemType = "cpfs",
///     });
///
///     var exampleNetwork = new AliCloud.Vpc.Network("example", new()
///     {
///         VpcName = "terraform-example",
///         CidrBlock = "172.17.3.0/24",
///     });
///
///     var exampleSwitch = new AliCloud.Vpc.Switch("example", new()
///     {
///         VswitchName = "terraform-example",
///         CidrBlock = "172.17.3.0/24",
///         VpcId = exampleNetwork.Id,
///         ZoneId = example.Apply(getZonesResult => getZonesResult.Zones[1]?.ZoneId),
///     });
///
///     var exampleFileSystem = new AliCloud.Nas.FileSystem("example", new()
///     {
///         ProtocolType = "cpfs",
///         StorageType = "advance_200",
///         FileSystemType = "cpfs",
///         Capacity = 3600,
///         Description = "terraform-example",
///         ZoneId = example.Apply(getZonesResult => getZonesResult.Zones[1]?.ZoneId),
///         VpcId = exampleNetwork.Id,
///         VswitchId = exampleSwitch.Id,
///     });
///
///     var exampleMountTarget = new AliCloud.Nas.MountTarget("example", new()
///     {
///         FileSystemId = exampleFileSystem.Id,
///         VswitchId = exampleSwitch.Id,
///     });
///
///     var exampleInteger = new Random.Index.Integer("example", new()
///     {
///         Max = 99999,
///         Min = 10000,
///     });
///
///     var exampleBucket = new AliCloud.Oss.Bucket("example", new()
///     {
///         BucketName = $"example-value-{exampleInteger.Result}",
///         Acl = "private",
///         Tags =
///         {
///             { "cpfs-dataflow", "true" },
///         },
///     });
///
///     var exampleFileset = new AliCloud.Nas.Fileset("example", new()
///     {
///         FileSystemId = exampleMountTarget.FileSystemId,
///         Description = "terraform-example",
///         FileSystemPath = "/example_path/",
///     });
///
///     var exampleDataFlow = new AliCloud.Nas.DataFlow("example", new()
///     {
///         FsetId = exampleFileset.FilesetId,
///         Description = "terraform-example",
///         FileSystemId = exampleFileSystem.Id,
///         SourceSecurityType = "SSL",
///         SourceStorage = Std.Join.Invoke(new()
///         {
///             Separator = "",
///             Input = new[]
///             {
///                 "oss://",
///                 exampleBucket.BucketName,
///             },
///         }).Apply(invoke => invoke.Result),
///         Throughput = 600,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/nas"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/oss"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := nas.GetZones(ctx, &nas.GetZonesArgs{
/// 			FileSystemType: pulumi.StringRef("cpfs"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNetwork, err := vpc.NewNetwork(ctx, "example", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String("terraform-example"),
/// 			CidrBlock: pulumi.String("172.17.3.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSwitch, err := vpc.NewSwitch(ctx, "example", &vpc.SwitchArgs{
/// 			VswitchName: pulumi.String("terraform-example"),
/// 			CidrBlock:   pulumi.String("172.17.3.0/24"),
/// 			VpcId:       exampleNetwork.ID(),
/// 			ZoneId:      pulumi.String(example.Zones[1].ZoneId),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFileSystem, err := nas.NewFileSystem(ctx, "example", &nas.FileSystemArgs{
/// 			ProtocolType:   pulumi.String("cpfs"),
/// 			StorageType:    pulumi.String("advance_200"),
/// 			FileSystemType: pulumi.String("cpfs"),
/// 			Capacity:       pulumi.Int(3600),
/// 			Description:    pulumi.String("terraform-example"),
/// 			ZoneId:         pulumi.String(example.Zones[1].ZoneId),
/// 			VpcId:          exampleNetwork.ID(),
/// 			VswitchId:      exampleSwitch.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleMountTarget, err := nas.NewMountTarget(ctx, "example", &nas.MountTargetArgs{
/// 			FileSystemId: exampleFileSystem.ID(),
/// 			VswitchId:    exampleSwitch.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleInteger, err := random.NewInteger(ctx, "example", &random.IntegerArgs{
/// 			Max: 99999,
/// 			Min: 10000,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleBucket, err := oss.NewBucket(ctx, "example", &oss.BucketArgs{
/// 			Bucket: pulumi.Sprintf("example-value-%v", exampleInteger.Result),
/// 			Acl:    pulumi.String("private"),
/// 			Tags: pulumi.StringMap{
/// 				"cpfs-dataflow": pulumi.String("true"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFileset, err := nas.NewFileset(ctx, "example", &nas.FilesetArgs{
/// 			FileSystemId:   exampleMountTarget.FileSystemId,
/// 			Description:    pulumi.String("terraform-example"),
/// 			FileSystemPath: pulumi.String("/example_path/"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = nas.NewDataFlow(ctx, "example", &nas.DataFlowArgs{
/// 			FsetId:             exampleFileset.FilesetId,
/// 			Description:        pulumi.String("terraform-example"),
/// 			FileSystemId:       exampleFileSystem.ID(),
/// 			SourceSecurityType: pulumi.String("SSL"),
/// 			SourceStorage: pulumi.String(std.JoinOutput(ctx, std.JoinOutputArgs{
/// 				Separator: pulumi.String(""),
/// 				Input: pulumi.StringArray{
/// 					pulumi.String("oss://"),
/// 					exampleBucket.Bucket,
/// 				},
/// 			}, nil).ApplyT(func(invoke std.JoinResult) (*string, error) {
/// 				return invoke.Result, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			Throughput: pulumi.Int(600),
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
/// import com.pulumi.alicloud.nas.NasFunctions;
/// import com.pulumi.alicloud.nas.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.nas.FileSystem;
/// import com.pulumi.alicloud.nas.FileSystemArgs;
/// import com.pulumi.alicloud.nas.MountTarget;
/// import com.pulumi.alicloud.nas.MountTargetArgs;
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.oss.Bucket;
/// import com.pulumi.alicloud.oss.BucketArgs;
/// import com.pulumi.alicloud.nas.Fileset;
/// import com.pulumi.alicloud.nas.FilesetArgs;
/// import com.pulumi.alicloud.nas.DataFlow;
/// import com.pulumi.alicloud.nas.DataFlowArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.JoinArgs;
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
///         final var example = NasFunctions.getZones(GetZonesArgs.builder()
///             .fileSystemType("cpfs")
///             .build());
///
///         var exampleNetwork = new Network("exampleNetwork", NetworkArgs.builder()
///             .vpcName("terraform-example")
///             .cidrBlock("172.17.3.0/24")
///             .build());
///
///         var exampleSwitch = new Switch("exampleSwitch", SwitchArgs.builder()
///             .vswitchName("terraform-example")
///             .cidrBlock("172.17.3.0/24")
///             .vpcId(exampleNetwork.id())
///             .zoneId(example.zones()[1].zoneId())
///             .build());
///
///         var exampleFileSystem = new FileSystem("exampleFileSystem", FileSystemArgs.builder()
///             .protocolType("cpfs")
///             .storageType("advance_200")
///             .fileSystemType("cpfs")
///             .capacity(3600)
///             .description("terraform-example")
///             .zoneId(example.zones()[1].zoneId())
///             .vpcId(exampleNetwork.id())
///             .vswitchId(exampleSwitch.id())
///             .build());
///
///         var exampleMountTarget = new MountTarget("exampleMountTarget", MountTargetArgs.builder()
///             .fileSystemId(exampleFileSystem.id())
///             .vswitchId(exampleSwitch.id())
///             .build());
///
///         var exampleInteger = new Integer("exampleInteger", IntegerArgs.builder()
///             .max(99999)
///             .min(10000)
///             .build());
///
///         var exampleBucket = new Bucket("exampleBucket", BucketArgs.builder()
///             .bucket(String.format("example-value-%s", exampleInteger.result()))
///             .acl("private")
///             .tags(Map.of("cpfs-dataflow", "true"))
///             .build());
///
///         var exampleFileset = new Fileset("exampleFileset", FilesetArgs.builder()
///             .fileSystemId(exampleMountTarget.fileSystemId())
///             .description("terraform-example")
///             .fileSystemPath("/example_path/")
///             .build());
///
///         var exampleDataFlow = new DataFlow("exampleDataFlow", DataFlowArgs.builder()
///             .fsetId(exampleFileset.filesetId())
///             .description("terraform-example")
///             .fileSystemId(exampleFileSystem.id())
///             .sourceSecurityType("SSL")
///             .sourceStorage(StdFunctions.join(JoinArgs.builder()
///                 .separator("")
///                 .input(
///                     "oss://",
///                     exampleBucket.bucket())
///                 .build()).applyValue(_invoke -> _invoke.result()))
///             .throughput(600)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleNetwork:
///     type: alicloud:vpc:Network
///     name: example
///     properties:
///       vpcName: terraform-example
///       cidrBlock: 172.17.3.0/24
///   exampleSwitch:
///     type: alicloud:vpc:Switch
///     name: example
///     properties:
///       vswitchName: terraform-example
///       cidrBlock: 172.17.3.0/24
///       vpcId: ${exampleNetwork.id}
///       zoneId: ${example.zones[1].zoneId}
///   exampleFileSystem:
///     type: alicloud:nas:FileSystem
///     name: example
///     properties:
///       protocolType: cpfs
///       storageType: advance_200
///       fileSystemType: cpfs
///       capacity: 3600
///       description: terraform-example
///       zoneId: ${example.zones[1].zoneId}
///       vpcId: ${exampleNetwork.id}
///       vswitchId: ${exampleSwitch.id}
///   exampleMountTarget:
///     type: alicloud:nas:MountTarget
///     name: example
///     properties:
///       fileSystemId: ${exampleFileSystem.id}
///       vswitchId: ${exampleSwitch.id}
///   exampleInteger:
///     type: random:Integer
///     name: example
///     properties:
///       max: 99999
///       min: 10000
///   exampleBucket:
///     type: alicloud:oss:Bucket
///     name: example
///     properties:
///       bucket: example-value-${exampleInteger.result}
///       acl: private
///       tags:
///         cpfs-dataflow: 'true'
///   exampleFileset:
///     type: alicloud:nas:Fileset
///     name: example
///     properties:
///       fileSystemId: ${exampleMountTarget.fileSystemId}
///       description: terraform-example
///       fileSystemPath: /example_path/
///   exampleDataFlow:
///     type: alicloud:nas:DataFlow
///     name: example
///     properties:
///       fsetId: ${exampleFileset.filesetId}
///       description: terraform-example
///       fileSystemId: ${exampleFileSystem.id}
///       sourceSecurityType: SSL
///       sourceStorage:
///         fn::invoke:
///           function: std:join
///           arguments:
///             separator: ""
///             input:
///               - oss://
///               - ${exampleBucket.bucket}
///           return: result
///       throughput: 600
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:nas:getZones
///       arguments:
///         fileSystemType: cpfs
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// File Storage (NAS) Data Flow can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:nas/dataFlow:DataFlow example <file_system_id>:<data_flow_id>
/// ```
class DataFlow extends pulumi.CustomResource {
  /// The ID of the Data flow.
  late final pulumi.Output<String> dataFlowId;

  /// The Description of the data flow. Restrictions:
  late final pulumi.Output<String?> description;

  /// The dry run.
  late final pulumi.Output<bool?> dryRun;

  /// The ID of the file system.
  late final pulumi.Output<String> fileSystemId;

  /// The ID of the Fileset.
  late final pulumi.Output<String> fsetId;

  /// The security protection type of the source storage. If the source storage must be accessed through security protection, specify the security protection type of the source storage. Value:
  /// - `NONE` (default): Indicates that the source storage does not need to be accessed through security protection.
  /// - `SSL`: Protects access through SSL certificates.
  late final pulumi.Output<String> sourceSecurityType;

  /// The access path of the source store. Format: `&lt;storage type&gt;://&lt;path&gt;`. Among them:
  /// - storage type: currently only OSS is supported.
  /// - path: the bucket name of OSS.
  /// - Only lowercase letters, numbers, and dashes (-) are supported and must start and end with lowercase letters or numbers.
  late final pulumi.Output<String> sourceStorage;

  /// The status of the Data flow. Valid values: `Running`, `Stopped`.
  late final pulumi.Output<String> status;

  /// The maximum transmission bandwidth of data flow, unit: `MB/s`. Valid values: `1200`, `1500`, `600`. **NOTE:** The transmission bandwidth of data flow must be less than the IO bandwidth of the file system.
  late final pulumi.Output<int> throughput;

  /// Creates a new [DataFlow].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataFlow]. {@macro pulumi_nas_data_flow_data_flow_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataFlow(
    String name, {
    DataFlowArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:nas/dataFlow:DataFlow',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    dataFlowId = registerOutput<String>('dataFlowId');
    description = registerOutput<String?>('description');
    dryRun = registerOutput<bool?>('dryRun');
    fileSystemId = registerOutput<String>('fileSystemId');
    fsetId = registerOutput<String>('fsetId');
    sourceSecurityType = registerOutput<String>('sourceSecurityType');
    sourceStorage = registerOutput<String>('sourceStorage');
    status = registerOutput<String>('status');
    throughput = registerOutput<int>('throughput');
  }

  /// Gets an existing [DataFlow] resource's state with the given [name] and [id].
  static DataFlow get(
    String name,
    pulumi.Input<String> id, {
    DataFlowState? state,
  }) {
    return DataFlow._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DataFlow._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:nas/dataFlow:DataFlow',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    dataFlowId = registerOutput<String>('dataFlowId');
    description = registerOutput<String?>('description');
    dryRun = registerOutput<bool?>('dryRun');
    fileSystemId = registerOutput<String>('fileSystemId');
    fsetId = registerOutput<String>('fsetId');
    sourceSecurityType = registerOutput<String>('sourceSecurityType');
    sourceStorage = registerOutput<String>('sourceStorage');
    status = registerOutput<String>('status');
    throughput = registerOutput<int>('throughput');
  }
}
