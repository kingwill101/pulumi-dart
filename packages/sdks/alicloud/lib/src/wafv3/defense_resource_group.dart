import 'package:pulumi/pulumi.dart' as pulumi;
import 'defense_resource_group_args.dart';
import 'defense_resource_group_state.dart';

/// Provides a WAFV3 Defense Resource Group resource.
///
///
///
/// For information about WAFV3 Defense Resource Group and how to use it, see [What is Defense Resource Group](https://next.api.alibabacloud.com/document/waf-openapi/2021-10-01/CreateDefenseResourceGroup).
///
/// &gt; **NOTE:** Available since v1.263.0.
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
/// const name = config.get("name") || "terraform-example";
/// const regionId = config.get("regionId") || "cn-hangzhou";
/// const defaultHaF1fD = new alicloud.wafv3.Instance("defaultHaF1fD", {});
/// const defaultHVcskT = new alicloud.wafv3.Domain("defaultHVcskT", {
///     instanceId: defaultHaF1fD.id,
///     listen: {
///         httpPorts: [80],
///     },
///     redirect: {
///         backends: ["6.36.36.36"],
///         loadbalance: "iphash",
///     },
///     domain: "1511928242963727_1.wafqax.top",
///     accessType: "share",
/// });
/// const defaultEH4CwO = new alicloud.wafv3.Domain("defaultEH4CwO", {
///     instanceId: defaultHaF1fD.id,
///     listen: {
///         httpPorts: [80],
///     },
///     redirect: {
///         backends: ["6.36.36.36"],
///         loadbalance: "iphash",
///     },
///     domain: "1511928242963727_2.wafqax.top",
///     accessType: "share",
/// });
/// const defaultY0ge1N = new alicloud.wafv3.Domain("defaultY0ge1N", {
///     instanceId: defaultHaF1fD.id,
///     listen: {
///         httpPorts: [80],
///     },
///     redirect: {
///         backends: ["6.36.36.36"],
///         loadbalance: "iphash",
///     },
///     domain: "1511928242963727_3.wafqax.top",
///     accessType: "share",
/// });
/// const _default = new alicloud.wafv3.DefenseResourceGroup("default", {
///     groupName: "examplefromTF",
///     resourceLists: [defaultHVcskT.domainId],
///     description: "example",
///     instanceId: defaultHaF1fD.id,
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
/// region_id = config.get("regionId")
/// if region_id is None:
///     region_id = "cn-hangzhou"
/// default_ha_f1f_d = alicloud.wafv3.Instance("defaultHaF1fD")
/// default_h_vcsk_t = alicloud.wafv3.Domain("defaultHVcskT",
///     instance_id=default_ha_f1f_d.id,
///     listen={
///         "http_ports": [80],
///     },
///     redirect={
///         "backends": ["6.36.36.36"],
///         "loadbalance": "iphash",
///     },
///     domain="1511928242963727_1.wafqax.top",
///     access_type="share")
/// default_eh4_cw_o = alicloud.wafv3.Domain("defaultEH4CwO",
///     instance_id=default_ha_f1f_d.id,
///     listen={
///         "http_ports": [80],
///     },
///     redirect={
///         "backends": ["6.36.36.36"],
///         "loadbalance": "iphash",
///     },
///     domain="1511928242963727_2.wafqax.top",
///     access_type="share")
/// default_y0ge1_n = alicloud.wafv3.Domain("defaultY0ge1N",
///     instance_id=default_ha_f1f_d.id,
///     listen={
///         "http_ports": [80],
///     },
///     redirect={
///         "backends": ["6.36.36.36"],
///         "loadbalance": "iphash",
///     },
///     domain="1511928242963727_3.wafqax.top",
///     access_type="share")
/// default = alicloud.wafv3.DefenseResourceGroup("default",
///     group_name="examplefromTF",
///     resource_lists=[default_h_vcsk_t.domain_id],
///     description="example",
///     instance_id=default_ha_f1f_d.id)
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
///     var regionId = config.Get("regionId") ?? "cn-hangzhou";
///     var defaultHaF1fD = new AliCloud.Wafv3.Instance("defaultHaF1fD");
///
///     var defaultHVcskT = new AliCloud.Wafv3.Domain("defaultHVcskT", new()
///     {
///         InstanceId = defaultHaF1fD.Id,
///         Listen = new AliCloud.Wafv3.Inputs.DomainListenArgs
///         {
///             HttpPorts = new[]
///             {
///                 80,
///             },
///         },
///         Redirect = new AliCloud.Wafv3.Inputs.DomainRedirectArgs
///         {
///             Backends = new[]
///             {
///                 "6.36.36.36",
///             },
///             Loadbalance = "iphash",
///         },
///         DomainName = "1511928242963727_1.wafqax.top",
///         AccessType = "share",
///     });
///
///     var defaultEH4CwO = new AliCloud.Wafv3.Domain("defaultEH4CwO", new()
///     {
///         InstanceId = defaultHaF1fD.Id,
///         Listen = new AliCloud.Wafv3.Inputs.DomainListenArgs
///         {
///             HttpPorts = new[]
///             {
///                 80,
///             },
///         },
///         Redirect = new AliCloud.Wafv3.Inputs.DomainRedirectArgs
///         {
///             Backends = new[]
///             {
///                 "6.36.36.36",
///             },
///             Loadbalance = "iphash",
///         },
///         DomainName = "1511928242963727_2.wafqax.top",
///         AccessType = "share",
///     });
///
///     var defaultY0ge1N = new AliCloud.Wafv3.Domain("defaultY0ge1N", new()
///     {
///         InstanceId = defaultHaF1fD.Id,
///         Listen = new AliCloud.Wafv3.Inputs.DomainListenArgs
///         {
///             HttpPorts = new[]
///             {
///                 80,
///             },
///         },
///         Redirect = new AliCloud.Wafv3.Inputs.DomainRedirectArgs
///         {
///             Backends = new[]
///             {
///                 "6.36.36.36",
///             },
///             Loadbalance = "iphash",
///         },
///         DomainName = "1511928242963727_3.wafqax.top",
///         AccessType = "share",
///     });
///
///     var @default = new AliCloud.Wafv3.DefenseResourceGroup("default", new()
///     {
///         GroupName = "examplefromTF",
///         ResourceLists = new[]
///         {
///             defaultHVcskT.DomainId,
///         },
///         Description = "example",
///         InstanceId = defaultHaF1fD.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/wafv3"
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
/// 		regionId := "cn-hangzhou"
/// 		if param := cfg.Get("regionId"); param != "" {
/// 			regionId = param
/// 		}
/// 		defaultHaF1fD, err := wafv3.NewInstance(ctx, "defaultHaF1fD", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultHVcskT, err := wafv3.NewDomain(ctx, "defaultHVcskT", &wafv3.DomainArgs{
/// 			InstanceId: defaultHaF1fD.ID(),
/// 			Listen: &wafv3.DomainListenArgs{
/// 				HttpPorts: pulumi.IntArray{
/// 					pulumi.Int(80),
/// 				},
/// 			},
/// 			Redirect: &wafv3.DomainRedirectArgs{
/// 				Backends: pulumi.StringArray{
/// 					pulumi.String("6.36.36.36"),
/// 				},
/// 				Loadbalance: pulumi.String("iphash"),
/// 			},
/// 			Domain:     pulumi.String("1511928242963727_1.wafqax.top"),
/// 			AccessType: pulumi.String("share"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = wafv3.NewDomain(ctx, "defaultEH4CwO", &wafv3.DomainArgs{
/// 			InstanceId: defaultHaF1fD.ID(),
/// 			Listen: &wafv3.DomainListenArgs{
/// 				HttpPorts: pulumi.IntArray{
/// 					pulumi.Int(80),
/// 				},
/// 			},
/// 			Redirect: &wafv3.DomainRedirectArgs{
/// 				Backends: pulumi.StringArray{
/// 					pulumi.String("6.36.36.36"),
/// 				},
/// 				Loadbalance: pulumi.String("iphash"),
/// 			},
/// 			Domain:     pulumi.String("1511928242963727_2.wafqax.top"),
/// 			AccessType: pulumi.String("share"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = wafv3.NewDomain(ctx, "defaultY0ge1N", &wafv3.DomainArgs{
/// 			InstanceId: defaultHaF1fD.ID(),
/// 			Listen: &wafv3.DomainListenArgs{
/// 				HttpPorts: pulumi.IntArray{
/// 					pulumi.Int(80),
/// 				},
/// 			},
/// 			Redirect: &wafv3.DomainRedirectArgs{
/// 				Backends: pulumi.StringArray{
/// 					pulumi.String("6.36.36.36"),
/// 				},
/// 				Loadbalance: pulumi.String("iphash"),
/// 			},
/// 			Domain:     pulumi.String("1511928242963727_3.wafqax.top"),
/// 			AccessType: pulumi.String("share"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = wafv3.NewDefenseResourceGroup(ctx, "default", &wafv3.DefenseResourceGroupArgs{
/// 			GroupName: pulumi.String("examplefromTF"),
/// 			ResourceLists: pulumi.StringArray{
/// 				defaultHVcskT.DomainId,
/// 			},
/// 			Description: pulumi.String("example"),
/// 			InstanceId:  defaultHaF1fD.ID(),
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
/// import com.pulumi.alicloud.wafv3.Instance;
/// import com.pulumi.alicloud.wafv3.Domain;
/// import com.pulumi.alicloud.wafv3.DomainArgs;
/// import com.pulumi.alicloud.wafv3.inputs.DomainListenArgs;
/// import com.pulumi.alicloud.wafv3.inputs.DomainRedirectArgs;
/// import com.pulumi.alicloud.wafv3.DefenseResourceGroup;
/// import com.pulumi.alicloud.wafv3.DefenseResourceGroupArgs;
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
///         final var regionId = config.get("regionId").orElse("cn-hangzhou");
///         var defaultHaF1fD = new Instance("defaultHaF1fD");
///
///         var defaultHVcskT = new Domain("defaultHVcskT", DomainArgs.builder()
///             .instanceId(defaultHaF1fD.id())
///             .listen(DomainListenArgs.builder()
///                 .httpPorts(80)
///                 .build())
///             .redirect(DomainRedirectArgs.builder()
///                 .backends("6.36.36.36")
///                 .loadbalance("iphash")
///                 .build())
///             .domain("1511928242963727_1.wafqax.top")
///             .accessType("share")
///             .build());
///
///         var defaultEH4CwO = new Domain("defaultEH4CwO", DomainArgs.builder()
///             .instanceId(defaultHaF1fD.id())
///             .listen(DomainListenArgs.builder()
///                 .httpPorts(80)
///                 .build())
///             .redirect(DomainRedirectArgs.builder()
///                 .backends("6.36.36.36")
///                 .loadbalance("iphash")
///                 .build())
///             .domain("1511928242963727_2.wafqax.top")
///             .accessType("share")
///             .build());
///
///         var defaultY0ge1N = new Domain("defaultY0ge1N", DomainArgs.builder()
///             .instanceId(defaultHaF1fD.id())
///             .listen(DomainListenArgs.builder()
///                 .httpPorts(80)
///                 .build())
///             .redirect(DomainRedirectArgs.builder()
///                 .backends("6.36.36.36")
///                 .loadbalance("iphash")
///                 .build())
///             .domain("1511928242963727_3.wafqax.top")
///             .accessType("share")
///             .build());
///
///         var default_ = new DefenseResourceGroup("default", DefenseResourceGroupArgs.builder()
///             .groupName("examplefromTF")
///             .resourceLists(defaultHVcskT.domainId())
///             .description("example")
///             .instanceId(defaultHaF1fD.id())
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
///   regionId:
///     type: string
///     default: cn-hangzhou
/// resources:
///   defaultHaF1fD:
///     type: alicloud:wafv3:Instance
///   defaultHVcskT:
///     type: alicloud:wafv3:Domain
///     properties:
///       instanceId: ${defaultHaF1fD.id}
///       listen:
///         httpPorts:
///           - '80'
///       redirect:
///         backends:
///           - 6.36.36.36
///         loadbalance: iphash
///       domain: 1511928242963727_1.wafqax.top
///       accessType: share
///   defaultEH4CwO:
///     type: alicloud:wafv3:Domain
///     properties:
///       instanceId: ${defaultHaF1fD.id}
///       listen:
///         httpPorts:
///           - '80'
///       redirect:
///         backends:
///           - 6.36.36.36
///         loadbalance: iphash
///       domain: 1511928242963727_2.wafqax.top
///       accessType: share
///   defaultY0ge1N:
///     type: alicloud:wafv3:Domain
///     properties:
///       instanceId: ${defaultHaF1fD.id}
///       listen:
///         httpPorts:
///           - '80'
///       redirect:
///         backends:
///           - 6.36.36.36
///         loadbalance: iphash
///       domain: 1511928242963727_3.wafqax.top
///       accessType: share
///   default:
///     type: alicloud:wafv3:DefenseResourceGroup
///     properties:
///       groupName: examplefromTF
///       resourceLists:
///         - ${defaultHVcskT.domainId}
///       description: example
///       instanceId: ${defaultHaF1fD.id}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// WAFV3 Defense Resource Group can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:wafv3/defenseResourceGroup:DefenseResourceGroup example <instance_id>:<group_name>
/// ```
class DefenseResourceGroup extends pulumi.CustomResource {
  /// The description of the protected object group.
  late final pulumi.Output<String?> description;

  /// The name of the protected object group. The name must be 1 to 255 characters long and can contain Chinese characters, letters, digits, underscores (_), periods (.), and hyphens (-)
  late final pulumi.Output<String> groupName;

  /// The ID of the WAF instance.
  late final pulumi.Output<String> instanceId;

  /// The names of the protected objects that are added to the protected object group.
  late final pulumi.Output<List<String>?> resourceLists;

  /// Creates a new [DefenseResourceGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DefenseResourceGroup]. {@macro pulumi_wafv3_defense_resource_group_defense_resource_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DefenseResourceGroup(
    String name, {
    DefenseResourceGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:wafv3/defenseResourceGroup:DefenseResourceGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String?>('description');
    groupName = registerOutput<String>('groupName');
    instanceId = registerOutput<String>('instanceId');
    resourceLists = registerOutput<List<String>?>('resourceLists');
  }

  /// Gets an existing [DefenseResourceGroup] resource's state with the given [name] and [id].
  static DefenseResourceGroup get(
    String name,
    pulumi.Input<String> id, {
    DefenseResourceGroupState? state,
  }) {
    return DefenseResourceGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DefenseResourceGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:wafv3/defenseResourceGroup:DefenseResourceGroup',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String?>('description');
    groupName = registerOutput<String>('groupName');
    instanceId = registerOutput<String>('instanceId');
    resourceLists = registerOutput<List<String>?>('resourceLists');
  }
}
