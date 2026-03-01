import 'package:pulumi/pulumi.dart' as pulumi;
import 'supabase_project_args.dart';
import 'supabase_project_state.dart';

/// Provides a AnalyticDB for PostgreSQL (GPDB) Supabase Project resource.
///
///
///
/// For information about AnalyticDB for PostgreSQL (GPDB) Supabase Project and how to use it, see [What is Supabase Project](https://next.api.alibabacloud.com/document/gpdb/2016-05-03/CreateSupabaseProject).
///
/// > **NOTE:** Available since v1.266.0.
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
/// const _default = alicloud.vpc.getNetworks({
///     nameRegex: "^default-NODELETING$",
/// });
/// const defaultGetSwitches = _default.then(_default => alicloud.vpc.getSwitches({
///     vpcId: _default.ids?.[0],
///     zoneId: "cn-hangzhou-j",
/// }));
/// const defaultSupabaseProject = new alicloud.gpdb.SupabaseProject("default", {
///     projectSpec: "1C2G",
///     zoneId: "cn-hangzhou-j",
///     vpcId: _default.then(_default => _default.ids?.[0]),
///     projectName: "supabase_example",
///     securityIpLists: ["127.0.0.1"],
///     vswitchId: defaultGetSwitches.then(defaultGetSwitches => defaultGetSwitches.ids?.[0]),
///     diskPerformanceLevel: "PL0",
///     storageSize: 1,
///     accountPassword: "YourPassword123!",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.vpc.get_networks(name_regex="^default-NODELETING$")
/// default_get_switches = alicloud.vpc.get_switches(vpc_id=default.ids[0],
///     zone_id="cn-hangzhou-j")
/// default_supabase_project = alicloud.gpdb.SupabaseProject("default",
///     project_spec="1C2G",
///     zone_id="cn-hangzhou-j",
///     vpc_id=default.ids[0],
///     project_name="supabase_example",
///     security_ip_lists=["127.0.0.1"],
///     vswitch_id=default_get_switches.ids[0],
///     disk_performance_level="PL0",
///     storage_size=1,
///     account_password="YourPassword123!")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Vpc.GetNetworks.Invoke(new()
///     {
///         NameRegex = "^default-NODELETING$",
///     });
///
///     var defaultGetSwitches = AliCloud.Vpc.GetSwitches.Invoke(new()
///     {
///         VpcId = @default.Apply(getNetworksResult => getNetworksResult.Ids[0]),
///         ZoneId = "cn-hangzhou-j",
///     });
///
///     var defaultSupabaseProject = new AliCloud.Gpdb.SupabaseProject("default", new()
///     {
///         ProjectSpec = "1C2G",
///         ZoneId = "cn-hangzhou-j",
///         VpcId = @default.Apply(@default => @default.Apply(getNetworksResult => getNetworksResult.Ids[0])),
///         ProjectName = "supabase_example",
///         SecurityIpLists = new[]
///         {
///             "127.0.0.1",
///         },
///         VswitchId = defaultGetSwitches.Apply(getSwitchesResult => getSwitchesResult.Ids[0]),
///         DiskPerformanceLevel = "PL0",
///         StorageSize = 1,
///         AccountPassword = "YourPassword123!",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/gpdb"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := vpc.GetNetworks(ctx, &vpc.GetNetworksArgs{
/// 			NameRegex: pulumi.StringRef("^default-NODELETING$"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetSwitches, err := vpc.GetSwitches(ctx, &vpc.GetSwitchesArgs{
/// 			VpcId:  pulumi.StringRef(_default.Ids[0]),
/// 			ZoneId: pulumi.StringRef("cn-hangzhou-j"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = gpdb.NewSupabaseProject(ctx, "default", &gpdb.SupabaseProjectArgs{
/// 			ProjectSpec: pulumi.String("1C2G"),
/// 			ZoneId:      pulumi.String("cn-hangzhou-j"),
/// 			VpcId:       pulumi.String(_default.Ids[0]),
/// 			ProjectName: pulumi.String("supabase_example"),
/// 			SecurityIpLists: pulumi.StringArray{
/// 				pulumi.String("127.0.0.1"),
/// 			},
/// 			VswitchId:            pulumi.String(defaultGetSwitches.Ids[0]),
/// 			DiskPerformanceLevel: pulumi.String("PL0"),
/// 			StorageSize:          pulumi.Int(1),
/// 			AccountPassword:      pulumi.String("YourPassword123!"),
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
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetNetworksArgs;
/// import com.pulumi.alicloud.vpc.inputs.GetSwitchesArgs;
/// import com.pulumi.alicloud.gpdb.SupabaseProject;
/// import com.pulumi.alicloud.gpdb.SupabaseProjectArgs;
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
///         final var default = VpcFunctions.getNetworks(GetNetworksArgs.builder()
///             .nameRegex("^default-NODELETING$")
///             .build());
///
///         final var defaultGetSwitches = VpcFunctions.getSwitches(GetSwitchesArgs.builder()
///             .vpcId(default_.ids()[0])
///             .zoneId("cn-hangzhou-j")
///             .build());
///
///         var defaultSupabaseProject = new SupabaseProject("defaultSupabaseProject", SupabaseProjectArgs.builder()
///             .projectSpec("1C2G")
///             .zoneId("cn-hangzhou-j")
///             .vpcId(default_.ids()[0])
///             .projectName("supabase_example")
///             .securityIpLists("127.0.0.1")
///             .vswitchId(defaultGetSwitches.ids()[0])
///             .diskPerformanceLevel("PL0")
///             .storageSize(1)
///             .accountPassword("YourPassword123!")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultSupabaseProject:
///     type: alicloud:gpdb:SupabaseProject
///     name: default
///     properties:
///       projectSpec: 1C2G
///       zoneId: cn-hangzhou-j
///       vpcId: ${default.ids[0]}
///       projectName: supabase_example
///       securityIpLists:
///         - 127.0.0.1
///       vswitchId: ${defaultGetSwitches.ids[0]}
///       diskPerformanceLevel: PL0
///       storageSize: '1'
///       accountPassword: YourPassword123!
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:vpc:getNetworks
///       arguments:
///         nameRegex: ^default-NODELETING$
///   defaultGetSwitches:
///     fn::invoke:
///       function: alicloud:vpc:getSwitches
///       arguments:
///         vpcId: ${default.ids[0]}
///         zoneId: cn-hangzhou-j
/// ```
///
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// AnalyticDB for PostgreSQL (GPDB) Supabase Project can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:gpdb/supabaseProject:SupabaseProject example <id>
/// ```
class SupabaseProject extends pulumi.CustomResource {
  /// The password for the initial account.
  /// - Consists of three or more of uppercase letters, lowercase letters, numbers, and special characters.
  /// - Support for special characters:! @#$%^& *()_+-=
  /// - Length is 8~32 characters.
  late final pulumi.Output<String> accountPassword;
  /// The creation time of the resource
  late final pulumi.Output<String> createTime;
  /// cloud disk performance level
  late final pulumi.Output<String> diskPerformanceLevel;
  /// The project name. The naming rules are as follows:
  /// - 1~128 characters in length.
  /// - Can only contain English letters, numbers, dashes (-) and underscores (_).
  /// - Must begin with an English letter or an underscore (_).
  late final pulumi.Output<String> projectName;
  /// The performance level of the Supabase instance.
  late final pulumi.Output<String> projectSpec;
  /// The region ID.
  late final pulumi.Output<String> regionId;
  /// The IP address whitelist.
  late final pulumi.Output<List<String>> securityIpLists;
  /// The status of the Supabase instance.
  late final pulumi.Output<String> status;
  /// The storage capacity of the instance. Unit: GB.
  late final pulumi.Output<int> storageSize;
  /// The VPC ID.
  late final pulumi.Output<String> vpcId;
  /// The vSwitch ID.
  late final pulumi.Output<String> vswitchId;
  /// The Zone ID.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [SupabaseProject].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SupabaseProject]. {@macro pulumi_gpdb_supabase_project_supabase_project_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SupabaseProject(
    String name, {
    SupabaseProjectArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:gpdb/supabaseProject:SupabaseProject',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountPassword = registerOutput<String>('accountPassword');
    this.createTime = registerOutput<String>('createTime');
    this.diskPerformanceLevel = registerOutput<String>('diskPerformanceLevel');
    this.projectName = registerOutput<String>('projectName');
    this.projectSpec = registerOutput<String>('projectSpec');
    this.regionId = registerOutput<String>('regionId');
    this.securityIpLists = registerOutput<List<String>>('securityIpLists');
    this.status = registerOutput<String>('status');
    this.storageSize = registerOutput<int>('storageSize');
    this.vpcId = registerOutput<String>('vpcId');
    this.vswitchId = registerOutput<String>('vswitchId');
    this.zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [SupabaseProject] resource's state with the given [name] and [id].
  static SupabaseProject get(
    String name,
    pulumi.Input<String> id, {
    SupabaseProjectState? state,
  }) {
    return SupabaseProject._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SupabaseProject._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:gpdb/supabaseProject:SupabaseProject',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountPassword = registerOutput<String>('accountPassword');
    this.createTime = registerOutput<String>('createTime');
    this.diskPerformanceLevel = registerOutput<String>('diskPerformanceLevel');
    this.projectName = registerOutput<String>('projectName');
    this.projectSpec = registerOutput<String>('projectSpec');
    this.regionId = registerOutput<String>('regionId');
    this.securityIpLists = registerOutput<List<String>>('securityIpLists');
    this.status = registerOutput<String>('status');
    this.storageSize = registerOutput<int>('storageSize');
    this.vpcId = registerOutput<String>('vpcId');
    this.vswitchId = registerOutput<String>('vswitchId');
    this.zoneId = registerOutput<String>('zoneId');
  }
}
