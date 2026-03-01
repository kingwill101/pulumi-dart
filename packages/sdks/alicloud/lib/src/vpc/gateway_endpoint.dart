import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_endpoint_args.dart';
import 'gateway_endpoint_state.dart';

/// Provides a VPC Gateway Endpoint resource.
///
/// VPC gateway endpoint.
///
/// For information about VPC Gateway Endpoint and how to use it, see [What is Gateway Endpoint](https://www.alibabacloud.com/help/en/virtual-private-cloud/latest/gateway-endpoint).
///
/// > **NOTE:** Available since v1.208.0.
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
/// const domain = config.get("domain") || "com.aliyun.cn-hangzhou.oss";
/// const defaultVpc = new alicloud.vpc.Network("defaultVpc", {description: "tf-example"});
/// const defaultRg = new alicloud.resourcemanager.ResourceGroup("defaultRg", {
///     displayName: "tf-example-497",
///     resourceGroupName: name,
/// });
/// const _default = new alicloud.vpc.GatewayEndpoint("default", {
///     gatewayEndpointDescrption: "test-gateway-endpoint",
///     gatewayEndpointName: name,
///     vpcId: defaultVpc.id,
///     resourceGroupId: defaultRg.id,
///     serviceName: domain,
///     policyDocument: `      {
///         \\"Version\\": \\"1\\",
///         \\"Statement\\": [{
///           \\"Effect\\": \\"Allow\\",
///           \\"Resource\\": [\\"*\\"],
///           \\"Action\\": [\\"*\\"],
///           \\"Principal\\": [\\"*\\"]
///         }]
///       }
/// `,
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
/// domain = config.get("domain")
/// if domain is None:
///     domain = "com.aliyun.cn-hangzhou.oss"
/// default_vpc = alicloud.vpc.Network("defaultVpc", description="tf-example")
/// default_rg = alicloud.resourcemanager.ResourceGroup("defaultRg",
///     display_name="tf-example-497",
///     resource_group_name=name)
/// default = alicloud.vpc.GatewayEndpoint("default",
///     gateway_endpoint_descrption="test-gateway-endpoint",
///     gateway_endpoint_name=name,
///     vpc_id=default_vpc.id,
///     resource_group_id=default_rg.id,
///     service_name=domain,
///     policy_document="""      {
///         \"Version\": \"1\",
///         \"Statement\": [{
///           \"Effect\": \"Allow\",
///           \"Resource\": [\"*\"],
///           \"Action\": [\"*\"],
///           \"Principal\": [\"*\"]
///         }]
///       }
/// """)
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
///     var domain = config.Get("domain") ?? "com.aliyun.cn-hangzhou.oss";
///     var defaultVpc = new AliCloud.Vpc.Network("defaultVpc", new()
///     {
///         Description = "tf-example",
///     });
///
///     var defaultRg = new AliCloud.ResourceManager.ResourceGroup("defaultRg", new()
///     {
///         DisplayName = "tf-example-497",
///         ResourceGroupName = name,
///     });
///
///     var @default = new AliCloud.Vpc.GatewayEndpoint("default", new()
///     {
///         GatewayEndpointDescrption = "test-gateway-endpoint",
///         GatewayEndpointName = name,
///         VpcId = defaultVpc.Id,
///         ResourceGroupId = defaultRg.Id,
///         ServiceName = domain,
///         PolicyDocument = @"      {
///         \""Version\"": \""1\"",
///         \""Statement\"": [{
///           \""Effect\"": \""Allow\"",
///           \""Resource\"": [\""*\""],
///           \""Action\"": [\""*\""],
///           \""Principal\"": [\""*\""]
///         }]
///       }
/// ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
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
/// 		domain := "com.aliyun.cn-hangzhou.oss"
/// 		if param := cfg.Get("domain"); param != "" {
/// 			domain = param
/// 		}
/// 		defaultVpc, err := vpc.NewNetwork(ctx, "defaultVpc", &vpc.NetworkArgs{
/// 			Description: pulumi.String("tf-example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultRg, err := resourcemanager.NewResourceGroup(ctx, "defaultRg", &resourcemanager.ResourceGroupArgs{
/// 			DisplayName:       pulumi.String("tf-example-497"),
/// 			ResourceGroupName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpc.NewGatewayEndpoint(ctx, "default", &vpc.GatewayEndpointArgs{
/// 			GatewayEndpointDescrption: pulumi.String("test-gateway-endpoint"),
/// 			GatewayEndpointName:       pulumi.String(name),
/// 			VpcId:                     defaultVpc.ID(),
/// 			ResourceGroupId:           defaultRg.ID(),
/// 			ServiceName:               pulumi.String(domain),
/// 			PolicyDocument: pulumi.String(`      {
///         \"Version\": \"1\",
///         \"Statement\": [{
///           \"Effect\": \"Allow\",
///           \"Resource\": [\"*\"],
///           \"Action\": [\"*\"],
///           \"Principal\": [\"*\"]
///         }]
///       }
/// `),
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
/// import com.pulumi.alicloud.resourcemanager.ResourceGroup;
/// import com.pulumi.alicloud.resourcemanager.ResourceGroupArgs;
/// import com.pulumi.alicloud.vpc.GatewayEndpoint;
/// import com.pulumi.alicloud.vpc.GatewayEndpointArgs;
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
///         final var domain = config.get("domain").orElse("com.aliyun.cn-hangzhou.oss");
///         var defaultVpc = new Network("defaultVpc", NetworkArgs.builder()
///             .description("tf-example")
///             .build());
///
///         var defaultRg = new ResourceGroup("defaultRg", ResourceGroupArgs.builder()
///             .displayName("tf-example-497")
///             .resourceGroupName(name)
///             .build());
///
///         var default_ = new GatewayEndpoint("default", GatewayEndpointArgs.builder()
///             .gatewayEndpointDescrption("test-gateway-endpoint")
///             .gatewayEndpointName(name)
///             .vpcId(defaultVpc.id())
///             .resourceGroupId(defaultRg.id())
///             .serviceName(domain)
///             .policyDocument("""
///       {
///         \"Version\": \"1\",
///         \"Statement\": [{
///           \"Effect\": \"Allow\",
///           \"Resource\": [\"*\"],
///           \"Action\": [\"*\"],
///           \"Principal\": [\"*\"]
///         }]
///       }
///             """)
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
///   domain:
///     type: string
///     default: com.aliyun.cn-hangzhou.oss
/// resources:
///   defaultVpc:
///     type: alicloud:vpc:Network
///     properties:
///       description: tf-example
///   defaultRg:
///     type: alicloud:resourcemanager:ResourceGroup
///     properties:
///       displayName: tf-example-497
///       resourceGroupName: ${name}
///   default:
///     type: alicloud:vpc:GatewayEndpoint
///     properties:
///       gatewayEndpointDescrption: test-gateway-endpoint
///       gatewayEndpointName: ${name}
///       vpcId: ${defaultVpc.id}
///       resourceGroupId: ${defaultRg.id}
///       serviceName: ${domain}
///       policyDocument: |2
///               {
///                 \"Version\": \"1\",
///                 \"Statement\": [{
///                   \"Effect\": \"Allow\",
///                   \"Resource\": [\"*\"],
///                   \"Action\": [\"*\"],
///                   \"Principal\": [\"*\"]
///                 }]
///               }
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// VPC Gateway Endpoint can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:vpc/gatewayEndpoint:GatewayEndpoint example <id>
/// ```
class GatewayEndpoint extends pulumi.CustomResource {
  /// The creation time of the VPC gateway endpoint.
  late final pulumi.Output<String> createTime;
  /// The description of the VPC gateway endpoint.
  /// The length of the description information is between 1 and 255 characters.
  late final pulumi.Output<String?> gatewayEndpointDescrption;
  /// The name of the VPC gateway endpoint.
  late final pulumi.Output<String?> gatewayEndpointName;
  /// Access control policies for cloud services. This parameter is required when the cloud service is oss. For details about the syntax and structure of access policies, see [syntax and structure of permission Policies](https://help.aliyun.com/document_detail/93739.html).
  late final pulumi.Output<String?> policyDocument;
  /// The ID of the resource group to which the instance belongs.
  late final pulumi.Output<String> resourceGroupId;
  /// The ID list of the route table associated with the VPC gateway endpoint. **NOTE:** this argument cannot be set at the same time as `alicloud.vpc.GatewayEndpointRouteTableAttachment`.
  late final pulumi.Output<List<String>> routeTables;
  /// The endpoint service name.
  late final pulumi.Output<String> serviceName;
  /// The status of VPC gateway endpoint.
  late final pulumi.Output<String> status;
  /// The tags of the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The ID of the VPC.
  late final pulumi.Output<String> vpcId;

  /// Creates a new [GatewayEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GatewayEndpoint]. {@macro pulumi_vpc_gateway_endpoint_gateway_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GatewayEndpoint(
    String name, {
    GatewayEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/gatewayEndpoint:GatewayEndpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.gatewayEndpointDescrption = registerOutput<String?>('gatewayEndpointDescrption');
    this.gatewayEndpointName = registerOutput<String?>('gatewayEndpointName');
    this.policyDocument = registerOutput<String?>('policyDocument');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.routeTables = registerOutput<List<String>>('routeTables');
    this.serviceName = registerOutput<String>('serviceName');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.vpcId = registerOutput<String>('vpcId');
  }

  /// Gets an existing [GatewayEndpoint] resource's state with the given [name] and [id].
  static GatewayEndpoint get(
    String name,
    pulumi.Input<String> id, {
    GatewayEndpointState? state,
  }) {
    return GatewayEndpoint._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  GatewayEndpoint._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/gatewayEndpoint:GatewayEndpoint',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.gatewayEndpointDescrption = registerOutput<String?>('gatewayEndpointDescrption');
    this.gatewayEndpointName = registerOutput<String?>('gatewayEndpointName');
    this.policyDocument = registerOutput<String?>('policyDocument');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.routeTables = registerOutput<List<String>>('routeTables');
    this.serviceName = registerOutput<String>('serviceName');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
