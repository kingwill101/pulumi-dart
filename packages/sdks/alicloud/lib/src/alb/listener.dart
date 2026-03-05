import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_access_log_tracing_config.dart';
import 'listener_acl_config.dart';
import 'listener_args.dart';
import 'listener_certificates.dart';
import 'listener_quic_config.dart';
import 'listener_state.dart';
import 'listener_xforwarded_for_config.dart';

/// Provides a Application Load Balancer (ALB) Listener resource.
///
///
///
/// For information about Application Load Balancer (ALB) Listener and how to use it, see [What is Listener](https://www.alibabacloud.com/help/en/slb/application-load-balancer/developer-reference/api-alb-2020-06-16-createlistener).
///
/// &gt; **NOTE:** Available since v1.133.0.
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
/// const name = config.get("name") || "tf_example";
/// const _default = alicloud.alb.getZones({});
/// const defaultGetResourceGroups = alicloud.resourcemanager.getResourceGroups({});
/// const defaultGetInstanceTypes = _default.then(_default => alicloud.ecs.getInstanceTypes({
///     availabilityZone: _default.zones?.[0]?.id,
///     cpuCoreCount: 1,
///     memorySize: 2,
/// }));
/// const defaultGetImages = alicloud.ecs.getImages({
///     nameRegex: "^ubuntu_18.*64",
///     owners: "system",
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "10.4.0.0/16",
/// });
/// const defaultSwitch: alicloud.vpc.Switch[] = [];
/// for (const range = {value: 0}; range.value < 2; range.value++) {
///     defaultSwitch.push(new alicloud.vpc.Switch(`default-${range.value}`, {
///         vpcId: defaultNetwork.id,
///         cidrBlock: std.format({
///             input: "10.4.%d.0/24",
///             args: [range.value + 1],
///         }).then(invoke => invoke.result),
///         zoneId: _default.then(_default => _default.zones[range.value].id),
///         vswitchName: std.format({
///             input: `${name}_%d`,
///             args: [range.value + 1],
///         }).then(invoke => invoke.result),
///     }));
/// }
/// const defaultSecurityGroup = new alicloud.ecs.SecurityGroup("default", {
///     securityGroupName: name,
///     description: name,
///     vpcId: defaultNetwork.id,
/// });
/// const defaultLoadBalancer = new alicloud.alb.LoadBalancer("default", {
///     vpcId: defaultNetwork.id,
///     addressType: "Internet",
///     addressAllocatedMode: "Fixed",
///     loadBalancerName: name,
///     loadBalancerEdition: "Basic",
///     resourceGroupId: defaultGetResourceGroups.then(defaultGetResourceGroups => defaultGetResourceGroups.groups?.[0]?.id),
///     loadBalancerBillingConfig: {
///         payType: "PayAsYouGo",
///     },
///     tags: {
///         Created: "TF",
///     },
///     zoneMappings: [
///         {
///             vswitchId: defaultSwitch[0].id,
///             zoneId: _default.then(_default => _default.zones?.[0]?.id),
///         },
///         {
///             vswitchId: defaultSwitch[1].id,
///             zoneId: _default.then(_default => _default.zones?.[1]?.id),
///         },
///     ],
///     modificationProtectionConfig: {
///         status: "NonProtection",
///     },
/// });
/// const defaultInstance = new alicloud.ecs.Instance("default", {
///     availabilityZone: _default.then(_default => _default.zones?.[0]?.id),
///     instanceName: name,
///     imageId: defaultGetImages.then(defaultGetImages => defaultGetImages.images?.[0]?.id),
///     instanceType: defaultGetInstanceTypes.then(defaultGetInstanceTypes => defaultGetInstanceTypes.instanceTypes?.[0]?.id),
///     securityGroups: [defaultSecurityGroup.id],
///     vswitchId: defaultSwitch[0].id,
/// });
/// const defaultServerGroup = new alicloud.alb.ServerGroup("default", {
///     protocol: "HTTP",
///     vpcId: defaultNetwork.id,
///     serverGroupName: name,
///     resourceGroupId: defaultGetResourceGroups.then(defaultGetResourceGroups => defaultGetResourceGroups.groups?.[0]?.id),
///     healthCheckConfig: {
///         healthCheckConnectPort: 46325,
///         healthCheckEnabled: true,
///         healthCheckHost: "tf-example.com",
///         healthCheckCodes: [
///             "http_2xx",
///             "http_3xx",
///             "http_4xx",
///         ],
///         healthCheckHttpVersion: "HTTP1.1",
///         healthCheckInterval: 2,
///         healthCheckMethod: "HEAD",
///         healthCheckPath: "/tf-example",
///         healthCheckProtocol: "HTTP",
///         healthCheckTimeout: 5,
///         healthyThreshold: 3,
///         unhealthyThreshold: 3,
///     },
///     stickySessionConfig: {
///         stickySessionEnabled: true,
///         cookie: "tf-example",
///         stickySessionType: "Server",
///     },
///     servers: [{
///         description: name,
///         port: 80,
///         serverId: defaultInstance.id,
///         serverIp: defaultInstance.privateIp,
///         serverType: "Ecs",
///         weight: 10,
///     }],
/// });
/// const defaultListener = new alicloud.alb.Listener("default", {
///     loadBalancerId: defaultLoadBalancer.id,
///     listenerProtocol: "HTTP",
///     listenerPort: 443,
///     listenerDescription: name,
///     defaultActions: [{
///         type: "ForwardGroup",
///         forwardGroupConfig: {
///             serverGroupTuples: [{
///                 serverGroupId: defaultServerGroup.id,
///             }],
///         },
///     }],
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
///     name = "tf_example"
/// default = alicloud.alb.get_zones()
/// default_get_resource_groups = alicloud.resourcemanager.get_resource_groups()
/// default_get_instance_types = alicloud.ecs.get_instance_types(availability_zone=default.zones[0].id,
///     cpu_core_count=1,
///     memory_size=2)
/// default_get_images = alicloud.ecs.get_images(name_regex="^ubuntu_18.*64",
///     owners="system")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="10.4.0.0/16")
/// default_switch = []
/// for range in [{"value": i} for i in range(0, 2)]:
///     default_switch.append(alicloud.vpc.Switch(f"default-{range['value']}",
///         vpc_id=default_network.id,
///         cidr_block=std.format(input="10.4.%d.0/24",
///             args=[range["value"] + 1]).result,
///         zone_id=default.zones[range["value"]].id,
///         vswitch_name=std.format(input=f"{name}_%d",
///             args=[range["value"] + 1]).result))
/// default_security_group = alicloud.ecs.SecurityGroup("default",
///     security_group_name=name,
///     description=name,
///     vpc_id=default_network.id)
/// default_load_balancer = alicloud.alb.LoadBalancer("default",
///     vpc_id=default_network.id,
///     address_type="Internet",
///     address_allocated_mode="Fixed",
///     load_balancer_name=name,
///     load_balancer_edition="Basic",
///     resource_group_id=default_get_resource_groups.groups[0].id,
///     load_balancer_billing_config={
///         "pay_type": "PayAsYouGo",
///     },
///     tags={
///         "Created": "TF",
///     },
///     zone_mappings=[
///         {
///             "vswitch_id": default_switch[0].id,
///             "zone_id": default.zones[0].id,
///         },
///         {
///             "vswitch_id": default_switch[1].id,
///             "zone_id": default.zones[1].id,
///         },
///     ],
///     modification_protection_config={
///         "status": "NonProtection",
///     })
/// default_instance = alicloud.ecs.Instance("default",
///     availability_zone=default.zones[0].id,
///     instance_name=name,
///     image_id=default_get_images.images[0].id,
///     instance_type=default_get_instance_types.instance_types[0].id,
///     security_groups=[default_security_group.id],
///     vswitch_id=default_switch[0].id)
/// default_server_group = alicloud.alb.ServerGroup("default",
///     protocol="HTTP",
///     vpc_id=default_network.id,
///     server_group_name=name,
///     resource_group_id=default_get_resource_groups.groups[0].id,
///     health_check_config={
///         "health_check_connect_port": 46325,
///         "health_check_enabled": True,
///         "health_check_host": "tf-example.com",
///         "health_check_codes": [
///             "http_2xx",
///             "http_3xx",
///             "http_4xx",
///         ],
///         "health_check_http_version": "HTTP1.1",
///         "health_check_interval": 2,
///         "health_check_method": "HEAD",
///         "health_check_path": "/tf-example",
///         "health_check_protocol": "HTTP",
///         "health_check_timeout": 5,
///         "healthy_threshold": 3,
///         "unhealthy_threshold": 3,
///     },
///     sticky_session_config={
///         "sticky_session_enabled": True,
///         "cookie": "tf-example",
///         "sticky_session_type": "Server",
///     },
///     servers=[{
///         "description": name,
///         "port": 80,
///         "server_id": default_instance.id,
///         "server_ip": default_instance.private_ip,
///         "server_type": "Ecs",
///         "weight": 10,
///     }])
/// default_listener = alicloud.alb.Listener("default",
///     load_balancer_id=default_load_balancer.id,
///     listener_protocol="HTTP",
///     listener_port=443,
///     listener_description=name,
///     default_actions=[{
///         "type": "ForwardGroup",
///         "forward_group_config": {
///             "server_group_tuples": [{
///                 "server_group_id": default_server_group.id,
///             }],
///         },
///     }])
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
///     var name = config.Get("name") ?? "tf_example";
///     var @default = AliCloud.Alb.GetZones.Invoke();
///
///     var defaultGetResourceGroups = AliCloud.ResourceManager.GetResourceGroups.Invoke();
///
///     var defaultGetInstanceTypes = AliCloud.Ecs.GetInstanceTypes.Invoke(new()
///     {
///         AvailabilityZone = @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         CpuCoreCount = 1,
///         MemorySize = 2,
///     });
///
///     var defaultGetImages = AliCloud.Ecs.GetImages.Invoke(new()
///     {
///         NameRegex = "^ubuntu_18.*64",
///         Owners = "system",
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "10.4.0.0/16",
///     });
///
///     var defaultSwitch = new List<AliCloud.Vpc.Switch>();
///     for (var rangeIndex = 0; rangeIndex < 2; rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         defaultSwitch.Add(new AliCloud.Vpc.Switch($"default-{range.Value}", new()
///         {
///             VpcId = defaultNetwork.Id,
///             CidrBlock = Std.Format.Invoke(new()
///             {
///                 Input = "10.4.%d.0/24",
///                 Args = new[]
///                 {
///                     range.Value + 1,
///                 },
///             }).Apply(invoke => invoke.Result),
///             ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones)[range.Value].Id),
///             VswitchName = Std.Format.Invoke(new()
///             {
///                 Input = $"{name}_%d",
///                 Args = new[]
///                 {
///                     range.Value + 1,
///                 },
///             }).Apply(invoke => invoke.Result),
///         }));
///     }
///     var defaultSecurityGroup = new AliCloud.Ecs.SecurityGroup("default", new()
///     {
///         SecurityGroupName = name,
///         Description = name,
///         VpcId = defaultNetwork.Id,
///     });
///
///     var defaultLoadBalancer = new AliCloud.Alb.LoadBalancer("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///         AddressType = "Internet",
///         AddressAllocatedMode = "Fixed",
///         LoadBalancerName = name,
///         LoadBalancerEdition = "Basic",
///         ResourceGroupId = defaultGetResourceGroups.Apply(getResourceGroupsResult => getResourceGroupsResult.Groups[0]?.Id),
///         LoadBalancerBillingConfig = new AliCloud.Alb.Inputs.LoadBalancerLoadBalancerBillingConfigArgs
///         {
///             PayType = "PayAsYouGo",
///         },
///         Tags =
///         {
///             { "Created", "TF" },
///         },
///         ZoneMappings = new[]
///         {
///             new AliCloud.Alb.Inputs.LoadBalancerZoneMappingArgs
///             {
///                 VswitchId = defaultSwitch[0].Id,
///                 ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///             },
///             new AliCloud.Alb.Inputs.LoadBalancerZoneMappingArgs
///             {
///                 VswitchId = defaultSwitch[1].Id,
///                 ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[1]?.Id)),
///             },
///         },
///         ModificationProtectionConfig = new AliCloud.Alb.Inputs.LoadBalancerModificationProtectionConfigArgs
///         {
///             Status = "NonProtection",
///         },
///     });
///
///     var defaultInstance = new AliCloud.Ecs.Instance("default", new()
///     {
///         AvailabilityZone = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         InstanceName = name,
///         ImageId = defaultGetImages.Apply(getImagesResult => getImagesResult.Images[0]?.Id),
///         InstanceType = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes[0]?.Id),
///         SecurityGroups = new[]
///         {
///             defaultSecurityGroup.Id,
///         },
///         VswitchId = defaultSwitch[0].Id,
///     });
///
///     var defaultServerGroup = new AliCloud.Alb.ServerGroup("default", new()
///     {
///         Protocol = "HTTP",
///         VpcId = defaultNetwork.Id,
///         ServerGroupName = name,
///         ResourceGroupId = defaultGetResourceGroups.Apply(getResourceGroupsResult => getResourceGroupsResult.Groups[0]?.Id),
///         HealthCheckConfig = new AliCloud.Alb.Inputs.ServerGroupHealthCheckConfigArgs
///         {
///             HealthCheckConnectPort = 46325,
///             HealthCheckEnabled = true,
///             HealthCheckHost = "tf-example.com",
///             HealthCheckCodes = new[]
///             {
///                 "http_2xx",
///                 "http_3xx",
///                 "http_4xx",
///             },
///             HealthCheckHttpVersion = "HTTP1.1",
///             HealthCheckInterval = 2,
///             HealthCheckMethod = "HEAD",
///             HealthCheckPath = "/tf-example",
///             HealthCheckProtocol = "HTTP",
///             HealthCheckTimeout = 5,
///             HealthyThreshold = 3,
///             UnhealthyThreshold = 3,
///         },
///         StickySessionConfig = new AliCloud.Alb.Inputs.ServerGroupStickySessionConfigArgs
///         {
///             StickySessionEnabled = true,
///             Cookie = "tf-example",
///             StickySessionType = "Server",
///         },
///         Servers = new[]
///         {
///             new AliCloud.Alb.Inputs.ServerGroupServerArgs
///             {
///                 Description = name,
///                 Port = 80,
///                 ServerId = defaultInstance.Id,
///                 ServerIp = defaultInstance.PrivateIp,
///                 ServerType = "Ecs",
///                 Weight = 10,
///             },
///         },
///     });
///
///     var defaultListener = new AliCloud.Alb.Listener("default", new()
///     {
///         LoadBalancerId = defaultLoadBalancer.Id,
///         ListenerProtocol = "HTTP",
///         ListenerPort = 443,
///         ListenerDescription = name,
///         DefaultActions = new[]
///         {
///             new AliCloud.Alb.Inputs.ListenerDefaultActionArgs
///             {
///                 Type = "ForwardGroup",
///                 ForwardGroupConfig = new AliCloud.Alb.Inputs.ListenerDefaultActionForwardGroupConfigArgs
///                 {
///                     ServerGroupTuples = new[]
///                     {
///                         new AliCloud.Alb.Inputs.ListenerDefaultActionForwardGroupConfigServerGroupTupleArgs
///                         {
///                             ServerGroupId = defaultServerGroup.Id,
///                         },
///                     },
///                 },
///             },
///         },
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/alb"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf_example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := alb.GetZones(ctx, &alb.GetZonesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetResourceGroups, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetInstanceTypes, err := ecs.GetInstanceTypes(ctx, &ecs.GetInstanceTypesArgs{
/// 			AvailabilityZone: pulumi.StringRef(_default.Zones[0].Id),
/// 			CpuCoreCount:     pulumi.IntRef(1),
/// 			MemorySize:       pulumi.Float64Ref(2),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetImages, err := ecs.GetImages(ctx, &ecs.GetImagesArgs{
/// 			NameRegex: pulumi.StringRef("^ubuntu_18.*64"),
/// 			Owners:    pulumi.StringRef("system"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("10.4.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "10.4.%d.0/24",
/// 			Args: []float64{
/// 				val0 + 1,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat1, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: fmt.Sprintf("%v%v", name, "_%d"),
/// 			Args: []float64{
/// 				val0 + 1,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		var defaultSwitch []*vpc.Switch
/// 		for index := 0; index < 2; index++ {
/// 			key0 := index
/// 			val0 := index
/// 			__res, err := vpc.NewSwitch(ctx, fmt.Sprintf("default-%v", key0), &vpc.SwitchArgs{
/// 				VpcId:       defaultNetwork.ID(),
/// 				CidrBlock:   pulumi.String(invokeFormat.Result),
/// 				ZoneId:      _default.Zones[val0].Id,
/// 				VswitchName: pulumi.String(invokeFormat1.Result),
/// 			})
/// 			if err != nil {
/// 				return err
/// 			}
/// 			defaultSwitch = append(defaultSwitch, __res)
/// 		}
/// 		defaultSecurityGroup, err := ecs.NewSecurityGroup(ctx, "default", &ecs.SecurityGroupArgs{
/// 			SecurityGroupName: pulumi.String(name),
/// 			Description:       pulumi.String(name),
/// 			VpcId:             defaultNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultLoadBalancer, err := alb.NewLoadBalancer(ctx, "default", &alb.LoadBalancerArgs{
/// 			VpcId:                defaultNetwork.ID(),
/// 			AddressType:          pulumi.String("Internet"),
/// 			AddressAllocatedMode: pulumi.String("Fixed"),
/// 			LoadBalancerName:     pulumi.String(name),
/// 			LoadBalancerEdition:  pulumi.String("Basic"),
/// 			ResourceGroupId:      pulumi.String(defaultGetResourceGroups.Groups[0].Id),
/// 			LoadBalancerBillingConfig: &alb.LoadBalancerLoadBalancerBillingConfigArgs{
/// 				PayType: pulumi.String("PayAsYouGo"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
/// 			},
/// 			ZoneMappings: alb.LoadBalancerZoneMappingArray{
/// 				&alb.LoadBalancerZoneMappingArgs{
/// 					VswitchId: defaultSwitch[0].ID(),
/// 					ZoneId:    pulumi.String(_default.Zones[0].Id),
/// 				},
/// 				&alb.LoadBalancerZoneMappingArgs{
/// 					VswitchId: defaultSwitch[1].ID(),
/// 					ZoneId:    pulumi.String(_default.Zones[1].Id),
/// 				},
/// 			},
/// 			ModificationProtectionConfig: &alb.LoadBalancerModificationProtectionConfigArgs{
/// 				Status: pulumi.String("NonProtection"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInstance, err := ecs.NewInstance(ctx, "default", &ecs.InstanceArgs{
/// 			AvailabilityZone: pulumi.String(_default.Zones[0].Id),
/// 			InstanceName:     pulumi.String(name),
/// 			ImageId:          pulumi.String(defaultGetImages.Images[0].Id),
/// 			InstanceType:     pulumi.String(defaultGetInstanceTypes.InstanceTypes[0].Id),
/// 			SecurityGroups: pulumi.StringArray{
/// 				defaultSecurityGroup.ID(),
/// 			},
/// 			VswitchId: defaultSwitch[0].ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultServerGroup, err := alb.NewServerGroup(ctx, "default", &alb.ServerGroupArgs{
/// 			Protocol:        pulumi.String("HTTP"),
/// 			VpcId:           defaultNetwork.ID(),
/// 			ServerGroupName: pulumi.String(name),
/// 			ResourceGroupId: pulumi.String(defaultGetResourceGroups.Groups[0].Id),
/// 			HealthCheckConfig: &alb.ServerGroupHealthCheckConfigArgs{
/// 				HealthCheckConnectPort: pulumi.Int(46325),
/// 				HealthCheckEnabled:     pulumi.Bool(true),
/// 				HealthCheckHost:        pulumi.String("tf-example.com"),
/// 				HealthCheckCodes: pulumi.StringArray{
/// 					pulumi.String("http_2xx"),
/// 					pulumi.String("http_3xx"),
/// 					pulumi.String("http_4xx"),
/// 				},
/// 				HealthCheckHttpVersion: pulumi.String("HTTP1.1"),
/// 				HealthCheckInterval:    pulumi.Int(2),
/// 				HealthCheckMethod:      pulumi.String("HEAD"),
/// 				HealthCheckPath:        pulumi.String("/tf-example"),
/// 				HealthCheckProtocol:    pulumi.String("HTTP"),
/// 				HealthCheckTimeout:     pulumi.Int(5),
/// 				HealthyThreshold:       pulumi.Int(3),
/// 				UnhealthyThreshold:     pulumi.Int(3),
/// 			},
/// 			StickySessionConfig: &alb.ServerGroupStickySessionConfigArgs{
/// 				StickySessionEnabled: pulumi.Bool(true),
/// 				Cookie:               pulumi.String("tf-example"),
/// 				StickySessionType:    pulumi.String("Server"),
/// 			},
/// 			Servers: alb.ServerGroupServerArray{
/// 				&alb.ServerGroupServerArgs{
/// 					Description: pulumi.String(name),
/// 					Port:        pulumi.Int(80),
/// 					ServerId:    defaultInstance.ID(),
/// 					ServerIp:    defaultInstance.PrivateIp,
/// 					ServerType:  pulumi.String("Ecs"),
/// 					Weight:      pulumi.Int(10),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = alb.NewListener(ctx, "default", &alb.ListenerArgs{
/// 			LoadBalancerId:      defaultLoadBalancer.ID(),
/// 			ListenerProtocol:    pulumi.String("HTTP"),
/// 			ListenerPort:        pulumi.Int(443),
/// 			ListenerDescription: pulumi.String(name),
/// 			DefaultActions: alb.ListenerDefaultActionArray{
/// 				&alb.ListenerDefaultActionArgs{
/// 					Type: pulumi.String("ForwardGroup"),
/// 					ForwardGroupConfig: &alb.ListenerDefaultActionForwardGroupConfigArgs{
/// 						ServerGroupTuples: alb.ListenerDefaultActionForwardGroupConfigServerGroupTupleArray{
/// 							&alb.ListenerDefaultActionForwardGroupConfigServerGroupTupleArgs{
/// 								ServerGroupId: defaultServerGroup.ID(),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
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
/// import com.pulumi.alicloud.alb.AlbFunctions;
/// import com.pulumi.alicloud.alb.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetInstanceTypesArgs;
/// import com.pulumi.alicloud.ecs.inputs.GetImagesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FormatArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.alb.LoadBalancer;
/// import com.pulumi.alicloud.alb.LoadBalancerArgs;
/// import com.pulumi.alicloud.alb.inputs.LoadBalancerLoadBalancerBillingConfigArgs;
/// import com.pulumi.alicloud.alb.inputs.LoadBalancerZoneMappingArgs;
/// import com.pulumi.alicloud.alb.inputs.LoadBalancerModificationProtectionConfigArgs;
/// import com.pulumi.alicloud.ecs.Instance;
/// import com.pulumi.alicloud.ecs.InstanceArgs;
/// import com.pulumi.alicloud.alb.ServerGroup;
/// import com.pulumi.alicloud.alb.ServerGroupArgs;
/// import com.pulumi.alicloud.alb.inputs.ServerGroupHealthCheckConfigArgs;
/// import com.pulumi.alicloud.alb.inputs.ServerGroupStickySessionConfigArgs;
/// import com.pulumi.alicloud.alb.inputs.ServerGroupServerArgs;
/// import com.pulumi.alicloud.alb.Listener;
/// import com.pulumi.alicloud.alb.ListenerArgs;
/// import com.pulumi.alicloud.alb.inputs.ListenerDefaultActionArgs;
/// import com.pulumi.alicloud.alb.inputs.ListenerDefaultActionForwardGroupConfigArgs;
/// import com.pulumi.codegen.internal.KeyedValue;
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
///         final var name = config.get("name").orElse("tf_example");
///         final var default = AlbFunctions.getZones(GetZonesArgs.builder()
///             .build());
///
///         final var defaultGetResourceGroups = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .build());
///
///         final var defaultGetInstanceTypes = EcsFunctions.getInstanceTypes(GetInstanceTypesArgs.builder()
///             .availabilityZone(default_.zones()[0].id())
///             .cpuCoreCount(1)
///             .memorySize(2)
///             .build());
///
///         final var defaultGetImages = EcsFunctions.getImages(GetImagesArgs.builder()
///             .nameRegex("^ubuntu_18.*64")
///             .owners("system")
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("10.4.0.0/16")
///             .build());
///
///         for (var i = 0; i < 2; i++) {
///             new Switch("defaultSwitch-" + i, SwitchArgs.builder()
///                 .vpcId(defaultNetwork.id())
///                 .cidrBlock(StdFunctions.format(FormatArgs.builder()
///                     .input("10.4.%d.0/24")
///                     .args(range.value() + 1)
///                     .build()).result())
///                 .zoneId(default_.zones()[range.value()].id())
///                 .vswitchName(StdFunctions.format(FormatArgs.builder()
///                     .input(String.format("%s_%d", name))
///                     .args(range.value() + 1)
///                     .build()).result())
///                 .build());
///
///
/// }
///         var defaultSecurityGroup = new SecurityGroup("defaultSecurityGroup", SecurityGroupArgs.builder()
///             .securityGroupName(name)
///             .description(name)
///             .vpcId(defaultNetwork.id())
///             .build());
///
///         var defaultLoadBalancer = new LoadBalancer("defaultLoadBalancer", LoadBalancerArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .addressType("Internet")
///             .addressAllocatedMode("Fixed")
///             .loadBalancerName(name)
///             .loadBalancerEdition("Basic")
///             .resourceGroupId(defaultGetResourceGroups.groups()[0].id())
///             .loadBalancerBillingConfig(LoadBalancerLoadBalancerBillingConfigArgs.builder()
///                 .payType("PayAsYouGo")
///                 .build())
///             .tags(Map.of("Created", "TF"))
///             .zoneMappings(
///                 LoadBalancerZoneMappingArgs.builder()
///                     .vswitchId(defaultSwitch[0].id())
///                     .zoneId(default_.zones()[0].id())
///                     .build(),
///                 LoadBalancerZoneMappingArgs.builder()
///                     .vswitchId(defaultSwitch[1].id())
///                     .zoneId(default_.zones()[1].id())
///                     .build())
///             .modificationProtectionConfig(LoadBalancerModificationProtectionConfigArgs.builder()
///                 .status("NonProtection")
///                 .build())
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .availabilityZone(default_.zones()[0].id())
///             .instanceName(name)
///             .imageId(defaultGetImages.images()[0].id())
///             .instanceType(defaultGetInstanceTypes.instanceTypes()[0].id())
///             .securityGroups(defaultSecurityGroup.id())
///             .vswitchId(defaultSwitch[0].id())
///             .build());
///
///         var defaultServerGroup = new ServerGroup("defaultServerGroup", ServerGroupArgs.builder()
///             .protocol("HTTP")
///             .vpcId(defaultNetwork.id())
///             .serverGroupName(name)
///             .resourceGroupId(defaultGetResourceGroups.groups()[0].id())
///             .healthCheckConfig(ServerGroupHealthCheckConfigArgs.builder()
///                 .healthCheckConnectPort(46325)
///                 .healthCheckEnabled(true)
///                 .healthCheckHost("tf-example.com")
///                 .healthCheckCodes(
///                     "http_2xx",
///                     "http_3xx",
///                     "http_4xx")
///                 .healthCheckHttpVersion("HTTP1.1")
///                 .healthCheckInterval(2)
///                 .healthCheckMethod("HEAD")
///                 .healthCheckPath("/tf-example")
///                 .healthCheckProtocol("HTTP")
///                 .healthCheckTimeout(5)
///                 .healthyThreshold(3)
///                 .unhealthyThreshold(3)
///                 .build())
///             .stickySessionConfig(ServerGroupStickySessionConfigArgs.builder()
///                 .stickySessionEnabled(true)
///                 .cookie("tf-example")
///                 .stickySessionType("Server")
///                 .build())
///             .servers(ServerGroupServerArgs.builder()
///                 .description(name)
///                 .port(80)
///                 .serverId(defaultInstance.id())
///                 .serverIp(defaultInstance.privateIp())
///                 .serverType("Ecs")
///                 .weight(10)
///                 .build())
///             .build());
///
///         var defaultListener = new Listener("defaultListener", ListenerArgs.builder()
///             .loadBalancerId(defaultLoadBalancer.id())
///             .listenerProtocol("HTTP")
///             .listenerPort(443)
///             .listenerDescription(name)
///             .defaultActions(ListenerDefaultActionArgs.builder()
///                 .type("ForwardGroup")
///                 .forwardGroupConfig(ListenerDefaultActionForwardGroupConfigArgs.builder()
///                     .serverGroupTuples(ListenerDefaultActionForwardGroupConfigServerGroupTupleArgs.builder()
///                         .serverGroupId(defaultServerGroup.id())
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Application Load Balancer (ALB) Listener can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:alb/listener:Listener example <id>
/// ```
class Listener extends pulumi.CustomResource {
  /// Access Log Whether to Enable Carry Custom Header Field. Valid values: `true`, `false`. Default Value: `false`.
  ///
  /// &gt; **NOTE:**  Only Instances outside the Security Group to Access the Log Switch `accesslogenabled` Open, in Order to Set This Parameter to the `true`.
  late final pulumi.Output<bool?> accessLogRecordCustomizedHeadersEnabled;
  /// Xtrace Configuration Information. See `access_log_tracing_config` below.
  late final pulumi.Output<ListenerAccessLogTracingConfig?> accessLogTracingConfig;
  /// The configurations of the access control lists (ACLs). See `acl_config` below for details. **NOTE:** Field `acl_config` has been deprecated from provider version 1.163.0, and it will be removed in the future version. Please use the new resource `alicloud.alb.ListenerAclAttachment`.,
  late final pulumi.Output<ListenerAclConfig> aclConfig;
  /// The list of certificates. See `ca_certificates` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> caCertificates;
  /// Whether to turn on two-way authentication. Value:
  late final pulumi.Output<bool?> caEnabled;
  /// The list of certificates. See `certificates` below.
  late final pulumi.Output<ListenerCertificates?> certificates;
  /// The Default Rule Action List See `default_actions` below.
  late final pulumi.Output<List<Map<String, dynamic>>> defaultActions;
  /// Whether to PreCheck only this request. Value:
  late final pulumi.Output<bool?> dryRun;
  /// Whether to Enable Gzip Compression, as a Specific File Type on a Compression. Valid Values: True Or False. Default Value: TRUE.
  late final pulumi.Output<bool> gzipEnabled;
  /// Whether to Enable HTTP/2 Features. Valid Values: True Or False. Default Value: TRUE.
  late final pulumi.Output<bool> http2Enabled;
  /// Specify the Connection Idle Timeout Value: 1 to 60 seconds.
  late final pulumi.Output<int> idleTimeout;
  /// Set the IP Address of the Listened Description. Length Is from 2 to 256 Characters.
  late final pulumi.Output<String?> listenerDescription;
  /// The SLB Instance Front-End, and Those of the Ports Used. Value: 1~65535.
  late final pulumi.Output<int> listenerPort;
  /// Snooping Protocols. Valid Values: HTTP, HTTPS Or QuIC.
  late final pulumi.Output<String> listenerProtocol;
  /// The SLB Instance Id.
  late final pulumi.Output<String> loadBalancerId;
  /// Configuration Associated with the QuIC Listening See `quic_config` below.
  late final pulumi.Output<ListenerQuicConfig> quicConfig;
  /// The Specified Request Timeout Time. Value: 1~180 Seconds. Default Value: 60 seconds. If the Timeout Time Within the Back-End Server Has Not Answered the SLB Will Give up Waiting, the Client Returns the HTTP 504 Error Code.
  late final pulumi.Output<int> requestTimeout;
  /// Security Policy
  late final pulumi.Output<String> securityPolicyId;
  /// The Current IP Address of the Listened State
  late final pulumi.Output<String> status;
  /// The tag of the resource
  late final pulumi.Output<Map<String, String>?> tags;
  /// xforwardfor Related Attribute Configuration See `x_forwarded_for_config` below.
  late final pulumi.Output<ListenerXForwardedForConfig> xForwardedForConfig;

  /// Creates a new [Listener].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Listener]. {@macro pulumi_alb_listener_listener_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Listener(
    String name, {
    ListenerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:alb/listener:Listener',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessLogRecordCustomizedHeadersEnabled = registerOutput<bool?>('accessLogRecordCustomizedHeadersEnabled');
    accessLogTracingConfig = registerOutput<ListenerAccessLogTracingConfig?>('accessLogTracingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListenerAccessLogTracingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    aclConfig = registerOutput<ListenerAclConfig>('aclConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListenerAclConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    caCertificates = registerOutput<List<Map<String, dynamic>>?>('caCertificates');
    caEnabled = registerOutput<bool?>('caEnabled');
    certificates = registerOutput<ListenerCertificates?>('certificates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListenerCertificates.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    defaultActions = registerOutput<List<Map<String, dynamic>>>('defaultActions');
    dryRun = registerOutput<bool?>('dryRun');
    gzipEnabled = registerOutput<bool>('gzipEnabled');
    http2Enabled = registerOutput<bool>('http2Enabled');
    idleTimeout = registerOutput<int>('idleTimeout');
    listenerDescription = registerOutput<String?>('listenerDescription');
    listenerPort = registerOutput<int>('listenerPort');
    listenerProtocol = registerOutput<String>('listenerProtocol');
    loadBalancerId = registerOutput<String>('loadBalancerId');
    quicConfig = registerOutput<ListenerQuicConfig>('quicConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListenerQuicConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    requestTimeout = registerOutput<int>('requestTimeout');
    securityPolicyId = registerOutput<String>('securityPolicyId');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    xForwardedForConfig = registerOutput<ListenerXForwardedForConfig>('xForwardedForConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListenerXForwardedForConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Listener] resource's state with the given [name] and [id].
  static Listener get(
    String name,
    pulumi.Input<String> id, {
    ListenerState? state,
  }) {
    return Listener._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Listener._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:alb/listener:Listener',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessLogRecordCustomizedHeadersEnabled = registerOutput<bool?>('accessLogRecordCustomizedHeadersEnabled');
    accessLogTracingConfig = registerOutput<ListenerAccessLogTracingConfig?>('accessLogTracingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListenerAccessLogTracingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    aclConfig = registerOutput<ListenerAclConfig>('aclConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListenerAclConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    caCertificates = registerOutput<List<Map<String, dynamic>>?>('caCertificates');
    caEnabled = registerOutput<bool?>('caEnabled');
    certificates = registerOutput<ListenerCertificates?>('certificates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListenerCertificates.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    defaultActions = registerOutput<List<Map<String, dynamic>>>('defaultActions');
    dryRun = registerOutput<bool?>('dryRun');
    gzipEnabled = registerOutput<bool>('gzipEnabled');
    http2Enabled = registerOutput<bool>('http2Enabled');
    idleTimeout = registerOutput<int>('idleTimeout');
    listenerDescription = registerOutput<String?>('listenerDescription');
    listenerPort = registerOutput<int>('listenerPort');
    listenerProtocol = registerOutput<String>('listenerProtocol');
    loadBalancerId = registerOutput<String>('loadBalancerId');
    quicConfig = registerOutput<ListenerQuicConfig>('quicConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListenerQuicConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    requestTimeout = registerOutput<int>('requestTimeout');
    securityPolicyId = registerOutput<String>('securityPolicyId');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    xForwardedForConfig = registerOutput<ListenerXForwardedForConfig>('xForwardedForConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListenerXForwardedForConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
