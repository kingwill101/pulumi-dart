import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_workspace_args.dart';
import 'enterprise_workspace_state.dart';

/// Provides a DMS Enterprise Workspace resource.
///
///
///
/// For information about DMS Enterprise Workspace and how to use it, see [What is Workspace](https://next.api.alibabacloud.com/document/dms-enterprise/2018-11-01/CreateWorkspace).
///
/// > **NOTE:** Available since v1.259.0.
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
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform_example";
/// const _default = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const vpcCreate = new alicloud.vpc.Network("vpc_create", {
///     isDefault: false,
///     description: "example vpc",
///     cidrBlock: "192.168.0.0/16",
///     vpcName: `${name}-${_default.result}`,
/// });
/// const defaultEnterpriseWorkspace = new alicloud.dms.EnterpriseWorkspace("default", {
///     description: name,
///     workspaceName: `${name}-${_default.result}`,
///     vpcId: vpcCreate.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform_example"
/// default = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// vpc_create = alicloud.vpc.Network("vpc_create",
///     is_default=False,
///     description="example vpc",
///     cidr_block="192.168.0.0/16",
///     vpc_name=f"{name}-{default['result']}")
/// default_enterprise_workspace = alicloud.dms.EnterpriseWorkspace("default",
///     description=name,
///     workspace_name=f"{name}-{default['result']}",
///     vpc_id=vpc_create.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform_example";
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var vpcCreate = new AliCloud.Vpc.Network("vpc_create", new()
///     {
///         IsDefault = false,
///         Description = "example vpc",
///         CidrBlock = "192.168.0.0/16",
///         VpcName = $"{name}-{@default.Result}",
///     });
///
///     var defaultEnterpriseWorkspace = new AliCloud.Dms.EnterpriseWorkspace("default", new()
///     {
///         Description = name,
///         WorkspaceName = $"{name}-{@default.Result}",
///         VpcId = vpcCreate.Id,
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dms"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform_example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vpcCreate, err := vpc.NewNetwork(ctx, "vpc_create", &vpc.NetworkArgs{
/// 			IsDefault:   pulumi.Bool(false),
/// 			Description: pulumi.String("example vpc"),
/// 			CidrBlock:   pulumi.String("192.168.0.0/16"),
/// 			VpcName:     pulumi.Sprintf("%v-%v", name, _default.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dms.NewEnterpriseWorkspace(ctx, "default", &dms.EnterpriseWorkspaceArgs{
/// 			Description:   pulumi.String(name),
/// 			WorkspaceName: pulumi.Sprintf("%v-%v", name, _default.Result),
/// 			VpcId:         vpcCreate.ID(),
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.dms.EnterpriseWorkspace;
/// import com.pulumi.alicloud.dms.EnterpriseWorkspaceArgs;
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
///         final var name = config.get("name").orElse("terraform_example");
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var vpcCreate = new Network("vpcCreate", NetworkArgs.builder()
///             .isDefault(false)
///             .description("example vpc")
///             .cidrBlock("192.168.0.0/16")
///             .vpcName(String.format("%s-%s", name,default_.result()))
///             .build());
///
///         var defaultEnterpriseWorkspace = new EnterpriseWorkspace("defaultEnterpriseWorkspace", EnterpriseWorkspaceArgs.builder()
///             .description(name)
///             .workspaceName(String.format("%s-%s", name,default_.result()))
///             .vpcId(vpcCreate.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform_example
/// resources:
///   default:
///     type: random:Integer
///     properties:
///       min: 10000
///       max: 99999
///   vpcCreate:
///     type: alicloud:vpc:Network
///     name: vpc_create
///     properties:
///       isDefault: false
///       description: example vpc
///       cidrBlock: 192.168.0.0/16
///       vpcName: ${name}-${default.result}
///   defaultEnterpriseWorkspace:
///     type: alicloud:dms:EnterpriseWorkspace
///     name: default
///     properties:
///       description: ${name}
///       workspaceName: ${name}-${default.result}
///       vpcId: ${vpcCreate.id}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// DMS Enterprise Workspace can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:dms/enterpriseWorkspace:EnterpriseWorkspace example <id>
/// ```
class EnterpriseWorkspace extends pulumi.CustomResource {
  /// The description of the Workspace.
  late final pulumi.Output<String> description;
  /// The region ID of the resource.
  late final pulumi.Output<String> regionId;
  /// The ID of the VPC.
  late final pulumi.Output<String> vpcId;
  /// The name of the Workspace.
  late final pulumi.Output<String> workspaceName;

  /// Creates a new [EnterpriseWorkspace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EnterpriseWorkspace]. {@macro pulumi_dms_enterprise_workspace_enterprise_workspace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EnterpriseWorkspace(
    String name, {
    EnterpriseWorkspaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dms/enterpriseWorkspace:EnterpriseWorkspace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String>('description');
    this.regionId = registerOutput<String>('regionId');
    this.vpcId = registerOutput<String>('vpcId');
    this.workspaceName = registerOutput<String>('workspaceName');
  }

  /// Gets an existing [EnterpriseWorkspace] resource's state with the given [name] and [id].
  static EnterpriseWorkspace get(
    String name,
    pulumi.Input<String> id, {
    EnterpriseWorkspaceState? state,
  }) {
    return EnterpriseWorkspace._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EnterpriseWorkspace._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dms/enterpriseWorkspace:EnterpriseWorkspace',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String>('description');
    this.regionId = registerOutput<String>('regionId');
    this.vpcId = registerOutput<String>('vpcId');
    this.workspaceName = registerOutput<String>('workspaceName');
  }
}
