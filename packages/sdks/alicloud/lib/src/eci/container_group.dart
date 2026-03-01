import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_group_acr_registry_info.dart';
import 'container_group_args.dart';
import 'container_group_container.dart';
import 'container_group_dns_config.dart';
import 'container_group_host_alias.dart';
import 'container_group_image_registry_credential.dart';
import 'container_group_init_container.dart';
import 'container_group_security_context.dart';
import 'container_group_state.dart';
import 'container_group_volume.dart';

/// Provides ECI Container Group resource.
///
/// For information about ECI Container Group and how to use it, see [What is Container Group](https://www.alibabacloud.com/help/en/elastic-container-instance/latest/api-eci-2018-08-08-createcontainergroup).
///
/// > **NOTE:** Available since v1.111.0.
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
/// const _default = alicloud.eci.getZones({});
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "10.0.0.0/8",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vswitchName: name,
///     cidrBlock: "10.1.0.0/16",
///     vpcId: defaultNetwork.id,
///     zoneId: _default.then(_default => _default.zones?.[0]?.zoneIds?.[0]),
/// });
/// const defaultSecurityGroup = new alicloud.ecs.SecurityGroup("default", {
///     name: name,
///     vpcId: defaultNetwork.id,
/// });
/// const defaultContainerGroup = new alicloud.eci.ContainerGroup("default", {
///     containerGroupName: name,
///     cpu: 8,
///     memory: 16,
///     restartPolicy: "OnFailure",
///     securityGroupId: defaultSecurityGroup.id,
///     vswitchId: defaultSwitch.id,
///     autoCreateEip: true,
///     tags: {
///         Created: "TF",
///         For: "example",
///     },
///     containers: [{
///         image: "registry.cn-beijing.aliyuncs.com/eci_open/nginx:alpine",
///         name: "nginx",
///         workingDir: "/tmp/nginx",
///         imagePullPolicy: "IfNotPresent",
///         commands: [
///             "/bin/sh",
///             "-c",
///             "sleep 9999",
///         ],
///         volumeMounts: [{
///             mountPath: "/tmp/example",
///             readOnly: false,
///             name: "empty1",
///         }],
///         ports: [{
///             port: 80,
///             protocol: "TCP",
///         }],
///         environmentVars: [{
///             key: "name",
///             value: "nginx",
///         }],
///         livenessProbes: [{
///             periodSeconds: 5,
///             initialDelaySeconds: 5,
///             successThreshold: 1,
///             failureThreshold: 3,
///             timeoutSeconds: 1,
///             execs: [{
///                 commands: ["cat /tmp/healthy"],
///             }],
///         }],
///         readinessProbes: [{
///             periodSeconds: 5,
///             initialDelaySeconds: 5,
///             successThreshold: 1,
///             failureThreshold: 3,
///             timeoutSeconds: 1,
///             execs: [{
///                 commands: ["cat /tmp/healthy"],
///             }],
///         }],
///     }],
///     initContainers: [{
///         name: "init-busybox",
///         image: "registry.cn-beijing.aliyuncs.com/eci_open/busybox:1.30",
///         imagePullPolicy: "IfNotPresent",
///         commands: ["echo"],
///         args: ["hello initcontainer"],
///     }],
///     volumes: [
///         {
///             name: "empty1",
///             type: "EmptyDirVolume",
///         },
///         {
///             name: "empty2",
///             type: "EmptyDirVolume",
///         },
///     ],
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
/// default = alicloud.eci.get_zones()
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="10.0.0.0/8")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name=name,
///     cidr_block="10.1.0.0/16",
///     vpc_id=default_network.id,
///     zone_id=default.zones[0].zone_ids[0])
/// default_security_group = alicloud.ecs.SecurityGroup("default",
///     name=name,
///     vpc_id=default_network.id)
/// default_container_group = alicloud.eci.ContainerGroup("default",
///     container_group_name=name,
///     cpu=8,
///     memory=16,
///     restart_policy="OnFailure",
///     security_group_id=default_security_group.id,
///     vswitch_id=default_switch.id,
///     auto_create_eip=True,
///     tags={
///         "Created": "TF",
///         "For": "example",
///     },
///     containers=[{
///         "image": "registry.cn-beijing.aliyuncs.com/eci_open/nginx:alpine",
///         "name": "nginx",
///         "working_dir": "/tmp/nginx",
///         "image_pull_policy": "IfNotPresent",
///         "commands": [
///             "/bin/sh",
///             "-c",
///             "sleep 9999",
///         ],
///         "volume_mounts": [{
///             "mount_path": "/tmp/example",
///             "read_only": False,
///             "name": "empty1",
///         }],
///         "ports": [{
///             "port": 80,
///             "protocol": "TCP",
///         }],
///         "environment_vars": [{
///             "key": "name",
///             "value": "nginx",
///         }],
///         "liveness_probes": [{
///             "period_seconds": 5,
///             "initial_delay_seconds": 5,
///             "success_threshold": 1,
///             "failure_threshold": 3,
///             "timeout_seconds": 1,
///             "execs": [{
///                 "commands": ["cat /tmp/healthy"],
///             }],
///         }],
///         "readiness_probes": [{
///             "period_seconds": 5,
///             "initial_delay_seconds": 5,
///             "success_threshold": 1,
///             "failure_threshold": 3,
///             "timeout_seconds": 1,
///             "execs": [{
///                 "commands": ["cat /tmp/healthy"],
///             }],
///         }],
///     }],
///     init_containers=[{
///         "name": "init-busybox",
///         "image": "registry.cn-beijing.aliyuncs.com/eci_open/busybox:1.30",
///         "image_pull_policy": "IfNotPresent",
///         "commands": ["echo"],
///         "args": ["hello initcontainer"],
///     }],
///     volumes=[
///         {
///             "name": "empty1",
///             "type": "EmptyDirVolume",
///         },
///         {
///             "name": "empty2",
///             "type": "EmptyDirVolume",
///         },
///     ])
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
///     var @default = AliCloud.Eci.GetZones.Invoke();
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "10.0.0.0/8",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VswitchName = name,
///         CidrBlock = "10.1.0.0/16",
///         VpcId = defaultNetwork.Id,
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.ZoneIds[0])),
///     });
///
///     var defaultSecurityGroup = new AliCloud.Ecs.SecurityGroup("default", new()
///     {
///         Name = name,
///         VpcId = defaultNetwork.Id,
///     });
///
///     var defaultContainerGroup = new AliCloud.Eci.ContainerGroup("default", new()
///     {
///         ContainerGroupName = name,
///         Cpu = 8,
///         Memory = 16,
///         RestartPolicy = "OnFailure",
///         SecurityGroupId = defaultSecurityGroup.Id,
///         VswitchId = defaultSwitch.Id,
///         AutoCreateEip = true,
///         Tags =
///         {
///             { "Created", "TF" },
///             { "For", "example" },
///         },
///         Containers = new[]
///         {
///             new AliCloud.Eci.Inputs.ContainerGroupContainerArgs
///             {
///                 Image = "registry.cn-beijing.aliyuncs.com/eci_open/nginx:alpine",
///                 Name = "nginx",
///                 WorkingDir = "/tmp/nginx",
///                 ImagePullPolicy = "IfNotPresent",
///                 Commands = new[]
///                 {
///                     "/bin/sh",
///                     "-c",
///                     "sleep 9999",
///                 },
///                 VolumeMounts = new[]
///                 {
///                     new AliCloud.Eci.Inputs.ContainerGroupContainerVolumeMountArgs
///                     {
///                         MountPath = "/tmp/example",
///                         ReadOnly = false,
///                         Name = "empty1",
///                     },
///                 },
///                 Ports = new[]
///                 {
///                     new AliCloud.Eci.Inputs.ContainerGroupContainerPortArgs
///                     {
///                         Port = 80,
///                         Protocol = "TCP",
///                     },
///                 },
///                 EnvironmentVars = new[]
///                 {
///                     new AliCloud.Eci.Inputs.ContainerGroupContainerEnvironmentVarArgs
///                     {
///                         Key = "name",
///                         Value = "nginx",
///                     },
///                 },
///                 LivenessProbes = new[]
///                 {
///                     new AliCloud.Eci.Inputs.ContainerGroupContainerLivenessProbeArgs
///                     {
///                         PeriodSeconds = 5,
///                         InitialDelaySeconds = 5,
///                         SuccessThreshold = 1,
///                         FailureThreshold = 3,
///                         TimeoutSeconds = 1,
///                         Execs = new[]
///                         {
///                             new AliCloud.Eci.Inputs.ContainerGroupContainerLivenessProbeExecArgs
///                             {
///                                 Commands = new[]
///                                 {
///                                     "cat /tmp/healthy",
///                                 },
///                             },
///                         },
///                     },
///                 },
///                 ReadinessProbes = new[]
///                 {
///                     new AliCloud.Eci.Inputs.ContainerGroupContainerReadinessProbeArgs
///                     {
///                         PeriodSeconds = 5,
///                         InitialDelaySeconds = 5,
///                         SuccessThreshold = 1,
///                         FailureThreshold = 3,
///                         TimeoutSeconds = 1,
///                         Execs = new[]
///                         {
///                             new AliCloud.Eci.Inputs.ContainerGroupContainerReadinessProbeExecArgs
///                             {
///                                 Commands = new[]
///                                 {
///                                     "cat /tmp/healthy",
///                                 },
///                             },
///                         },
///                     },
///                 },
///             },
///         },
///         InitContainers = new[]
///         {
///             new AliCloud.Eci.Inputs.ContainerGroupInitContainerArgs
///             {
///                 Name = "init-busybox",
///                 Image = "registry.cn-beijing.aliyuncs.com/eci_open/busybox:1.30",
///                 ImagePullPolicy = "IfNotPresent",
///                 Commands = new[]
///                 {
///                     "echo",
///                 },
///                 Args = new[]
///                 {
///                     "hello initcontainer",
///                 },
///             },
///         },
///         Volumes = new[]
///         {
///             new AliCloud.Eci.Inputs.ContainerGroupVolumeArgs
///             {
///                 Name = "empty1",
///                 Type = "EmptyDirVolume",
///             },
///             new AliCloud.Eci.Inputs.ContainerGroupVolumeArgs
///             {
///                 Name = "empty2",
///                 Type = "EmptyDirVolume",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/eci"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
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
/// 		_default, err := eci.GetZones(ctx, &eci.GetZonesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("10.0.0.0/8"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VswitchName: pulumi.String(name),
/// 			CidrBlock:   pulumi.String("10.1.0.0/16"),
/// 			VpcId:       defaultNetwork.ID(),
/// 			ZoneId:      pulumi.String(_default.Zones[0].ZoneIds[0]),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSecurityGroup, err := ecs.NewSecurityGroup(ctx, "default", &ecs.SecurityGroupArgs{
/// 			Name:  pulumi.String(name),
/// 			VpcId: defaultNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = eci.NewContainerGroup(ctx, "default", &eci.ContainerGroupArgs{
/// 			ContainerGroupName: pulumi.String(name),
/// 			Cpu:                pulumi.Float64(8),
/// 			Memory:             pulumi.Float64(16),
/// 			RestartPolicy:      pulumi.String("OnFailure"),
/// 			SecurityGroupId:    defaultSecurityGroup.ID(),
/// 			VswitchId:          defaultSwitch.ID(),
/// 			AutoCreateEip:      pulumi.Bool(true),
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
/// 				"For":     pulumi.String("example"),
/// 			},
/// 			Containers: eci.ContainerGroupContainerArray{
/// 				&eci.ContainerGroupContainerArgs{
/// 					Image:           pulumi.String("registry.cn-beijing.aliyuncs.com/eci_open/nginx:alpine"),
/// 					Name:            pulumi.String("nginx"),
/// 					WorkingDir:      pulumi.String("/tmp/nginx"),
/// 					ImagePullPolicy: pulumi.String("IfNotPresent"),
/// 					Commands: pulumi.StringArray{
/// 						pulumi.String("/bin/sh"),
/// 						pulumi.String("-c"),
/// 						pulumi.String("sleep 9999"),
/// 					},
/// 					VolumeMounts: eci.ContainerGroupContainerVolumeMountArray{
/// 						&eci.ContainerGroupContainerVolumeMountArgs{
/// 							MountPath: pulumi.String("/tmp/example"),
/// 							ReadOnly:  pulumi.Bool(false),
/// 							Name:      pulumi.String("empty1"),
/// 						},
/// 					},
/// 					Ports: eci.ContainerGroupContainerPortArray{
/// 						&eci.ContainerGroupContainerPortArgs{
/// 							Port:     pulumi.Int(80),
/// 							Protocol: pulumi.String("TCP"),
/// 						},
/// 					},
/// 					EnvironmentVars: eci.ContainerGroupContainerEnvironmentVarArray{
/// 						&eci.ContainerGroupContainerEnvironmentVarArgs{
/// 							Key:   pulumi.String("name"),
/// 							Value: pulumi.String("nginx"),
/// 						},
/// 					},
/// 					LivenessProbes: eci.ContainerGroupContainerLivenessProbeArray{
/// 						&eci.ContainerGroupContainerLivenessProbeArgs{
/// 							PeriodSeconds:       pulumi.Int(5),
/// 							InitialDelaySeconds: pulumi.Int(5),
/// 							SuccessThreshold:    pulumi.Int(1),
/// 							FailureThreshold:    pulumi.Int(3),
/// 							TimeoutSeconds:      pulumi.Int(1),
/// 							Execs: eci.ContainerGroupContainerLivenessProbeExecArray{
/// 								&eci.ContainerGroupContainerLivenessProbeExecArgs{
/// 									Commands: pulumi.StringArray{
/// 										pulumi.String("cat /tmp/healthy"),
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 					ReadinessProbes: eci.ContainerGroupContainerReadinessProbeArray{
/// 						&eci.ContainerGroupContainerReadinessProbeArgs{
/// 							PeriodSeconds:       pulumi.Int(5),
/// 							InitialDelaySeconds: pulumi.Int(5),
/// 							SuccessThreshold:    pulumi.Int(1),
/// 							FailureThreshold:    pulumi.Int(3),
/// 							TimeoutSeconds:      pulumi.Int(1),
/// 							Execs: eci.ContainerGroupContainerReadinessProbeExecArray{
/// 								&eci.ContainerGroupContainerReadinessProbeExecArgs{
/// 									Commands: pulumi.StringArray{
/// 										pulumi.String("cat /tmp/healthy"),
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			InitContainers: eci.ContainerGroupInitContainerArray{
/// 				&eci.ContainerGroupInitContainerArgs{
/// 					Name:            pulumi.String("init-busybox"),
/// 					Image:           pulumi.String("registry.cn-beijing.aliyuncs.com/eci_open/busybox:1.30"),
/// 					ImagePullPolicy: pulumi.String("IfNotPresent"),
/// 					Commands: pulumi.StringArray{
/// 						pulumi.String("echo"),
/// 					},
/// 					Args: pulumi.StringArray{
/// 						pulumi.String("hello initcontainer"),
/// 					},
/// 				},
/// 			},
/// 			Volumes: eci.ContainerGroupVolumeArray{
/// 				&eci.ContainerGroupVolumeArgs{
/// 					Name: pulumi.String("empty1"),
/// 					Type: pulumi.String("EmptyDirVolume"),
/// 				},
/// 				&eci.ContainerGroupVolumeArgs{
/// 					Name: pulumi.String("empty2"),
/// 					Type: pulumi.String("EmptyDirVolume"),
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
/// import com.pulumi.alicloud.eci.EciFunctions;
/// import com.pulumi.alicloud.eci.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.eci.ContainerGroup;
/// import com.pulumi.alicloud.eci.ContainerGroupArgs;
/// import com.pulumi.alicloud.eci.inputs.ContainerGroupContainerArgs;
/// import com.pulumi.alicloud.eci.inputs.ContainerGroupInitContainerArgs;
/// import com.pulumi.alicloud.eci.inputs.ContainerGroupVolumeArgs;
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
///         final var default = EciFunctions.getZones(GetZonesArgs.builder()
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("10.0.0.0/8")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vswitchName(name)
///             .cidrBlock("10.1.0.0/16")
///             .vpcId(defaultNetwork.id())
///             .zoneId(default_.zones()[0].zoneIds()[0])
///             .build());
///
///         var defaultSecurityGroup = new SecurityGroup("defaultSecurityGroup", SecurityGroupArgs.builder()
///             .name(name)
///             .vpcId(defaultNetwork.id())
///             .build());
///
///         var defaultContainerGroup = new ContainerGroup("defaultContainerGroup", ContainerGroupArgs.builder()
///             .containerGroupName(name)
///             .cpu(8.0)
///             .memory(16.0)
///             .restartPolicy("OnFailure")
///             .securityGroupId(defaultSecurityGroup.id())
///             .vswitchId(defaultSwitch.id())
///             .autoCreateEip(true)
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "TF"),
///                 Map.entry("For", "example")
///             ))
///             .containers(ContainerGroupContainerArgs.builder()
///                 .image("registry.cn-beijing.aliyuncs.com/eci_open/nginx:alpine")
///                 .name("nginx")
///                 .workingDir("/tmp/nginx")
///                 .imagePullPolicy("IfNotPresent")
///                 .commands(
///                     "/bin/sh",
///                     "-c",
///                     "sleep 9999")
///                 .volumeMounts(ContainerGroupContainerVolumeMountArgs.builder()
///                     .mountPath("/tmp/example")
///                     .readOnly(false)
///                     .name("empty1")
///                     .build())
///                 .ports(ContainerGroupContainerPortArgs.builder()
///                     .port(80)
///                     .protocol("TCP")
///                     .build())
///                 .environmentVars(ContainerGroupContainerEnvironmentVarArgs.builder()
///                     .key("name")
///                     .value("nginx")
///                     .build())
///                 .livenessProbes(ContainerGroupContainerLivenessProbeArgs.builder()
///                     .periodSeconds(5)
///                     .initialDelaySeconds(5)
///                     .successThreshold(1)
///                     .failureThreshold(3)
///                     .timeoutSeconds(1)
///                     .execs(ContainerGroupContainerLivenessProbeExecArgs.builder()
///                         .commands("cat /tmp/healthy")
///                         .build())
///                     .build())
///                 .readinessProbes(ContainerGroupContainerReadinessProbeArgs.builder()
///                     .periodSeconds(5)
///                     .initialDelaySeconds(5)
///                     .successThreshold(1)
///                     .failureThreshold(3)
///                     .timeoutSeconds(1)
///                     .execs(ContainerGroupContainerReadinessProbeExecArgs.builder()
///                         .commands("cat /tmp/healthy")
///                         .build())
///                     .build())
///                 .build())
///             .initContainers(ContainerGroupInitContainerArgs.builder()
///                 .name("init-busybox")
///                 .image("registry.cn-beijing.aliyuncs.com/eci_open/busybox:1.30")
///                 .imagePullPolicy("IfNotPresent")
///                 .commands("echo")
///                 .args("hello initcontainer")
///                 .build())
///             .volumes(
///                 ContainerGroupVolumeArgs.builder()
///                     .name("empty1")
///                     .type("EmptyDirVolume")
///                     .build(),
///                 ContainerGroupVolumeArgs.builder()
///                     .name("empty2")
///                     .type("EmptyDirVolume")
///                     .build())
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
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: ${name}
///       cidrBlock: 10.0.0.0/8
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vswitchName: ${name}
///       cidrBlock: 10.1.0.0/16
///       vpcId: ${defaultNetwork.id}
///       zoneId: ${default.zones[0].zoneIds[0]}
///   defaultSecurityGroup:
///     type: alicloud:ecs:SecurityGroup
///     name: default
///     properties:
///       name: ${name}
///       vpcId: ${defaultNetwork.id}
///   defaultContainerGroup:
///     type: alicloud:eci:ContainerGroup
///     name: default
///     properties:
///       containerGroupName: ${name}
///       cpu: 8
///       memory: 16
///       restartPolicy: OnFailure
///       securityGroupId: ${defaultSecurityGroup.id}
///       vswitchId: ${defaultSwitch.id}
///       autoCreateEip: true
///       tags:
///         Created: TF
///         For: example
///       containers:
///         - image: registry.cn-beijing.aliyuncs.com/eci_open/nginx:alpine
///           name: nginx
///           workingDir: /tmp/nginx
///           imagePullPolicy: IfNotPresent
///           commands:
///             - /bin/sh
///             - -c
///             - sleep 9999
///           volumeMounts:
///             - mountPath: /tmp/example
///               readOnly: false
///               name: empty1
///           ports:
///             - port: 80
///               protocol: TCP
///           environmentVars:
///             - key: name
///               value: nginx
///           livenessProbes:
///             - periodSeconds: '5'
///               initialDelaySeconds: '5'
///               successThreshold: '1'
///               failureThreshold: '3'
///               timeoutSeconds: '1'
///               execs:
///                 - commands:
///                     - cat /tmp/healthy
///           readinessProbes:
///             - periodSeconds: '5'
///               initialDelaySeconds: '5'
///               successThreshold: '1'
///               failureThreshold: '3'
///               timeoutSeconds: '1'
///               execs:
///                 - commands:
///                     - cat /tmp/healthy
///       initContainers:
///         - name: init-busybox
///           image: registry.cn-beijing.aliyuncs.com/eci_open/busybox:1.30
///           imagePullPolicy: IfNotPresent
///           commands:
///             - echo
///           args:
///             - hello initcontainer
///       volumes:
///         - name: empty1
///           type: EmptyDirVolume
///         - name: empty2
///           type: EmptyDirVolume
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:eci:getZones
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ECI Container Group can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:eci/containerGroup:ContainerGroup example <container_group_id>
/// ```
class ContainerGroup extends pulumi.CustomResource {
  /// The ACR enterprise edition example properties. See `acr_registry_info` below.
  late final pulumi.Output<List<ContainerGroupAcrRegistryInfo>?> acrRegistryInfos;
  /// Specifies whether to automatically create an EIP and bind the EIP to the elastic container instance.
  late final pulumi.Output<bool?> autoCreateEip;
  /// Specifies whether to automatically match the image cache. Default value: `false`. Valid values: `true` and `false`.
  late final pulumi.Output<bool> autoMatchImageCache;
  /// The name of the container group.
  late final pulumi.Output<String> containerGroupName;
  /// The list of containers. See `containers` below.
  late final pulumi.Output<List<ContainerGroupContainer>> containers;
  /// The amount of CPU resources allocated to the container group.
  late final pulumi.Output<double> cpu;
  /// The structure of dnsConfig. See `dns_config` below.
  late final pulumi.Output<ContainerGroupDnsConfig?> dnsConfig;
  /// The policy of DNS. Default value: `Default`. Valid values: `Default` and `None`.
  late final pulumi.Output<String> dnsPolicy;
  /// The bandwidth of the EIP. Default value: `5`.
  late final pulumi.Output<int?> eipBandwidth;
  /// The ID of the elastic IP address (EIP).
  late final pulumi.Output<String?> eipInstanceId;
  /// The size of the temporary storage space to add. Unit: GiB.
  late final pulumi.Output<int?> ephemeralStorage;
  /// HostAliases. See `host_aliases` below.
  late final pulumi.Output<List<ContainerGroupHostAlias>?> hostAliases;
  /// The image registry credential. See `image_registry_credential` below.
  late final pulumi.Output<List<ContainerGroupImageRegistryCredential>?> imageRegistryCredentials;
  /// The list of initContainers. See `init_containers` below.
  late final pulumi.Output<List<ContainerGroupInitContainer>?> initContainers;
  /// The address of the self-built mirror warehouse. When creating an image cache using an image in a self-built image repository with a self-signed certificate, you need to configure this parameter to skip certificate authentication to avoid image pull failure due to certificate authentication failure.
  late final pulumi.Output<String?> insecureRegistry;
  /// The type of the ECS instance.
  late final pulumi.Output<String> instanceType;
  /// (Available since v1.170.0) The Public IP of the container group.
  late final pulumi.Output<String> internetIp;
  /// (Available since v1.170.0) The Private IP of the container group.
  late final pulumi.Output<String> intranetIp;
  /// The amount of memory resources allocated to the container group.
  late final pulumi.Output<double> memory;
  /// The address of the self-built mirror warehouse. When creating an image cache from an image in a self-built image repository using the HTTP protocol, you need to configure this parameter so that the ECI uses the HTTP protocol to pull the image to avoid image pull failure due to different protocols.
  late final pulumi.Output<String?> plainHttpRegistry;
  /// The RAM role that the container group assumes. ECI and ECS share the same RAM role.
  late final pulumi.Output<String?> ramRoleName;
  /// The ID of the resource group. **NOTE:** From version 1.208.0, `resource_group_id` can be modified.
  late final pulumi.Output<String> resourceGroupId;
  /// The restart policy of the container group. Valid values: `Always`, `Never`, `OnFailure`.
  late final pulumi.Output<String> restartPolicy;
  /// The security context of the container group. See `security_context` below.
  late final pulumi.Output<ContainerGroupSecurityContext?> securityContext;
  /// The ID of the security group to which the container group belongs. Container groups within the same security group can access each other.
  late final pulumi.Output<String> securityGroupId;
  /// The maximum hourly price of the ECI spot instance.
  late final pulumi.Output<double> spotPriceLimit;
  /// Filter the results by ECI spot type. Valid values: `NoSpot`, `SpotWithPriceLimit` and `SpotAsPriceGo`. Default to `NoSpot`.
  late final pulumi.Output<String> spotStrategy;
  /// The status of container group.
  late final pulumi.Output<String> status;
  /// A mapping of tags to assign to the resource.
  /// - Key: It can be up to 64 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It cannot be a null string.
  /// - Value: It can be up to 128 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It can be a null string.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The buffer time during which the program handles operations before the program stops. Unit: seconds.
  late final pulumi.Output<int?> terminationGracePeriodSeconds;
  /// The list of volumes. See `volumes` below.
  late final pulumi.Output<List<ContainerGroupVolume>?> volumes;
  /// The ID of the VSwitch. Currently, container groups can only be deployed in VPC networks. The number of IP addresses in the VSwitch CIDR block determines the maximum number of container groups that can be created in the VSwitch. Before you can create an ECI instance, plan the CIDR block of the VSwitch.
  /// **NOTE:** From version 1.208.0, You can specify up to 10 `vswitch_id`. Separate multiple vSwitch IDs with commas (,), such as vsw-***,vsw-***.  attribute `vswitch_id` updating diff will be ignored when you set multiple vSwitchIds, there is only one valid `vswitch_id` exists in the set vSwitchIds.
  late final pulumi.Output<String> vswitchId;
  /// The ID of the zone where you want to deploy the container group. If no value is specified, the system assigns a zone to the container group. By default, no value is specified.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [ContainerGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ContainerGroup]. {@macro pulumi_eci_container_group_container_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ContainerGroup(
    String name, {
    ContainerGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:eci/containerGroup:ContainerGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.acrRegistryInfos = registerOutput<List<ContainerGroupAcrRegistryInfo>?>('acrRegistryInfos');
    this.autoCreateEip = registerOutput<bool?>('autoCreateEip');
    this.autoMatchImageCache = registerOutput<bool>('autoMatchImageCache');
    this.containerGroupName = registerOutput<String>('containerGroupName');
    this.containers = registerOutput<List<ContainerGroupContainer>>('containers');
    this.cpu = registerOutput<double>('cpu');
    this.dnsConfig = registerOutput<ContainerGroupDnsConfig?>('dnsConfig');
    this.dnsPolicy = registerOutput<String>('dnsPolicy');
    this.eipBandwidth = registerOutput<int?>('eipBandwidth');
    this.eipInstanceId = registerOutput<String?>('eipInstanceId');
    this.ephemeralStorage = registerOutput<int?>('ephemeralStorage');
    this.hostAliases = registerOutput<List<ContainerGroupHostAlias>?>('hostAliases');
    this.imageRegistryCredentials = registerOutput<List<ContainerGroupImageRegistryCredential>?>('imageRegistryCredentials');
    this.initContainers = registerOutput<List<ContainerGroupInitContainer>?>('initContainers');
    this.insecureRegistry = registerOutput<String?>('insecureRegistry');
    this.instanceType = registerOutput<String>('instanceType');
    this.internetIp = registerOutput<String>('internetIp');
    this.intranetIp = registerOutput<String>('intranetIp');
    this.memory = registerOutput<double>('memory');
    this.plainHttpRegistry = registerOutput<String?>('plainHttpRegistry');
    this.ramRoleName = registerOutput<String?>('ramRoleName');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.restartPolicy = registerOutput<String>('restartPolicy');
    this.securityContext = registerOutput<ContainerGroupSecurityContext?>('securityContext');
    this.securityGroupId = registerOutput<String>('securityGroupId');
    this.spotPriceLimit = registerOutput<double>('spotPriceLimit');
    this.spotStrategy = registerOutput<String>('spotStrategy');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.terminationGracePeriodSeconds = registerOutput<int?>('terminationGracePeriodSeconds');
    this.volumes = registerOutput<List<ContainerGroupVolume>?>('volumes');
    this.vswitchId = registerOutput<String>('vswitchId');
    this.zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [ContainerGroup] resource's state with the given [name] and [id].
  static ContainerGroup get(
    String name,
    pulumi.Input<String> id, {
    ContainerGroupState? state,
  }) {
    return ContainerGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ContainerGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:eci/containerGroup:ContainerGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.acrRegistryInfos = registerOutput<List<ContainerGroupAcrRegistryInfo>?>('acrRegistryInfos');
    this.autoCreateEip = registerOutput<bool?>('autoCreateEip');
    this.autoMatchImageCache = registerOutput<bool>('autoMatchImageCache');
    this.containerGroupName = registerOutput<String>('containerGroupName');
    this.containers = registerOutput<List<ContainerGroupContainer>>('containers');
    this.cpu = registerOutput<double>('cpu');
    this.dnsConfig = registerOutput<ContainerGroupDnsConfig?>('dnsConfig');
    this.dnsPolicy = registerOutput<String>('dnsPolicy');
    this.eipBandwidth = registerOutput<int?>('eipBandwidth');
    this.eipInstanceId = registerOutput<String?>('eipInstanceId');
    this.ephemeralStorage = registerOutput<int?>('ephemeralStorage');
    this.hostAliases = registerOutput<List<ContainerGroupHostAlias>?>('hostAliases');
    this.imageRegistryCredentials = registerOutput<List<ContainerGroupImageRegistryCredential>?>('imageRegistryCredentials');
    this.initContainers = registerOutput<List<ContainerGroupInitContainer>?>('initContainers');
    this.insecureRegistry = registerOutput<String?>('insecureRegistry');
    this.instanceType = registerOutput<String>('instanceType');
    this.internetIp = registerOutput<String>('internetIp');
    this.intranetIp = registerOutput<String>('intranetIp');
    this.memory = registerOutput<double>('memory');
    this.plainHttpRegistry = registerOutput<String?>('plainHttpRegistry');
    this.ramRoleName = registerOutput<String?>('ramRoleName');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.restartPolicy = registerOutput<String>('restartPolicy');
    this.securityContext = registerOutput<ContainerGroupSecurityContext?>('securityContext');
    this.securityGroupId = registerOutput<String>('securityGroupId');
    this.spotPriceLimit = registerOutput<double>('spotPriceLimit');
    this.spotStrategy = registerOutput<String>('spotStrategy');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.terminationGracePeriodSeconds = registerOutput<int?>('terminationGracePeriodSeconds');
    this.volumes = registerOutput<List<ContainerGroupVolume>?>('volumes');
    this.vswitchId = registerOutput<String>('vswitchId');
    this.zoneId = registerOutput<String>('zoneId');
  }
}
