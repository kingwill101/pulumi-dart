import 'package:pulumi/pulumi.dart' as pulumi;
import 'dedicated_host_group_args.dart';
import 'dedicated_host_group_state.dart';

/// Provides a ApsaraDB for MyBase Dedicated Host Group resource.
///
/// For information about ApsaraDB for MyBase Dedicated Host Group and how to use it, see [What is Dedicated Host Group](https://www.alibabacloud.com/help/en/apsaradb-for-mybase/latest/creatededicatedhostgroup).
///
/// > **NOTE:** Available since v1.132.0.
///
/// > **DEPRECATED:**  This resource has been [deprecated](https://www.alibabacloud.com/help/en/apsaradb-for-mybase/latest/notice-stop-selling-mybase-hosted-instances-from-august-31-2023) from version `1.225.1`.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "10.4.0.0/16",
/// });
/// const defaultDedicatedHostGroup = new alicloud.cddc.DedicatedHostGroup("default", {
///     engine: "MySQL",
///     vpcId: _default.id,
///     cpuAllocationRatio: 101,
///     memAllocationRatio: 50,
///     diskAllocationRatio: 200,
///     allocationPolicy: "Evenly",
///     hostReplacePolicy: "Manual",
///     dedicatedHostGroupDesc: name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="10.4.0.0/16")
/// default_dedicated_host_group = alicloud.cddc.DedicatedHostGroup("default",
///     engine="MySQL",
///     vpc_id=default.id,
///     cpu_allocation_ratio=101,
///     mem_allocation_ratio=50,
///     disk_allocation_ratio=200,
///     allocation_policy="Evenly",
///     host_replace_policy="Manual",
///     dedicated_host_group_desc=name)
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
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "10.4.0.0/16",
///     });
///
///     var defaultDedicatedHostGroup = new AliCloud.Cddc.DedicatedHostGroup("default", new()
///     {
///         Engine = "MySQL",
///         VpcId = @default.Id,
///         CpuAllocationRatio = 101,
///         MemAllocationRatio = 50,
///         DiskAllocationRatio = 200,
///         AllocationPolicy = "Evenly",
///         HostReplacePolicy = "Manual",
///         DedicatedHostGroupDesc = name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cddc"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("10.4.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cddc.NewDedicatedHostGroup(ctx, "default", &cddc.DedicatedHostGroupArgs{
/// 			Engine:                 pulumi.String("MySQL"),
/// 			VpcId:                  _default.ID(),
/// 			CpuAllocationRatio:     pulumi.Int(101),
/// 			MemAllocationRatio:     pulumi.Int(50),
/// 			DiskAllocationRatio:    pulumi.Int(200),
/// 			AllocationPolicy:       pulumi.String("Evenly"),
/// 			HostReplacePolicy:      pulumi.String("Manual"),
/// 			DedicatedHostGroupDesc: pulumi.String(name),
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
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.cddc.DedicatedHostGroup;
/// import com.pulumi.alicloud.cddc.DedicatedHostGroupArgs;
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
///         final var name = config.get("name").orElse("terraform-example");
///         var default_ = new Network("default", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("10.4.0.0/16")
///             .build());
///
///         var defaultDedicatedHostGroup = new DedicatedHostGroup("defaultDedicatedHostGroup", DedicatedHostGroupArgs.builder()
///             .engine("MySQL")
///             .vpcId(default_.id())
///             .cpuAllocationRatio(101)
///             .memAllocationRatio(50)
///             .diskAllocationRatio(200)
///             .allocationPolicy("Evenly")
///             .hostReplacePolicy("Manual")
///             .dedicatedHostGroupDesc(name)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   default:
///     type: alicloud:vpc:Network
///     properties:
///       vpcName: ${name}
///       cidrBlock: 10.4.0.0/16
///   defaultDedicatedHostGroup:
///     type: alicloud:cddc:DedicatedHostGroup
///     name: default
///     properties:
///       engine: MySQL
///       vpcId: ${default.id}
///       cpuAllocationRatio: 101
///       memAllocationRatio: 50
///       diskAllocationRatio: 200
///       allocationPolicy: Evenly
///       hostReplacePolicy: Manual
///       dedicatedHostGroupDesc: ${name}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ApsaraDB for MyBase Dedicated Host Group can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cddc/dedicatedHostGroup:DedicatedHostGroup example <id>
/// ```
class DedicatedHostGroup extends pulumi.CustomResource {
  /// AThe policy that is used to allocate resources in the dedicated cluster. Valid values:`Evenly`,`Intensively`
  late final pulumi.Output<String> allocationPolicy;
  /// The CPU overcommitment ratio of the dedicated cluster.Valid values: 100 to 300. Default value: 200.
  late final pulumi.Output<int> cpuAllocationRatio;
  /// The name of the dedicated cluster. The name must be 1 to 64 characters in length and can contain letters, digits, underscores (_), and hyphens (-). It must start with a letter.
  late final pulumi.Output<String?> dedicatedHostGroupDesc;
  /// The Disk Allocation Ratio of the Dedicated Host Group. **NOTE:** When `engine = SQLServer`, this attribute does not support to set.
  late final pulumi.Output<int> diskAllocationRatio;
  /// Database Engine Type.The database engine of the dedicated cluster. Valid values:`Redis`, `SQLServer`, `MySQL`, `PostgreSQL`, `MongoDB`, `alisql`, `tair`, `mssql`. **NOTE:** Since v1.210.0., the `engine = SQLServer` was deprecated.
  late final pulumi.Output<String> engine;
  /// The policy based on which the system handles host failures. Valid values:`Auto`,`Manual`
  late final pulumi.Output<String> hostReplacePolicy;
  /// The Memory Allocation Ratio of the Dedicated Host Group.
  late final pulumi.Output<int> memAllocationRatio;
  /// Whether to enable the feature that allows you to have OS permissions on the hosts in the dedicated cluster. Valid values: `true` and `false`.
  /// **NOTE:** The `open_permission` should be `true` when `engine = "SQLServer"`
  late final pulumi.Output<bool> openPermission;
  /// The virtual private cloud (VPC) ID of the dedicated cluster.
  late final pulumi.Output<String> vpcId;

  /// Creates a new [DedicatedHostGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DedicatedHostGroup]. {@macro pulumi_cddc_dedicated_host_group_dedicated_host_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DedicatedHostGroup(
    String name, {
    DedicatedHostGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cddc/dedicatedHostGroup:DedicatedHostGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allocationPolicy = registerOutput<String>('allocationPolicy');
    this.cpuAllocationRatio = registerOutput<int>('cpuAllocationRatio');
    this.dedicatedHostGroupDesc = registerOutput<String?>('dedicatedHostGroupDesc');
    this.diskAllocationRatio = registerOutput<int>('diskAllocationRatio');
    this.engine = registerOutput<String>('engine');
    this.hostReplacePolicy = registerOutput<String>('hostReplacePolicy');
    this.memAllocationRatio = registerOutput<int>('memAllocationRatio');
    this.openPermission = registerOutput<bool>('openPermission');
    this.vpcId = registerOutput<String>('vpcId');
  }

  /// Gets an existing [DedicatedHostGroup] resource's state with the given [name] and [id].
  static DedicatedHostGroup get(
    String name,
    pulumi.Input<String> id, {
    DedicatedHostGroupState? state,
  }) {
    return DedicatedHostGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DedicatedHostGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cddc/dedicatedHostGroup:DedicatedHostGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allocationPolicy = registerOutput<String>('allocationPolicy');
    this.cpuAllocationRatio = registerOutput<int>('cpuAllocationRatio');
    this.dedicatedHostGroupDesc = registerOutput<String?>('dedicatedHostGroupDesc');
    this.diskAllocationRatio = registerOutput<int>('diskAllocationRatio');
    this.engine = registerOutput<String>('engine');
    this.hostReplacePolicy = registerOutput<String>('hostReplacePolicy');
    this.memAllocationRatio = registerOutput<int>('memAllocationRatio');
    this.openPermission = registerOutput<bool>('openPermission');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
