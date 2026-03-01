import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_endpoint_args.dart';
import 'vpc_endpoint_state.dart';

/// Provides a Private Link Vpc Endpoint resource.
///
///
///
/// For information about Private Link Vpc Endpoint and how to use it, see [What is Vpc Endpoint](https://www.alibabacloud.com/help/en/privatelink/latest/api-privatelink-2020-04-15-createvpcendpoint).
///
/// > **NOTE:** Available since v1.109.0.
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
/// const _default = alicloud.resourcemanager.getResourceGroups({});
/// const defaultbFzA4a = new alicloud.vpc.Network("defaultbFzA4a", {
///     description: "example-terraform",
///     cidrBlock: "172.16.0.0/12",
///     vpcName: name,
/// });
/// const default1FTFrP = new alicloud.ecs.SecurityGroup("default1FTFrP", {
///     name: name,
///     vpcId: defaultbFzA4a.id,
/// });
/// const defaultjljY5S = new alicloud.ecs.SecurityGroup("defaultjljY5S", {
///     name: name,
///     vpcId: defaultbFzA4a.id,
/// });
/// const defaultVpcEndpoint = new alicloud.privatelink.VpcEndpoint("default", {
///     endpointDescription: name,
///     vpcEndpointName: name,
///     resourceGroupId: _default.then(_default => _default.ids?.[0]),
///     endpointType: "Interface",
///     vpcId: defaultbFzA4a.id,
///     serviceName: "com.aliyuncs.privatelink.ap-southeast-5.oss",
///     dryRun: false,
///     zonePrivateIpAddressCount: 1,
///     policyDocument: JSON.stringify({
///         Version: "1",
///         Statement: [{
///             Effect: "Allow",
///             Action: ["*"],
///             Resource: ["*"],
///             Principal: "*",
///         }],
///     }),
///     securityGroupIds: [default1FTFrP.id],
///     serviceId: "epsrv-k1apjysze8u1l9t6uyg9",
///     protectedEnabled: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.resourcemanager.get_resource_groups()
/// defaultb_fz_a4a = alicloud.vpc.Network("defaultbFzA4a",
///     description="example-terraform",
///     cidr_block="172.16.0.0/12",
///     vpc_name=name)
/// default1_ft_fr_p = alicloud.ecs.SecurityGroup("default1FTFrP",
///     name=name,
///     vpc_id=defaultb_fz_a4a.id)
/// defaultjlj_y5_s = alicloud.ecs.SecurityGroup("defaultjljY5S",
///     name=name,
///     vpc_id=defaultb_fz_a4a.id)
/// default_vpc_endpoint = alicloud.privatelink.VpcEndpoint("default",
///     endpoint_description=name,
///     vpc_endpoint_name=name,
///     resource_group_id=default.ids[0],
///     endpoint_type="Interface",
///     vpc_id=defaultb_fz_a4a.id,
///     service_name="com.aliyuncs.privatelink.ap-southeast-5.oss",
///     dry_run=False,
///     zone_private_ip_address_count=1,
///     policy_document=json.dumps({
///         "Version": "1",
///         "Statement": [{
///             "Effect": "Allow",
///             "Action": ["*"],
///             "Resource": ["*"],
///             "Principal": "*",
///         }],
///     }),
///     security_group_ids=[default1_ft_fr_p.id],
///     service_id="epsrv-k1apjysze8u1l9t6uyg9",
///     protected_enabled=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = AliCloud.ResourceManager.GetResourceGroups.Invoke();
///
///     var defaultbFzA4a = new AliCloud.Vpc.Network("defaultbFzA4a", new()
///     {
///         Description = "example-terraform",
///         CidrBlock = "172.16.0.0/12",
///         VpcName = name,
///     });
///
///     var default1FTFrP = new AliCloud.Ecs.SecurityGroup("default1FTFrP", new()
///     {
///         Name = name,
///         VpcId = defaultbFzA4a.Id,
///     });
///
///     var defaultjljY5S = new AliCloud.Ecs.SecurityGroup("defaultjljY5S", new()
///     {
///         Name = name,
///         VpcId = defaultbFzA4a.Id,
///     });
///
///     var defaultVpcEndpoint = new AliCloud.PrivateLink.VpcEndpoint("default", new()
///     {
///         EndpointDescription = name,
///         VpcEndpointName = name,
///         ResourceGroupId = @default.Apply(@default => @default.Apply(getResourceGroupsResult => getResourceGroupsResult.Ids[0])),
///         EndpointType = "Interface",
///         VpcId = defaultbFzA4a.Id,
///         ServiceName = "com.aliyuncs.privatelink.ap-southeast-5.oss",
///         DryRun = false,
///         ZonePrivateIpAddressCount = 1,
///         PolicyDocument = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "1",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Effect"] = "Allow",
///                     ["Action"] = new[]
///                     {
///                         "*",
///                     },
///                     ["Resource"] = new[]
///                     {
///                         "*",
///                     },
///                     ["Principal"] = "*",
///                 },
///             },
///         }),
///         SecurityGroupIds = new[]
///         {
///             default1FTFrP.Id,
///         },
///         ServiceId = "epsrv-k1apjysze8u1l9t6uyg9",
///         ProtectedEnabled = false,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/privatelink"
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
/// 		_default, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultbFzA4a, err := vpc.NewNetwork(ctx, "defaultbFzA4a", &vpc.NetworkArgs{
/// 			Description: pulumi.String("example-terraform"),
/// 			CidrBlock:   pulumi.String("172.16.0.0/12"),
/// 			VpcName:     pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		default1FTFrP, err := ecs.NewSecurityGroup(ctx, "default1FTFrP", &ecs.SecurityGroupArgs{
/// 			Name:  pulumi.String(name),
/// 			VpcId: defaultbFzA4a.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ecs.NewSecurityGroup(ctx, "defaultjljY5S", &ecs.SecurityGroupArgs{
/// 			Name:  pulumi.String(name),
/// 			VpcId: defaultbFzA4a.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Version": "1",
/// 			"Statement": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Effect": "Allow",
/// 					"Action": []string{
/// 						"*",
/// 					},
/// 					"Resource": []string{
/// 						"*",
/// 					},
/// 					"Principal": "*",
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = privatelink.NewVpcEndpoint(ctx, "default", &privatelink.VpcEndpointArgs{
/// 			EndpointDescription:       pulumi.String(name),
/// 			VpcEndpointName:           pulumi.String(name),
/// 			ResourceGroupId:           pulumi.String(_default.Ids[0]),
/// 			EndpointType:              pulumi.String("Interface"),
/// 			VpcId:                     defaultbFzA4a.ID(),
/// 			ServiceName:               pulumi.String("com.aliyuncs.privatelink.ap-southeast-5.oss"),
/// 			DryRun:                    pulumi.Bool(false),
/// 			ZonePrivateIpAddressCount: pulumi.Int(1),
/// 			PolicyDocument:            pulumi.String(json0),
/// 			SecurityGroupIds: pulumi.StringArray{
/// 				default1FTFrP.ID(),
/// 			},
/// 			ServiceId:        pulumi.String("epsrv-k1apjysze8u1l9t6uyg9"),
/// 			ProtectedEnabled: pulumi.Bool(false),
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.privatelink.VpcEndpoint;
/// import com.pulumi.alicloud.privatelink.VpcEndpointArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         final var default = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .build());
///
///         var defaultbFzA4a = new Network("defaultbFzA4a", NetworkArgs.builder()
///             .description("example-terraform")
///             .cidrBlock("172.16.0.0/12")
///             .vpcName(name)
///             .build());
///
///         var default1FTFrP = new SecurityGroup("default1FTFrP", SecurityGroupArgs.builder()
///             .name(name)
///             .vpcId(defaultbFzA4a.id())
///             .build());
///
///         var defaultjljY5S = new SecurityGroup("defaultjljY5S", SecurityGroupArgs.builder()
///             .name(name)
///             .vpcId(defaultbFzA4a.id())
///             .build());
///
///         var defaultVpcEndpoint = new VpcEndpoint("defaultVpcEndpoint", VpcEndpointArgs.builder()
///             .endpointDescription(name)
///             .vpcEndpointName(name)
///             .resourceGroupId(default_.ids()[0])
///             .endpointType("Interface")
///             .vpcId(defaultbFzA4a.id())
///             .serviceName("com.aliyuncs.privatelink.ap-southeast-5.oss")
///             .dryRun(false)
///             .zonePrivateIpAddressCount(1)
///             .policyDocument(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "1"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Action", jsonArray("*")),
///                         jsonProperty("Resource", jsonArray("*")),
///                         jsonProperty("Principal", "*")
///                     )))
///                 )))
///             .securityGroupIds(default1FTFrP.id())
///             .serviceId("epsrv-k1apjysze8u1l9t6uyg9")
///             .protectedEnabled(false)
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
///   defaultbFzA4a:
///     type: alicloud:vpc:Network
///     properties:
///       description: example-terraform
///       cidrBlock: 172.16.0.0/12
///       vpcName: ${name}
///   default1FTFrP:
///     type: alicloud:ecs:SecurityGroup
///     properties:
///       name: ${name}
///       vpcId: ${defaultbFzA4a.id}
///   defaultjljY5S:
///     type: alicloud:ecs:SecurityGroup
///     properties:
///       name: ${name}
///       vpcId: ${defaultbFzA4a.id}
///   defaultVpcEndpoint:
///     type: alicloud:privatelink:VpcEndpoint
///     name: default
///     properties:
///       endpointDescription: ${name}
///       vpcEndpointName: ${name}
///       resourceGroupId: ${default.ids[0]}
///       endpointType: Interface
///       vpcId: ${defaultbFzA4a.id}
///       serviceName: com.aliyuncs.privatelink.ap-southeast-5.oss
///       dryRun: 'false'
///       zonePrivateIpAddressCount: '1'
///       policyDocument:
///         fn::toJSON:
///           Version: '1'
///           Statement:
///             - Effect: Allow
///               Action:
///                 - '*'
///               Resource:
///                 - '*'
///               Principal: '*'
///       securityGroupIds:
///         - ${default1FTFrP.id}
///       serviceId: epsrv-k1apjysze8u1l9t6uyg9
///       protectedEnabled: 'false'
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Private Link Vpc Endpoint can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:privatelink/vpcEndpoint:VpcEndpoint example <id>
/// ```
class VpcEndpoint extends pulumi.CustomResource {
  /// The IP address version. Valid values:
  /// - `IPv4` (default): IPv4.
  /// - `DualStack`: dual-stack.
  late final pulumi.Output<String> addressIpVersion;
  /// The bandwidth of the endpoint connection.  1024 to 10240. Unit: Mbit/s.
  late final pulumi.Output<int> bandwidth;
  /// The state of the endpoint connection.
  late final pulumi.Output<String> connectionStatus;
  /// The time when the endpoint was created.
  late final pulumi.Output<String> createTime;
  /// Specifies whether to perform only a dry run, without performing the actual request. Valid values:
  late final pulumi.Output<bool?> dryRun;
  /// The service state of the endpoint.
  late final pulumi.Output<String> endpointBusinessStatus;
  /// The description of the endpoint.
  late final pulumi.Output<String?> endpointDescription;
  /// The domain name of the endpoint.
  late final pulumi.Output<String> endpointDomain;
  /// The endpoint type.
  ///
  /// Only the value: Interface, indicating the Interface endpoint. You can add the service resource types of Application Load Balancer (ALB), Classic Load Balancer (CLB), and Network Load Balancer (NLB).
  late final pulumi.Output<String> endpointType;
  /// RAM access policies. For more information about policy definitions, see Alibaba Cloud-access control (RAM) official guidance.
  late final pulumi.Output<String> policyDocument;
  /// Specifies whether to enable user authentication. This parameter is available in Security Token Service (STS) mode. Valid values:
  late final pulumi.Output<bool?> protectedEnabled;
  /// (Available since v1.239.0) The region ID of the endpoint.
  late final pulumi.Output<String> regionId;
  /// The resource group ID.
  late final pulumi.Output<String> resourceGroupId;
  /// The ID of the security group that is associated with the endpoint ENI. The security group can be used to control data transfer between the VPC and the endpoint ENI.
  ///
  /// The endpoint can be associated with up to 10 security groups.
  late final pulumi.Output<List<String>?> securityGroupIds;
  /// The ID of the endpoint service with which the endpoint is associated.
  late final pulumi.Output<String> serviceId;
  /// The name of the endpoint service with which the endpoint is associated.
  late final pulumi.Output<String> serviceName;
  /// The state of the endpoint.
  late final pulumi.Output<String> status;
  /// The list of tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The name of the endpoint.
  late final pulumi.Output<String?> vpcEndpointName;
  /// The ID of the VPC to which the endpoint belongs.
  late final pulumi.Output<String> vpcId;
  /// The number of private IP addresses that are assigned to an elastic network interface (ENI) in each zone. Only 1 is returned.
  late final pulumi.Output<int> zonePrivateIpAddressCount;

  /// Creates a new [VpcEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpcEndpoint]. {@macro pulumi_privatelink_vpc_endpoint_vpc_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpcEndpoint(
    String name, {
    VpcEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:privatelink/vpcEndpoint:VpcEndpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.addressIpVersion = registerOutput<String>('addressIpVersion');
    this.bandwidth = registerOutput<int>('bandwidth');
    this.connectionStatus = registerOutput<String>('connectionStatus');
    this.createTime = registerOutput<String>('createTime');
    this.dryRun = registerOutput<bool?>('dryRun');
    this.endpointBusinessStatus = registerOutput<String>('endpointBusinessStatus');
    this.endpointDescription = registerOutput<String?>('endpointDescription');
    this.endpointDomain = registerOutput<String>('endpointDomain');
    this.endpointType = registerOutput<String>('endpointType');
    this.policyDocument = registerOutput<String>('policyDocument');
    this.protectedEnabled = registerOutput<bool?>('protectedEnabled');
    this.regionId = registerOutput<String>('regionId');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.securityGroupIds = registerOutput<List<String>?>('securityGroupIds');
    this.serviceId = registerOutput<String>('serviceId');
    this.serviceName = registerOutput<String>('serviceName');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.vpcEndpointName = registerOutput<String?>('vpcEndpointName');
    this.vpcId = registerOutput<String>('vpcId');
    this.zonePrivateIpAddressCount = registerOutput<int>('zonePrivateIpAddressCount');
  }

  /// Gets an existing [VpcEndpoint] resource's state with the given [name] and [id].
  static VpcEndpoint get(
    String name,
    pulumi.Input<String> id, {
    VpcEndpointState? state,
  }) {
    return VpcEndpoint._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VpcEndpoint._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:privatelink/vpcEndpoint:VpcEndpoint',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.addressIpVersion = registerOutput<String>('addressIpVersion');
    this.bandwidth = registerOutput<int>('bandwidth');
    this.connectionStatus = registerOutput<String>('connectionStatus');
    this.createTime = registerOutput<String>('createTime');
    this.dryRun = registerOutput<bool?>('dryRun');
    this.endpointBusinessStatus = registerOutput<String>('endpointBusinessStatus');
    this.endpointDescription = registerOutput<String?>('endpointDescription');
    this.endpointDomain = registerOutput<String>('endpointDomain');
    this.endpointType = registerOutput<String>('endpointType');
    this.policyDocument = registerOutput<String>('policyDocument');
    this.protectedEnabled = registerOutput<bool?>('protectedEnabled');
    this.regionId = registerOutput<String>('regionId');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.securityGroupIds = registerOutput<List<String>?>('securityGroupIds');
    this.serviceId = registerOutput<String>('serviceId');
    this.serviceName = registerOutput<String>('serviceName');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.vpcEndpointName = registerOutput<String?>('vpcEndpointName');
    this.vpcId = registerOutput<String>('vpcId');
    this.zonePrivateIpAddressCount = registerOutput<int>('zonePrivateIpAddressCount');
  }
}
