import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_alerts.dart';
import 'instance_args.dart';
import 'instance_backup.dart';
import 'instance_config.dart';
import 'instance_disk.dart';
import 'instance_interface.dart';
import 'instance_metadata.dart';
import 'instance_placement_group.dart';
import 'instance_spec.dart';

/// Provides a Linode Instance resource.  This can be used to create, modify, and delete Linodes.
/// For more information, see [Getting Started with Linode](https://linode.com/docs/getting-started/) and the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/post-linode-instance).
///
/// ## Example Usage
///
/// ### Simple Linode Instance
///
/// The following example shows how one might use this resource to configure a Linode instance.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const web = new linode.Instance("web", {
///     label: "simple_instance",
///     image: "linode/ubuntu22.04",
///     region: "us-central",
///     type: "g6-standard-1",
///     authorizedKeys: ["ssh-rsa AAAA...Gw== user@example.local"],
///     rootPass: "this-is-not-a-safe-password",
///     tags: ["foo"],
///     swapSize: 256,
///     privateIp: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// web = linode.Instance("web",
///     label="simple_instance",
///     image="linode/ubuntu22.04",
///     region="us-central",
///     type="g6-standard-1",
///     authorized_keys=["ssh-rsa AAAA...Gw== user@example.local"],
///     root_pass="this-is-not-a-safe-password",
///     tags=["foo"],
///     swap_size=256,
///     private_ip=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var web = new Linode.Instance("web", new()
///     {
///         Label = "simple_instance",
///         Image = "linode/ubuntu22.04",
///         Region = "us-central",
///         Type = "g6-standard-1",
///         AuthorizedKeys = new[]
///         {
///             "ssh-rsa AAAA...Gw== user@example.local",
///         },
///         RootPass = "this-is-not-a-safe-password",
///         Tags = new[]
///         {
///             "foo",
///         },
///         SwapSize = 256,
///         PrivateIp = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.NewInstance(ctx, "web", &linode.InstanceArgs{
/// 			Label:  pulumi.String("simple_instance"),
/// 			Image:  pulumi.String("linode/ubuntu22.04"),
/// 			Region: pulumi.String("us-central"),
/// 			Type:   pulumi.String("g6-standard-1"),
/// 			AuthorizedKeys: pulumi.StringArray{
/// 				pulumi.String("ssh-rsa AAAA...Gw== user@example.local"),
/// 			},
/// 			RootPass: pulumi.String("this-is-not-a-safe-password"),
/// 			Tags: pulumi.StringArray{
/// 				pulumi.String("foo"),
/// 			},
/// 			SwapSize:  pulumi.Int(256),
/// 			PrivateIp: pulumi.Bool(true),
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
/// import com.pulumi.linode.Instance;
/// import com.pulumi.linode.InstanceArgs;
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
///         var web = new Instance("web", InstanceArgs.builder()
///             .label("simple_instance")
///             .image("linode/ubuntu22.04")
///             .region("us-central")
///             .type("g6-standard-1")
///             .authorizedKeys("ssh-rsa AAAA...Gw== user@example.local")
///             .rootPass("this-is-not-a-safe-password")
///             .tags("foo")
///             .swapSize(256)
///             .privateIp(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   web:
///     type: linode:Instance
///     properties:
///       label: simple_instance
///       image: linode/ubuntu22.04
///       region: us-central
///       type: g6-standard-1
///       authorizedKeys:
///         - ssh-rsa AAAA...Gw== user@example.local
///       rootPass: this-is-not-a-safe-password
///       tags:
///         - foo
///       swapSize: 256
///       privateIp: true
/// ```
///
///
/// ### Linode Instance with Explicit Networking Interfaces
///
/// You can add a VPC or VLAN interface directly to a Linode instance resource.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const web = new linode.Instance("web", {
///     label: "simple_instance",
///     image: "linode/ubuntu22.04",
///     region: "us-central",
///     type: "g6-standard-1",
///     authorizedKeys: ["ssh-rsa AAAA...Gw== user@example.local"],
///     rootPass: "this-is-not-a-safe-password",
///     interfaces: [
///         {
///             purpose: "public",
///         },
///         {
///             purpose: "vpc",
///             subnetId: 123,
///             ipv4: {
///                 vpc: "10.0.4.250",
///             },
///         },
///     ],
///     tags: ["foo"],
///     swapSize: 256,
///     privateIp: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// web = linode.Instance("web",
///     label="simple_instance",
///     image="linode/ubuntu22.04",
///     region="us-central",
///     type="g6-standard-1",
///     authorized_keys=["ssh-rsa AAAA...Gw== user@example.local"],
///     root_pass="this-is-not-a-safe-password",
///     interfaces=[
///         {
///             "purpose": "public",
///         },
///         {
///             "purpose": "vpc",
///             "subnet_id": 123,
///             "ipv4": {
///                 "vpc": "10.0.4.250",
///             },
///         },
///     ],
///     tags=["foo"],
///     swap_size=256,
///     private_ip=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var web = new Linode.Instance("web", new()
///     {
///         Label = "simple_instance",
///         Image = "linode/ubuntu22.04",
///         Region = "us-central",
///         Type = "g6-standard-1",
///         AuthorizedKeys = new[]
///         {
///             "ssh-rsa AAAA...Gw== user@example.local",
///         },
///         RootPass = "this-is-not-a-safe-password",
///         Interfaces = new[]
///         {
///             new Linode.Inputs.InstanceInterfaceArgs
///             {
///                 Purpose = "public",
///             },
///             new Linode.Inputs.InstanceInterfaceArgs
///             {
///                 Purpose = "vpc",
///                 SubnetId = 123,
///                 Ipv4 = new Linode.Inputs.InstanceInterfaceIpv4Args
///                 {
///                     Vpc = "10.0.4.250",
///                 },
///             },
///         },
///         Tags = new[]
///         {
///             "foo",
///         },
///         SwapSize = 256,
///         PrivateIp = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.NewInstance(ctx, "web", &linode.InstanceArgs{
/// 			Label:  pulumi.String("simple_instance"),
/// 			Image:  pulumi.String("linode/ubuntu22.04"),
/// 			Region: pulumi.String("us-central"),
/// 			Type:   pulumi.String("g6-standard-1"),
/// 			AuthorizedKeys: pulumi.StringArray{
/// 				pulumi.String("ssh-rsa AAAA...Gw== user@example.local"),
/// 			},
/// 			RootPass: pulumi.String("this-is-not-a-safe-password"),
/// 			Interfaces: linode.InstanceInterfaceArray{
/// 				&linode.InstanceInterfaceArgs{
/// 					Purpose: pulumi.String("public"),
/// 				},
/// 				&linode.InstanceInterfaceArgs{
/// 					Purpose:  pulumi.String("vpc"),
/// 					SubnetId: pulumi.Int(123),
/// 					Ipv4: &linode.InstanceInterfaceIpv4Args{
/// 						Vpc: pulumi.String("10.0.4.250"),
/// 					},
/// 				},
/// 			},
/// 			Tags: pulumi.StringArray{
/// 				pulumi.String("foo"),
/// 			},
/// 			SwapSize:  pulumi.Int(256),
/// 			PrivateIp: pulumi.Bool(true),
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
/// import com.pulumi.linode.Instance;
/// import com.pulumi.linode.InstanceArgs;
/// import com.pulumi.linode.inputs.InstanceInterfaceArgs;
/// import com.pulumi.linode.inputs.InstanceInterfaceIpv4Args;
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
///         var web = new Instance("web", InstanceArgs.builder()
///             .label("simple_instance")
///             .image("linode/ubuntu22.04")
///             .region("us-central")
///             .type("g6-standard-1")
///             .authorizedKeys("ssh-rsa AAAA...Gw== user@example.local")
///             .rootPass("this-is-not-a-safe-password")
///             .interfaces(
///                 InstanceInterfaceArgs.builder()
///                     .purpose("public")
///                     .build(),
///                 InstanceInterfaceArgs.builder()
///                     .purpose("vpc")
///                     .subnetId(123)
///                     .ipv4(InstanceInterfaceIpv4Args.builder()
///                         .vpc("10.0.4.250")
///                         .build())
///                     .build())
///             .tags("foo")
///             .swapSize(256)
///             .privateIp(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   web:
///     type: linode:Instance
///     properties:
///       label: simple_instance
///       image: linode/ubuntu22.04
///       region: us-central
///       type: g6-standard-1
///       authorizedKeys:
///         - ssh-rsa AAAA...Gw== user@example.local
///       rootPass: this-is-not-a-safe-password
///       interfaces:
///         - purpose: public
///         - purpose: vpc
///           subnetId: 123
///           ipv4:
///             vpc: 10.0.4.250
///       tags:
///         - foo
///       swapSize: 256
///       privateIp: true
/// ```
///
///
/// ### Linode Instance with Explicit Configs and Disks
///
/// Using explicit Instance Configs and Disks it is possible to create a more elaborate Linode instance. This can be used to provision multiple disks and volumes during Instance creation.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const me = linode.getProfile({});
/// const web = new linode.Instance("web", {
///     label: "complex_instance",
///     tags: ["foo"],
///     region: "us-central",
///     type: "g6-nanode-1",
///     privateIp: true,
/// });
/// const webVolume = new linode.Volume("web_volume", {
///     label: "web_volume",
///     size: 20,
///     region: "us-central",
/// });
/// const bootDisk = new linode.InstanceDisk("boot_disk", {
///     label: "boot",
///     linodeId: web.id,
///     size: 3000,
///     image: "linode/ubuntu22.04",
///     authorizedKeys: ["ssh-rsa AAAA...Gw== user@example.local"],
///     authorizedUsers: [me.then(me => me.username)],
///     rootPass: "terr4form-test",
/// });
/// const bootConfig = new linode.InstanceConfig("boot_config", {
///     label: "boot_config",
///     linodeId: web.id,
///     devices: [
///         {
///             deviceName: "sda",
///             diskId: bootDisk.id,
///         },
///         {
///             deviceName: "sdb",
///             volumeId: webVolume.id,
///         },
///     ],
///     rootDevice: "/dev/sda",
///     kernel: "linode/latest-64bit",
///     booted: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// me = linode.get_profile()
/// web = linode.Instance("web",
///     label="complex_instance",
///     tags=["foo"],
///     region="us-central",
///     type="g6-nanode-1",
///     private_ip=True)
/// web_volume = linode.Volume("web_volume",
///     label="web_volume",
///     size=20,
///     region="us-central")
/// boot_disk = linode.InstanceDisk("boot_disk",
///     label="boot",
///     linode_id=web.id,
///     size=3000,
///     image="linode/ubuntu22.04",
///     authorized_keys=["ssh-rsa AAAA...Gw== user@example.local"],
///     authorized_users=[me.username],
///     root_pass="terr4form-test")
/// boot_config = linode.InstanceConfig("boot_config",
///     label="boot_config",
///     linode_id=web.id,
///     devices=[
///         {
///             "deviceName": "sda",
///             "diskId": boot_disk.id,
///         },
///         {
///             "deviceName": "sdb",
///             "volumeId": web_volume.id,
///         },
///     ],
///     root_device="/dev/sda",
///     kernel="linode/latest-64bit",
///     booted=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var me = Linode.GetProfile.Invoke();
///
///     var web = new Linode.Instance("web", new()
///     {
///         Label = "complex_instance",
///         Tags = new[]
///         {
///             "foo",
///         },
///         Region = "us-central",
///         Type = "g6-nanode-1",
///         PrivateIp = true,
///     });
///
///     var webVolume = new Linode.Volume("web_volume", new()
///     {
///         Label = "web_volume",
///         Size = 20,
///         Region = "us-central",
///     });
///
///     var bootDisk = new Linode.InstanceDisk("boot_disk", new()
///     {
///         Label = "boot",
///         LinodeId = web.Id,
///         Size = 3000,
///         Image = "linode/ubuntu22.04",
///         AuthorizedKeys = new[]
///         {
///             "ssh-rsa AAAA...Gw== user@example.local",
///         },
///         AuthorizedUsers = new[]
///         {
///             me.Apply(getProfileResult => getProfileResult.Username),
///         },
///         RootPass = "terr4form-test",
///     });
///
///     var bootConfig = new Linode.InstanceConfig("boot_config", new()
///     {
///         Label = "boot_config",
///         LinodeId = web.Id,
///         Devices = new[]
///         {
///
///             {
///                 { "deviceName", "sda" },
///                 { "diskId", bootDisk.Id },
///             },
///
///             {
///                 { "deviceName", "sdb" },
///                 { "volumeId", webVolume.Id },
///             },
///         },
///         RootDevice = "/dev/sda",
///         Kernel = "linode/latest-64bit",
///         Booted = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		me, err := linode.GetProfile(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		web, err := linode.NewInstance(ctx, "web", &linode.InstanceArgs{
/// 			Label: pulumi.String("complex_instance"),
/// 			Tags: pulumi.StringArray{
/// 				pulumi.String("foo"),
/// 			},
/// 			Region:    pulumi.String("us-central"),
/// 			Type:      pulumi.String("g6-nanode-1"),
/// 			PrivateIp: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		webVolume, err := linode.NewVolume(ctx, "web_volume", &linode.VolumeArgs{
/// 			Label:  pulumi.String("web_volume"),
/// 			Size:   pulumi.Int(20),
/// 			Region: pulumi.String("us-central"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bootDisk, err := linode.NewInstanceDisk(ctx, "boot_disk", &linode.InstanceDiskArgs{
/// 			Label:    pulumi.String("boot"),
/// 			LinodeId: web.ID(),
/// 			Size:     pulumi.Int(3000),
/// 			Image:    pulumi.String("linode/ubuntu22.04"),
/// 			AuthorizedKeys: pulumi.StringArray{
/// 				pulumi.String("ssh-rsa AAAA...Gw== user@example.local"),
/// 			},
/// 			AuthorizedUsers: pulumi.StringArray{
/// 				pulumi.String(me.Username),
/// 			},
/// 			RootPass: pulumi.String("terr4form-test"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = linode.NewInstanceConfig(ctx, "boot_config", &linode.InstanceConfigArgs{
/// 			Label:    pulumi.String("boot_config"),
/// 			LinodeId: web.ID(),
/// 			Devices: linode.InstanceConfigDevicesArgs{
/// 				map[string]interface{}{
/// 					"deviceName": "sda",
/// 					"diskId":     bootDisk.ID(),
/// 				},
/// 				map[string]interface{}{
/// 					"deviceName": "sdb",
/// 					"volumeId":   webVolume.ID(),
/// 				},
/// 			},
/// 			RootDevice: pulumi.String("/dev/sda"),
/// 			Kernel:     pulumi.String("linode/latest-64bit"),
/// 			Booted:     pulumi.Bool(true),
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.Instance;
/// import com.pulumi.linode.InstanceArgs;
/// import com.pulumi.linode.Volume;
/// import com.pulumi.linode.VolumeArgs;
/// import com.pulumi.linode.InstanceDisk;
/// import com.pulumi.linode.InstanceDiskArgs;
/// import com.pulumi.linode.InstanceConfig;
/// import com.pulumi.linode.InstanceConfigArgs;
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
///         final var me = LinodeFunctions.getProfile(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var web = new Instance("web", InstanceArgs.builder()
///             .label("complex_instance")
///             .tags("foo")
///             .region("us-central")
///             .type("g6-nanode-1")
///             .privateIp(true)
///             .build());
///
///         var webVolume = new Volume("webVolume", VolumeArgs.builder()
///             .label("web_volume")
///             .size(20)
///             .region("us-central")
///             .build());
///
///         var bootDisk = new InstanceDisk("bootDisk", InstanceDiskArgs.builder()
///             .label("boot")
///             .linodeId(web.id())
///             .size(3000)
///             .image("linode/ubuntu22.04")
///             .authorizedKeys("ssh-rsa AAAA...Gw== user@example.local")
///             .authorizedUsers(me.username())
///             .rootPass("terr4form-test")
///             .build());
///
///         var bootConfig = new InstanceConfig("bootConfig", InstanceConfigArgs.builder()
///             .label("boot_config")
///             .linodeId(web.id())
///             .devices(
///                 InstanceConfigDevicesArgs.builder()
///                     .deviceName("sda")
///                     .diskId(bootDisk.id())
///                     .build(),
///                 InstanceConfigDevicesArgs.builder()
///                     .deviceName("sdb")
///                     .volumeId(webVolume.id())
///                     .build())
///             .rootDevice("/dev/sda")
///             .kernel("linode/latest-64bit")
///             .booted(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   web:
///     type: linode:Instance
///     properties:
///       label: complex_instance
///       tags:
///         - foo
///       region: us-central
///       type: g6-nanode-1
///       privateIp: true
///   webVolume:
///     type: linode:Volume
///     name: web_volume
///     properties:
///       label: web_volume
///       size: 20
///       region: us-central
///   bootDisk:
///     type: linode:InstanceDisk
///     name: boot_disk
///     properties:
///       label: boot
///       linodeId: ${web.id}
///       size: 3000
///       image: linode/ubuntu22.04
///       authorizedKeys:
///         - ssh-rsa AAAA...Gw== user@example.local
///       authorizedUsers:
///         - ${me.username}
///       rootPass: terr4form-test
///   bootConfig:
///     type: linode:InstanceConfig
///     name: boot_config
///     properties:
///       label: boot_config
///       linodeId: ${web.id}
///       devices:
///         - deviceName: sda
///           diskId: ${bootDisk.id}
///         - deviceName: sdb
///           volumeId: ${webVolume.id}
///       rootDevice: /dev/sda
///       kernel: linode/latest-64bit
///       booted: true
/// variables:
///   me:
///     fn::invoke:
///       function: linode:getProfile
///       arguments: {}
/// ```
///
///
/// ### Linode Instance Assigned to a Placement Group
///
/// The following example shows how one might use this resource to configure a Linode instance assigned to a
/// Placement Group.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const my_instance = new linode.Instance("my-instance", {
///     label: "my-instance",
///     region: "us-mia",
///     type: "g6-standard-1",
///     placementGroup: {
///         id: 12345,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// my_instance = linode.Instance("my-instance",
///     label="my-instance",
///     region="us-mia",
///     type="g6-standard-1",
///     placement_group={
///         "id": 12345,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_instance = new Linode.Instance("my-instance", new()
///     {
///         Label = "my-instance",
///         Region = "us-mia",
///         Type = "g6-standard-1",
///         PlacementGroup = new Linode.Inputs.InstancePlacementGroupArgs
///         {
///             Id = 12345,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.NewInstance(ctx, "my-instance", &linode.InstanceArgs{
/// 			Label:  pulumi.String("my-instance"),
/// 			Region: pulumi.String("us-mia"),
/// 			Type:   pulumi.String("g6-standard-1"),
/// 			PlacementGroup: &linode.InstancePlacementGroupArgs{
/// 				Id: pulumi.Int(12345),
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
/// import com.pulumi.linode.Instance;
/// import com.pulumi.linode.InstanceArgs;
/// import com.pulumi.linode.inputs.InstancePlacementGroupArgs;
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
///         var my_instance = new Instance("my-instance", InstanceArgs.builder()
///             .label("my-instance")
///             .region("us-mia")
///             .type("g6-standard-1")
///             .placementGroup(InstancePlacementGroupArgs.builder()
///                 .id(12345)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-instance:
///     type: linode:Instance
///     properties:
///       label: my-instance
///       region: us-mia
///       type: g6-standard-1
///       placementGroup:
///         id: 12345
/// ```
///
///
/// ## Import
///
/// Linodes Instances can be imported using the Linode `id`, e.g.
///
/// ```sh
/// $ pulumi import linode:index/instance:Instance mylinode 1234567
/// ```
///
/// When importing an instance, all `disk` and `config` values must be represented.
///
/// Imported disks must include their `label` value.  **Any disk that is not precisely represented may be removed resulting in data loss.**
///
/// Imported configs should include all `devices`, and must include `label`, `kernel`, and the `root_device`.  The instance must include a `boot_config_label` referring to the correct configuration profile.
class Instance extends pulumi.CustomResource {
  /// Configuration options for alert triggers on this Linode.
  late final pulumi.Output<InstanceAlerts> alerts;
  /// A list of SSH public keys to deploy for the root user on the newly created Linode. Only accepted if 'image' is provided.
  late final pulumi.Output<List<String>?> authorizedKeys;
  /// A list of Linode usernames. If the usernames have associated SSH keys, the keys will be appended to the `root` user's `~/.ssh/authorized_keys` file automatically. Only accepted if 'image' is provided.
  late final pulumi.Output<List<String>?> authorizedUsers;
  /// A Backup ID from another Linode's available backups. Your User must have read_write access to that Linode, the Backup must have a status of successful, and the Linode must be deployed to the same region as the Backup. See /linode/instances/{linodeId}/backups for a Linode's available backups. This field and the image field are mutually exclusive.
  late final pulumi.Output<int?> backupId;
  /// Information about this Linode's backups status.
  late final pulumi.Output<List<InstanceBackup>> backups;
  /// If this field is set to true, the created Linode will automatically be enrolled in the Linode Backup service. This will incur an additional charge. The cost for the Backup service is dependent on the Type of Linode deployed.
  late final pulumi.Output<bool> backupsEnabled;
  /// The Label of the Instance Config that should be used to boot the Linode instance.
  late final pulumi.Output<String> bootConfigLabel;
  /// If true, then the instance is kept or converted into in a running state. If false, the instance will be shutdown. If unspecified, the Linode's power status will not be managed by the Provider.
  late final pulumi.Output<bool> booted;
  /// A list of capabilities of this Linode instance.
  late final pulumi.Output<List<String>> capabilities;
  /// Configuration profiles define the VM settings and boot behavior of the Linode Instance.
  late final pulumi.Output<List<InstanceConfig>> configs;
  /// The disk encryption policy for this instance. (`enabled`, `disabled`; default `enabled` in supported regions)
  ///
  /// * **NOTE: Disk encryption may not currently be available to all users.**
  late final pulumi.Output<String> diskEncryption;
  late final pulumi.Output<List<InstanceDisk>> disks;
  /// The ID of the Firewall to attach to the instance upon creation. *Changing `firewall_id` forces the creation of a new Linode Instance.*
  late final pulumi.Output<int?> firewallId;
  /// A deprecated property denoting a group label for this Linode. We recommend using the `tags` attribute instead.
  late final pulumi.Output<String?> group;
  /// Whether this Instance was created with user-data.
  late final pulumi.Output<bool> hasUserData;
  /// The Linode’s host machine, as a UUID.
  late final pulumi.Output<String> hostUuid;
  /// An Image ID to deploy the Disk from. Official Linode Images start with linode/, while your Images start with private/. See /images for more information on the Images available for you to use.
  late final pulumi.Output<String?> image;
  /// Specifies the interface type for the Linode. If set to `linode`, Linode interfaces must be created using a separate resource before this Linode can be booted. (`linode`, `legacy_config`; default is determined by the account `interfaces_for_new_linodes` setting)
  ///
  /// * TODO(Linode Interfaces): Link to a usage example using the `linode_instance_interface` resource
  late final pulumi.Output<String> interfaceGeneration;
  /// An array of Network Interfaces for this Linode to be created with. If an explicit config or disk is defined, interfaces must be declared in the config block.
  late final pulumi.Output<List<InstanceInterface>?> interfaces;
  /// A string containing the Linode's public IP address.
  late final pulumi.Output<String> ipAddress;
  /// A set of reserved IPv4 addresses to assign to this Linode on creation.
  ///
  /// * **NOTE: IP reservation is not currently available to all users.**
  late final pulumi.Output<List<String>> ipv4s;
  /// This Linode's IPv6 SLAAC addresses. This address is specific to a Linode, and may not be shared.  The prefix (`/128`) is included in this attribute.
  late final pulumi.Output<String> ipv6;
  /// The Linode's label is for display purposes only. If no label is provided for a Linode, a default will be assigned.
  late final pulumi.Output<String> label;
  /// If applicable, the ID of the LKE cluster this instance is a part of.
  late final pulumi.Output<int> lkeClusterId;
  /// A list of locks applied to this Linode.
  late final pulumi.Output<List<String>> locks;
  /// The maintenance policy of this Linode instance. Examples are `"linode/migrate"` and `"linode/power_off_on"`. Defaults to the default maintenance policy of the account. (**Note: v4beta only.**)
  late final pulumi.Output<String> maintenancePolicy;
  /// Various fields related to the Linode Metadata service.
  late final pulumi.Output<List<InstanceMetadata>?> metadatas;
  /// The type of migration to use when updating the type or region of a Linode. (`cold`, `warm`; default `cold`)
  late final pulumi.Output<String?> migrationType;
  /// Enables the Network Helper feature. The default value is determined by the network_helper setting in the account settings.
  ///
  /// * `interface` - (Optional) A list of network interfaces to be assigned to the Linode on creation. If an explicit config or disk is defined, interfaces must be declared in the `config` block.
  late final pulumi.Output<bool?> networkHelper;
  /// Information about the Placement Group this Linode is assigned to.
  late final pulumi.Output<InstancePlacementGroup?> placementGroup;
  /// If true, changes to the Linode's assigned Placement Group will be ignored. This is necessary when using this resource in conjunction with the linode.PlacementGroupAssignment resource.
  late final pulumi.Output<bool?> placementGroupExternallyManaged;
  /// If true, the created Linode will have private networking enabled, allowing use of the 192.168.128.0/17 network within the Linode's region. It can be enabled on an existing Linode but it can't be disabled.
  late final pulumi.Output<bool?> privateIp;
  /// This Linode's Private IPv4 Address, if enabled.  The regional private IP address range, 192.168.128.0/17, is shared by all Linode Instances in a region.
  late final pulumi.Output<String> privateIpAddress;
  /// This is the location where the Linode is deployed. Examples are `"us-east"`, `"us-west"`, `"ap-south"`, etc. See all regions [here](https://api.linode.com/v4/regions). *Changing `region` will trigger a migration of this Linode. Migration operations are typically long-running operations, so the update timeout should be adjusted accordingly.*.
  late final pulumi.Output<String> region;
  /// If true, changes in Linode type will attempt to upsize or downsize implicitly created disks. This must be false if explicit disks are defined. *This is an irreversible action as Linode disks cannot be automatically downsized.*
  ///
  /// * `alerts.0.cpu` - (Optional) The percentage of CPU usage required to trigger an alert. If the average CPU usage over two hours exceeds this value, we'll send you an alert. If this is set to 0, the alert is disabled.
  ///
  /// * `alerts.0.network_in` - (Optional) The amount of incoming traffic, in Mbit/s, required to trigger an alert. If the average incoming traffic over two hours exceeds this value, we'll send you an alert. If this is set to 0 (zero), the alert is disabled.
  ///
  /// * `alerts.0.network_out` - (Optional) The amount of outbound traffic, in Mbit/s, required to trigger an alert. If the average outbound traffic over two hours exceeds this value, we'll send you an alert. If this is set to 0 (zero), the alert is disabled.
  ///
  /// * `alerts.0.transfer_quota` - (Optional) The percentage of network transfer that may be used before an alert is triggered. When this value is exceeded, we'll alert you. If this is set to 0 (zero), the alert is disabled.
  ///
  /// * `alerts.0.io` - (Optional) The amount of disk IO operation per second required to trigger an alert. If the average disk IO over two hours exceeds this value, we'll send you an alert. If set to 0, this alert is disabled.
  late final pulumi.Output<bool?> resizeDisk;
  /// The password that will be initially assigned to the 'root' user account.
  late final pulumi.Output<String?> rootPass;
  /// A set of IPv4 addresses to be shared with the Instance. These IP addresses can be both private and public, but must be in the same region as the instance.
  ///
  /// * `metadata.0.user_data` - (Optional) The base64-encoded user-defined data exposed to this instance through the Linode Metadata service. Refer to the base64encode(...) function for information on encoding content for this field.
  ///
  /// * `placement_group.0.id` - (Optional) The ID of the Placement Group to assign this Linode to.
  late final pulumi.Output<List<String>> sharedIpv4s;
  /// Information about the resources available to this Linode.
  late final pulumi.Output<List<InstanceSpec>> specs;
  /// An object containing responses to any User Defined Fields present in the StackScript being deployed to this Linode. Only accepted if 'stackscript_id' is given. The required values depend on the StackScript being deployed.
  late final pulumi.Output<Map<String, String>?> stackscriptData;
  /// The StackScript to deploy to the newly created Linode. If provided, 'image' must also be provided, and must be an Image that is compatible with this StackScript.
  late final pulumi.Output<int?> stackscriptId;
  /// The status of the instance, indicating the current readiness state. (`running`, `offline`, ...)
  late final pulumi.Output<String> status;
  /// When deploying from an Image, this field is optional with a Linode API default of 512mb, otherwise it is ignored. This is used to set the swap disk size for the newly-created Linode.
  late final pulumi.Output<int> swapSize;
  /// A list of tags applied to this object. Tags are case-insensitive and are for organizational purposes only.
  late final pulumi.Output<List<String>> tags;
  /// The Linode type defines the pricing, CPU, disk, and RAM specs of the instance. Examples are `"g6-nanode-1"`, `"g6-standard-2"`, `"g6-highmem-16"`, `"g6-dedicated-16"`, etc. See all types [here](https://api.linode.com/v4/linode/types).
  ///
  /// - - -
  late final pulumi.Output<String?> type;
  /// The watchdog, named Lassie, is a Shutdown Watchdog that monitors your Linode and will reboot it if it powers off unexpectedly. It works by issuing a boot job when your Linode powers off without a shutdown job being responsible. To prevent a loop, Lassie will give up if there have been more than 5 boot jobs issued within 15 minutes.
  late final pulumi.Output<bool?> watchdogEnabled;

  /// Creates a new [Instance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Instance]. {@macro pulumi_index_instance_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Instance(
    String name, {
    InstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'linode:index/instance:Instance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.alerts = registerOutput<InstanceAlerts>('alerts');
    this.authorizedKeys = registerOutput<List<String>?>('authorizedKeys');
    this.authorizedUsers = registerOutput<List<String>?>('authorizedUsers');
    this.backupId = registerOutput<int?>('backupId');
    this.backups = registerOutput<List<InstanceBackup>>('backups');
    this.backupsEnabled = registerOutput<bool>('backupsEnabled');
    this.bootConfigLabel = registerOutput<String>('bootConfigLabel');
    this.booted = registerOutput<bool>('booted');
    this.capabilities = registerOutput<List<String>>('capabilities');
    this.configs = registerOutput<List<InstanceConfig>>('configs');
    this.diskEncryption = registerOutput<String>('diskEncryption');
    this.disks = registerOutput<List<InstanceDisk>>('disks');
    this.firewallId = registerOutput<int?>('firewallId');
    this.group = registerOutput<String?>('group');
    this.hasUserData = registerOutput<bool>('hasUserData');
    this.hostUuid = registerOutput<String>('hostUuid');
    this.image = registerOutput<String?>('image');
    this.interfaceGeneration = registerOutput<String>('interfaceGeneration');
    this.interfaces = registerOutput<List<InstanceInterface>?>('interfaces');
    this.ipAddress = registerOutput<String>('ipAddress');
    this.ipv4s = registerOutput<List<String>>('ipv4s');
    this.ipv6 = registerOutput<String>('ipv6');
    this.label = registerOutput<String>('label');
    this.lkeClusterId = registerOutput<int>('lkeClusterId');
    this.locks = registerOutput<List<String>>('locks');
    this.maintenancePolicy = registerOutput<String>('maintenancePolicy');
    this.metadatas = registerOutput<List<InstanceMetadata>?>('metadatas');
    this.migrationType = registerOutput<String?>('migrationType');
    this.networkHelper = registerOutput<bool?>('networkHelper');
    this.placementGroup = registerOutput<InstancePlacementGroup?>('placementGroup');
    this.placementGroupExternallyManaged = registerOutput<bool?>('placementGroupExternallyManaged');
    this.privateIp = registerOutput<bool?>('privateIp');
    this.privateIpAddress = registerOutput<String>('privateIpAddress');
    this.region = registerOutput<String>('region');
    this.resizeDisk = registerOutput<bool?>('resizeDisk');
    this.rootPass = registerOutput<String?>('rootPass');
    this.sharedIpv4s = registerOutput<List<String>>('sharedIpv4s');
    this.specs = registerOutput<List<InstanceSpec>>('specs');
    this.stackscriptData = registerOutput<Map<String, String>?>('stackscriptData');
    this.stackscriptId = registerOutput<int?>('stackscriptId');
    this.status = registerOutput<String>('status');
    this.swapSize = registerOutput<int>('swapSize');
    this.tags = registerOutput<List<String>>('tags');
    this.type = registerOutput<String?>('type');
    this.watchdogEnabled = registerOutput<bool?>('watchdogEnabled');
  }
}
