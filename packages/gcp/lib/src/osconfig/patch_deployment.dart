import 'package:pulumi/pulumi.dart' as pulumi;
import 'patch_deployment_args.dart';
import 'patch_deployment_instance_filter.dart';
import 'patch_deployment_one_time_schedule.dart';
import 'patch_deployment_patch_config.dart';
import 'patch_deployment_recurring_schedule.dart';
import 'patch_deployment_rollout.dart';

/// Patch deployments are configurations that individual patch jobs use to complete a patch.
/// These configurations include instance filter, package repository settings, and a schedule.
///
///
/// To get more information about PatchDeployment, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/osconfig/rest)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/compute/docs/os-patch-management)
///
/// ## Example Usage
///
/// ### Os Config Patch Deployment Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const patch = new gcp.osconfig.PatchDeployment("patch", {
///     patchDeploymentId: "patch-deploy",
///     instanceFilter: {
///         all: true,
///     },
///     oneTimeSchedule: {
///         executeTime: "2999-10-10T10:10:10.045123456Z",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// patch = gcp.osconfig.PatchDeployment("patch",
///     patch_deployment_id="patch-deploy",
///     instance_filter={
///         "all": True,
///     },
///     one_time_schedule={
///         "execute_time": "2999-10-10T10:10:10.045123456Z",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var patch = new Gcp.OsConfig.PatchDeployment("patch", new()
///     {
///         PatchDeploymentId = "patch-deploy",
///         InstanceFilter = new Gcp.OsConfig.Inputs.PatchDeploymentInstanceFilterArgs
///         {
///             All = true,
///         },
///         OneTimeSchedule = new Gcp.OsConfig.Inputs.PatchDeploymentOneTimeScheduleArgs
///         {
///             ExecuteTime = "2999-10-10T10:10:10.045123456Z",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/osconfig"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := osconfig.NewPatchDeployment(ctx, "patch", &osconfig.PatchDeploymentArgs{
/// 			PatchDeploymentId: pulumi.String("patch-deploy"),
/// 			InstanceFilter: &osconfig.PatchDeploymentInstanceFilterArgs{
/// 				All: pulumi.Bool(true),
/// 			},
/// 			OneTimeSchedule: &osconfig.PatchDeploymentOneTimeScheduleArgs{
/// 				ExecuteTime: pulumi.String("2999-10-10T10:10:10.045123456Z"),
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
/// import com.pulumi.gcp.osconfig.PatchDeployment;
/// import com.pulumi.gcp.osconfig.PatchDeploymentArgs;
/// import com.pulumi.gcp.osconfig.inputs.PatchDeploymentInstanceFilterArgs;
/// import com.pulumi.gcp.osconfig.inputs.PatchDeploymentOneTimeScheduleArgs;
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
///         var patch = new PatchDeployment("patch", PatchDeploymentArgs.builder()
///             .patchDeploymentId("patch-deploy")
///             .instanceFilter(PatchDeploymentInstanceFilterArgs.builder()
///                 .all(true)
///                 .build())
///             .oneTimeSchedule(PatchDeploymentOneTimeScheduleArgs.builder()
///                 .executeTime("2999-10-10T10:10:10.045123456Z")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   patch:
///     type: gcp:osconfig:PatchDeployment
///     properties:
///       patchDeploymentId: patch-deploy
///       instanceFilter:
///         all: true
///       oneTimeSchedule:
///         executeTime: 2999-10-10T10:10:10.045123456Z
/// ```
///
/// ### Os Config Patch Deployment Daily
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const patch = new gcp.osconfig.PatchDeployment("patch", {
///     patchDeploymentId: "patch-deploy",
///     instanceFilter: {
///         all: true,
///     },
///     recurringSchedule: {
///         timeZone: {
///             id: "America/New_York",
///         },
///         timeOfDay: {
///             hours: 0,
///             minutes: 30,
///             seconds: 30,
///             nanos: 20,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// patch = gcp.osconfig.PatchDeployment("patch",
///     patch_deployment_id="patch-deploy",
///     instance_filter={
///         "all": True,
///     },
///     recurring_schedule={
///         "time_zone": {
///             "id": "America/New_York",
///         },
///         "time_of_day": {
///             "hours": 0,
///             "minutes": 30,
///             "seconds": 30,
///             "nanos": 20,
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var patch = new Gcp.OsConfig.PatchDeployment("patch", new()
///     {
///         PatchDeploymentId = "patch-deploy",
///         InstanceFilter = new Gcp.OsConfig.Inputs.PatchDeploymentInstanceFilterArgs
///         {
///             All = true,
///         },
///         RecurringSchedule = new Gcp.OsConfig.Inputs.PatchDeploymentRecurringScheduleArgs
///         {
///             TimeZone = new Gcp.OsConfig.Inputs.PatchDeploymentRecurringScheduleTimeZoneArgs
///             {
///                 Id = "America/New_York",
///             },
///             TimeOfDay = new Gcp.OsConfig.Inputs.PatchDeploymentRecurringScheduleTimeOfDayArgs
///             {
///                 Hours = 0,
///                 Minutes = 30,
///                 Seconds = 30,
///                 Nanos = 20,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/osconfig"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := osconfig.NewPatchDeployment(ctx, "patch", &osconfig.PatchDeploymentArgs{
/// 			PatchDeploymentId: pulumi.String("patch-deploy"),
/// 			InstanceFilter: &osconfig.PatchDeploymentInstanceFilterArgs{
/// 				All: pulumi.Bool(true),
/// 			},
/// 			RecurringSchedule: &osconfig.PatchDeploymentRecurringScheduleArgs{
/// 				TimeZone: &osconfig.PatchDeploymentRecurringScheduleTimeZoneArgs{
/// 					Id: pulumi.String("America/New_York"),
/// 				},
/// 				TimeOfDay: &osconfig.PatchDeploymentRecurringScheduleTimeOfDayArgs{
/// 					Hours:   pulumi.Int(0),
/// 					Minutes: pulumi.Int(30),
/// 					Seconds: pulumi.Int(30),
/// 					Nanos:   pulumi.Int(20),
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
/// import com.pulumi.gcp.osconfig.PatchDeployment;
/// import com.pulumi.gcp.osconfig.PatchDeploymentArgs;
/// import com.pulumi.gcp.osconfig.inputs.PatchDeploymentInstanceFilterArgs;
/// import com.pulumi.gcp.osconfig.inputs.PatchDeploymentRecurringScheduleArgs;
/// import com.pulumi.gcp.osconfig.inputs.PatchDeploymentRecurringScheduleTimeZoneArgs;
/// import com.pulumi.gcp.osconfig.inputs.PatchDeploymentRecurringScheduleTimeOfDayArgs;
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
///         var patch = new PatchDeployment("patch", PatchDeploymentArgs.builder()
///             .patchDeploymentId("patch-deploy")
///             .instanceFilter(PatchDeploymentInstanceFilterArgs.builder()
///                 .all(true)
///                 .build())
///             .recurringSchedule(PatchDeploymentRecurringScheduleArgs.builder()
///                 .timeZone(PatchDeploymentRecurringScheduleTimeZoneArgs.builder()
///                     .id("America/New_York")
///                     .build())
///                 .timeOfDay(PatchDeploymentRecurringScheduleTimeOfDayArgs.builder()
///                     .hours(0)
///                     .minutes(30)
///                     .seconds(30)
///                     .nanos(20)
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   patch:
///     type: gcp:osconfig:PatchDeployment
///     properties:
///       patchDeploymentId: patch-deploy
///       instanceFilter:
///         all: true
///       recurringSchedule:
///         timeZone:
///           id: America/New_York
///         timeOfDay:
///           hours: 0
///           minutes: 30
///           seconds: 30
///           nanos: 20
/// ```
///
/// ### Os Config Patch Deployment Daily Midnight
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const patch = new gcp.osconfig.PatchDeployment("patch", {
///     patchDeploymentId: "patch-deploy",
///     instanceFilter: {
///         all: true,
///     },
///     recurringSchedule: {
///         timeZone: {
///             id: "America/New_York",
///         },
///         timeOfDay: {
///             hours: 0,
///             minutes: 0,
///             seconds: 0,
///             nanos: 0,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// patch = gcp.osconfig.PatchDeployment("patch",
///     patch_deployment_id="patch-deploy",
///     instance_filter={
///         "all": True,
///     },
///     recurring_schedule={
///         "time_zone": {
///             "id": "America/New_York",
///         },
///         "time_of_day": {
///             "hours": 0,
///             "minutes": 0,
///             "seconds": 0,
///             "nanos": 0,
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var patch = new Gcp.OsConfig.PatchDeployment("patch", new()
///     {
///         PatchDeploymentId = "patch-deploy",
///         InstanceFilter = new Gcp.OsConfig.Inputs.PatchDeploymentInstanceFilterArgs
///         {
///             All = true,
///         },
///         RecurringSchedule = new Gcp.OsConfig.Inputs.PatchDeploymentRecurringScheduleArgs
///         {
///             TimeZone = new Gcp.OsConfig.Inputs.PatchDeploymentRecurringScheduleTimeZoneArgs
///             {
///                 Id = "America/New_York",
///             },
///             TimeOfDay = new Gcp.OsConfig.Inputs.PatchDeploymentRecurringScheduleTimeOfDayArgs
///             {
///                 Hours = 0,
///                 Minutes = 0,
///                 Seconds = 0,
///                 Nanos = 0,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/osconfig"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := osconfig.NewPatchDeployment(ctx, "patch", &osconfig.PatchDeploymentArgs{
/// 			PatchDeploymentId: pulumi.String("patch-deploy"),
/// 			InstanceFilter: &osconfig.PatchDeploymentInstanceFilterArgs{
/// 				All: pulumi.Bool(true),
/// 			},
/// 			RecurringSchedule: &osconfig.PatchDeploymentRecurringScheduleArgs{
/// 				TimeZone: &osconfig.PatchDeploymentRecurringScheduleTimeZoneArgs{
/// 					Id: pulumi.String("America/New_York"),
/// 				},
/// 				TimeOfDay: &osconfig.PatchDeploymentRecurringScheduleTimeOfDayArgs{
/// 					Hours:   pulumi.Int(0),
/// 					Minutes: pulumi.Int(0),
/// 					Seconds: pulumi.Int(0),
/// 					Nanos:   pulumi.Int(0),
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
/// import com.pulumi.gcp.osconfig.PatchDeployment;
/// import com.pulumi.gcp.osconfig.PatchDeploymentArgs;
/// import com.pulumi.gcp.osconfig.inputs.PatchDeploymentInstanceFilterArgs;
/// import com.pulumi.gcp.osconfig.inputs.PatchDeploymentRecurringScheduleArgs;
/// import com.pulumi.gcp.osconfig.inputs.PatchDeploymentRecurringScheduleTimeZoneArgs;
/// import com.pulumi.gcp.osconfig.inputs.PatchDeploymentRecurringScheduleTimeOfDayArgs;
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
///         var patch = new PatchDeployment("patch", PatchDeploymentArgs.builder()
///             .patchDeploymentId("patch-deploy")
///             .instanceFilter(PatchDeploymentInstanceFilterArgs.builder()
///                 .all(true)
///                 .build())
///             .recurringSchedule(PatchDeploymentRecurringScheduleArgs.builder()
///                 .timeZone(PatchDeploymentRecurringScheduleTimeZoneArgs.builder()
///                     .id("America/New_York")
///                     .build())
///                 .timeOfDay(PatchDeploymentRecurringScheduleTimeOfDayArgs.builder()
///                     .hours(0)
///                     .minutes(0)
///                     .seconds(0)
///                     .nanos(0)
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   patch:
///     type: gcp:osconfig:PatchDeployment
///     properties:
///       patchDeploymentId: patch-deploy
///       instanceFilter:
///         all: true
///       recurringSchedule:
///         timeZone:
///           id: America/New_York
///         timeOfDay:
///           hours: 0
///           minutes: 0
///           seconds: 0
///           nanos: 0
/// ```
///
/// ### Os Config Patch Deployment Instance
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myImage = gcp.compute.getImage({
///     family: "debian-11",
///     project: "debian-cloud",
/// });
/// const foobar = new gcp.compute.Instance("foobar", {
///     name: "patch-deploy-inst",
///     machineType: "e2-medium",
///     zone: "us-central1-a",
///     canIpForward: false,
///     tags: [
///         "foo",
///         "bar",
///     ],
///     bootDisk: {
///         initializeParams: {
///             image: myImage.then(myImage => myImage.selfLink),
///         },
///     },
///     networkInterfaces: [{
///         network: "default",
///     }],
///     metadata: {
///         foo: "bar",
///     },
/// });
/// const patch = new gcp.osconfig.PatchDeployment("patch", {
///     patchDeploymentId: "patch-deploy",
///     instanceFilter: {
///         instances: [foobar.id],
///     },
///     patchConfig: {
///         yum: {
///             security: true,
///             minimal: true,
///             excludes: ["bash"],
///         },
///     },
///     recurringSchedule: {
///         timeZone: {
///             id: "America/New_York",
///         },
///         timeOfDay: {
///             hours: 0,
///             minutes: 30,
///             seconds: 30,
///             nanos: 20,
///         },
///         monthly: {
///             monthDay: 1,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_image = gcp.compute.get_image(family="debian-11",
///     project="debian-cloud")
/// foobar = gcp.compute.Instance("foobar",
///     name="patch-deploy-inst",
///     machine_type="e2-medium",
///     zone="us-central1-a",
///     can_ip_forward=False,
///     tags=[
///         "foo",
///         "bar",
///     ],
///     boot_disk={
///         "initialize_params": {
///             "image": my_image.self_link,
///         },
///     },
///     network_interfaces=[{
///         "network": "default",
///     }],
///     metadata={
///         "foo": "bar",
///     })
/// patch = gcp.osconfig.PatchDeployment("patch",
///     patch_deployment_id="patch-deploy",
///     instance_filter={
///         "instances": [foobar.id],
///     },
///     patch_config={
///         "yum": {
///             "security": True,
///             "minimal": True,
///             "excludes": ["bash"],
///         },
///     },
///     recurring_schedule={
///         "time_zone": {
///             "id": "America/New_York",
///         },
///         "time_of_day": {
///             "hours": 0,
///             "minutes": 30,
///             "seconds": 30,
///             "nanos": 20,
///         },
///         "monthly": {
///             "month_day": 1,
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myImage = Gcp.Compute.GetImage.Invoke(new()
///     {
///         Family = "debian-11",
///         Project = "debian-cloud",
///     });
///
///     var foobar = new Gcp.Compute.Instance("foobar", new()
///     {
///         Name = "patch-deploy-inst",
///         MachineType = "e2-medium",
///         Zone = "us-central1-a",
///         CanIpForward = false,
///         Tags = new[]
///         {
///             "foo",
///             "bar",
///         },
///         BootDisk = new Gcp.Compute.Inputs.InstanceBootDiskArgs
///         {
///             InitializeParams = new Gcp.Compute.Inputs.InstanceBootDiskInitializeParamsArgs
///             {
///                 Image = myImage.Apply(getImageResult => getImageResult.SelfLink),
///             },
///         },
///         NetworkInterfaces = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceNetworkInterfaceArgs
///             {
///                 Network = "default",
///             },
///         },
///         Metadata =
///         {
///             { "foo", "bar" },
///         },
///     });
///
///     var patch = new Gcp.OsConfig.PatchDeployment("patch", new()
///     {
///         PatchDeploymentId = "patch-deploy",
///         InstanceFilter = new Gcp.OsConfig.Inputs.PatchDeploymentInstanceFilterArgs
///         {
///             Instances = new[]
///             {
///                 foobar.Id,
///             },
///         },
///         PatchConfig = new Gcp.OsConfig.Inputs.PatchDeploymentPatchConfigArgs
///         {
///             Yum = new Gcp.OsConfig.Inputs.PatchDeploymentPatchConfigYumArgs
///             {
///                 Security = true,
///                 Minimal = true,
///                 Excludes = new[]
///                 {
///                     "bash",
///                 },
///             },
///         },
///         RecurringSchedule = new Gcp.OsConfig.Inputs.PatchDeploymentRecurringScheduleArgs
///         {
///             TimeZone = new Gcp.OsConfig.Inputs.PatchDeploymentRecurringScheduleTimeZoneArgs
///             {
///                 Id = "America/New_York",
///             },
///             TimeOfDay = new Gcp.OsConfig.Inputs.PatchDeploymentRecurringScheduleTimeOfDayArgs
///             {
///                 Hours = 0,
///                 Minutes = 30,
///                 Seconds = 30,
///                 Nanos = 20,
///             },
///             Monthly = new Gcp.OsConfig.Inputs.PatchDeploymentRecurringScheduleMonthlyArgs
///             {
///                 MonthDay = 1,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/osconfig"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		myImage, err := compute.LookupImage(ctx, &compute.LookupImageArgs{
/// 			Family:  pulumi.StringRef("debian-11"),
/// 			Project: pulumi.StringRef("debian-cloud"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		foobar, err := compute.NewInstance(ctx, "foobar", &compute.InstanceArgs{
/// 			Name:         pulumi.String("patch-deploy-inst"),
/// 			MachineType:  pulumi.String("e2-medium"),
/// 			Zone:         pulumi.String("us-central1-a"),
/// 			CanIpForward: pulumi.Bool(false),
/// 			Tags: pulumi.StringArray{
/// 				pulumi.String("foo"),
/// 				pulumi.String("bar"),
/// 			},
/// 			BootDisk: &compute.InstanceBootDiskArgs{
/// 				InitializeParams: &compute.InstanceBootDiskInitializeParamsArgs{
/// 					Image: pulumi.String(myImage.SelfLink),
/// 				},
/// 			},
/// 			NetworkInterfaces: compute.InstanceNetworkInterfaceArray{
/// 				&compute.InstanceNetworkInterfaceArgs{
/// 					Network: pulumi.String("default"),
/// 				},
/// 			},
/// 			Metadata: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = osconfig.NewPatchDeployment(ctx, "patch", &osconfig.PatchDeploymentArgs{
/// 			PatchDeploymentId: pulumi.String("patch-deploy"),
/// 			InstanceFilter: &osconfig.PatchDeploymentInstanceFilterArgs{
/// 				Instances: pulumi.StringArray{
/// 					foobar.ID(),
/// 				},
/// 			},
/// 			PatchConfig: &osconfig.PatchDeploymentPatchConfigArgs{
/// 				Yum: &osconfig.PatchDeploymentPatchConfigYumArgs{
/// 					Security: pulumi.Bool(true),
/// 					Minimal:  pulumi.Bool(true),
/// 					Excludes: pulumi.StringArray{
/// 						pulumi.String("bash"),
/// 					},
/// 				},
/// 			},
/// 			RecurringSchedule: &osconfig.PatchDeploymentRecurringScheduleArgs{
/// 				TimeZone: &osconfig.PatchDeploymentRecurringScheduleTimeZoneArgs{
/// 					Id: pulumi.String("America/New_York"),
/// 				},
/// 				TimeOfDay: &osconfig.PatchDeploymentRecurringScheduleTimeOfDayArgs{
/// 					Hours:   pulumi.Int(0),
/// 					Minutes: pulumi.Int(30),
/// 					Seconds: pulumi.Int(30),
/// 					Nanos:   pulumi.Int(20),
/// 				},
/// 				Monthly: &osconfig.PatchDeploymentRecurringScheduleMonthlyArgs{
/// 					MonthDay: pulumi.Int(1),
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
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetImageArgs;
/// import com.pulumi.gcp.compute.Instance;
/// import com.pulumi.gcp.compute.InstanceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskInitializeParamsArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceNetworkInterfaceArgs;
/// import com.pulumi.gcp.osconfig.PatchDeployment;
/// import com.pulumi.gcp.osconfig.PatchDeploymentArgs;
/// import com.pulumi.gcp.osconfig.inputs.PatchDeploymentInstanceFilterArgs;
/// import com.pulumi.gcp.osconfig.inputs.PatchDeploymentPatchConfigArgs;
/// import com.pulumi.gcp.osconfig.inputs.PatchDeploymentPatchConfigYumArgs;
/// import com.pulumi.gcp.osconfig.inputs.PatchDeploymentRecurringScheduleArgs;
/// import com.pulumi.gcp.osconfig.inputs.PatchDeploymentRecurringScheduleTimeZoneArgs;
/// import com.pulumi.gcp.osconfig.inputs.PatchDeploymentRecurringScheduleTimeOfDayArgs;
/// import com.pulumi.gcp.osconfig.inputs.PatchDeploymentRecurringScheduleMonthlyArgs;
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
///         final var myImage = ComputeFunctions.getImage(GetImageArgs.builder()
///             .family("debian-11")
///             .project("debian-cloud")
///             .build());
///
///         var foobar = new Instance("foobar", InstanceArgs.builder()
///             .name("patch-deploy-inst")
///             .machineType("e2-medium")
///             .zone("us-central1-a")
///             .canIpForward(false)
///             .tags(
///                 "foo",
///                 "bar")
///             .bootDisk(InstanceBootDiskArgs.builder()
///                 .initializeParams(InstanceBootDiskInitializeParamsArgs.builder()
///                     .image(myImage.selfLink())
///                     .build())
///                 .build())
///             .networkInterfaces(InstanceNetworkInterfaceArgs.builder()
///                 .network("default")
///                 .build())
///             .metadata(Map.of("foo", "bar"))
///             .build());
///
///         var patch = new PatchDeployment("patch", PatchDeploymentArgs.builder()
///             .patchDeploymentId("patch-deploy")
///             .instanceFilter(PatchDeploymentInstanceFilterArgs.builder()
///                 .instances(foobar.id())
///                 .build())
///             .patchConfig(PatchDeploymentPatchConfigArgs.builder()
///                 .yum(PatchDeploymentPatchConfigYumArgs.builder()
///                     .security(true)
///                     .minimal(true)
///                     .excludes("bash")
///                     .build())
///                 .build())
///             .recurringSchedule(PatchDeploymentRecurringScheduleArgs.builder()
///                 .timeZone(PatchDeploymentRecurringScheduleTimeZoneArgs.builder()
///                     .id("America/New_York")
///                     .build())
///                 .timeOfDay(PatchDeploymentRecurringScheduleTimeOfDayArgs.builder()
///                     .hours(0)
///                     .minutes(30)
///                     .seconds(30)
///                     .nanos(20)
///                     .build())
///                 .monthly(PatchDeploymentRecurringScheduleMonthlyArgs.builder()
///                     .monthDay(1)
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foobar:
///     type: gcp:compute:Instance
///     properties:
///       name: patch-deploy-inst
///       machineType: e2-medium
///       zone: us-central1-a
///       canIpForward: false
///       tags:
///         - foo
///         - bar
///       bootDisk:
///         initializeParams:
///           image: ${myImage.selfLink}
///       networkInterfaces:
///         - network: default
///       metadata:
///         foo: bar
///   patch:
///     type: gcp:osconfig:PatchDeployment
///     properties:
///       patchDeploymentId: patch-deploy
///       instanceFilter:
///         instances:
///           - ${foobar.id}
///       patchConfig:
///         yum:
///           security: true
///           minimal: true
///           excludes:
///             - bash
///       recurringSchedule:
///         timeZone:
///           id: America/New_York
///         timeOfDay:
///           hours: 0
///           minutes: 30
///           seconds: 30
///           nanos: 20
///         monthly:
///           monthDay: 1
/// variables:
///   myImage:
///     fn::invoke:
///       function: gcp:compute:getImage
///       arguments:
///         family: debian-11
///         project: debian-cloud
/// ```
///
/// ### Os Config Patch Deployment Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const patch = new gcp.osconfig.PatchDeployment("patch", {
///     patchDeploymentId: "patch-deploy",
///     instanceFilter: {
///         groupLabels: [{
///             labels: {
///                 env: "dev",
///                 app: "web",
///             },
///         }],
///         instanceNamePrefixes: ["test-"],
///         zones: [
///             "us-central1-a",
///             "us-central-1c",
///         ],
///     },
///     patchConfig: {
///         migInstancesAllowed: true,
///         rebootConfig: "ALWAYS",
///         apt: {
///             type: "DIST",
///             excludes: ["python"],
///         },
///         yum: {
///             security: true,
///             minimal: true,
///             excludes: ["bash"],
///         },
///         goo: {
///             enabled: true,
///         },
///         zypper: {
///             categories: ["security"],
///         },
///         windowsUpdate: {
///             classifications: [
///                 "CRITICAL",
///                 "SECURITY",
///                 "UPDATE",
///             ],
///             excludes: ["5012170"],
///         },
///         preStep: {
///             linuxExecStepConfig: {
///                 allowedSuccessCodes: [
///                     0,
///                     3,
///                 ],
///                 localPath: "/tmp/pre_patch_script.sh",
///             },
///             windowsExecStepConfig: {
///                 interpreter: "SHELL",
///                 allowedSuccessCodes: [
///                     0,
///                     2,
///                 ],
///                 localPath: "C:\\Users\\user\\pre-patch-script.cmd",
///             },
///         },
///         postStep: {
///             linuxExecStepConfig: {
///                 gcsObject: {
///                     bucket: "my-patch-scripts",
///                     generationNumber: "1523477886880",
///                     object: "linux/post_patch_script",
///                 },
///             },
///             windowsExecStepConfig: {
///                 interpreter: "POWERSHELL",
///                 gcsObject: {
///                     bucket: "my-patch-scripts",
///                     generationNumber: "135920493447",
///                     object: "windows/post_patch_script.ps1",
///                 },
///             },
///         },
///     },
///     duration: "10s",
///     recurringSchedule: {
///         timeZone: {
///             id: "America/New_York",
///         },
///         timeOfDay: {
///             hours: 0,
///             minutes: 30,
///             seconds: 30,
///             nanos: 20,
///         },
///         monthly: {
///             weekDayOfMonth: {
///                 weekOrdinal: -1,
///                 dayOfWeek: "TUESDAY",
///                 dayOffset: 3,
///             },
///         },
///     },
///     rollout: {
///         mode: "ZONE_BY_ZONE",
///         disruptionBudget: {
///             fixed: 1,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// patch = gcp.osconfig.PatchDeployment("patch",
///     patch_deployment_id="patch-deploy",
///     instance_filter={
///         "group_labels": [{
///             "labels": {
///                 "env": "dev",
///                 "app": "web",
///             },
///         }],
///         "instance_name_prefixes": ["test-"],
///         "zones": [
///             "us-central1-a",
///             "us-central-1c",
///         ],
///     },
///     patch_config={
///         "mig_instances_allowed": True,
///         "reboot_config": "ALWAYS",
///         "apt": {
///             "type": "DIST",
///             "excludes": ["python"],
///         },
///         "yum": {
///             "security": True,
///             "minimal": True,
///             "excludes": ["bash"],
///         },
///         "goo": {
///             "enabled": True,
///         },
///         "zypper": {
///             "categories": ["security"],
///         },
///         "windows_update": {
///             "classifications": [
///                 "CRITICAL",
///                 "SECURITY",
///                 "UPDATE",
///             ],
///             "excludes": ["5012170"],
///         },
///         "pre_step": {
///             "linux_exec_step_config": {
///                 "allowed_success_codes": [
///                     0,
///                     3,
///                 ],
///                 "local_path": "/tmp/pre_patch_script.sh",
///             },
///             "windows_exec_step_config": {
///                 "interpreter": "SHELL",
///                 "allowed_success_codes": [
///                     0,
///                     2,
///                 ],
///                 "local_path": "C:\\Users\\user\\pre-patch-script.cmd",
///             },
///         },
///         "post_step": {
///             "linux_exec_step_config": {
///                 "gcs_object": {
///                     "bucket": "my-patch-scripts",
///                     "generation_number": "1523477886880",
///                     "object": "linux/post_patch_script",
///                 },
///             },
///             "windows_exec_step_config": {
///                 "interpreter": "POWERSHELL",
///                 "gcs_object": {
///                     "bucket": "my-patch-scripts",
///                     "generation_number": "135920493447",
///                     "object": "windows/post_patch_script.ps1",
///                 },
///             },
///         },
///     },
///     duration="10s",
///     recurring_schedule={
///         "time_zone": {
///             "id": "America/New_York",
///         },
///         "time_of_day": {
///             "hours": 0,
///             "minutes": 30,
///             "seconds": 30,
///             "nanos": 20,
///         },
///         "monthly": {
///             "week_day_of_month": {
///                 "week_ordinal": -1,
///                 "day_of_week": "TUESDAY",
///                 "day_offset": 3,
///             },
///         },
///     },
///     rollout={
///         "mode": "ZONE_BY_ZONE",
///         "disruption_budget": {
///             "fixed": 1,
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var patch = new Gcp.OsConfig.PatchDeployment("patch", new()
///     {
///         PatchDeploymentId = "patch-deploy",
///         InstanceFilter = new Gcp.OsConfig.Inputs.PatchDeploymentInstanceFilterArgs
///         {
///             GroupLabels = new[]
///             {
///                 new Gcp.OsConfig.Inputs.PatchDeploymentInstanceFilterGroupLabelArgs
///                 {
///                     Labels =
///                     {
///                         { "env", "dev" },
///                         { "app", "web" },
///                     },
///                 },
///             },
///             InstanceNamePrefixes = new[]
///             {
///                 "test-",
///             },
///             Zones = new[]
///             {
///                 "us-central1-a",
///                 "us-central-1c",
///             },
///         },
///         PatchConfig = new Gcp.OsConfig.Inputs.PatchDeploymentPatchConfigArgs
///         {
///             MigInstancesAllowed = true,
///             RebootConfig = "ALWAYS",
///             Apt = new Gcp.OsConfig.Inputs.PatchDeploymentPatchConfigAptArgs
///             {
///                 Type = "DIST",
///                 Excludes = new[]
///                 {
///                     "python",
///                 },
///             },
///             Yum = new Gcp.OsConfig.Inputs.PatchDeploymentPatchConfigYumArgs
///             {
///                 Security = true,
///                 Minimal = true,
///                 Excludes = new[]
///                 {
///                     "bash",
///                 },
///             },
///             Goo = new Gcp.OsConfig.Inputs.PatchDeploymentPatchConfigGooArgs
///             {
///                 Enabled = true,
///             },
///             Zypper = new Gcp.OsConfig.Inputs.PatchDeploymentPatchConfigZypperArgs
///             {
///                 Categories = new[]
///                 {
///                     "security",
///                 },
///             },
///             WindowsUpdate = new Gcp.OsConfig.Inputs.PatchDeploymentPatchConfigWindowsUpdateArgs
///             {
///                 Classifications = new[]
///                 {
///                     "CRITICAL",
///                     "SECURITY",
///                     "UPDATE",
///                 },
///                 Excludes = new[]
///                 {
///                     "5012170",
///                 },
///             },
///             PreStep = new Gcp.OsConfig.Inputs.PatchDeploymentPatchConfigPreStepArgs
///             {
///                 LinuxExecStepConfig = new Gcp.OsConfig.Inputs.PatchDeploymentPatchConfigPreStepLinuxExecStepConfigArgs
///                 {
///                     AllowedSuccessCodes = new[]
///                     {
///                         0,
///                         3,
///                     },
///                     LocalPath = "/tmp/pre_patch_script.sh",
///                 },
///                 WindowsExecStepConfig = new Gcp.OsConfig.Inputs.PatchDeploymentPatchConfigPreStepWindowsExecStepConfigArgs
///                 {
///                     Interpreter = "SHELL",
///                     AllowedSuccessCodes = new[]
///                     {
///                         0,
///                         2,
///                     },
///                     LocalPath = "C:\\Users\\user\\pre-patch-script.cmd",
///                 },
///             },
///             PostStep = new Gcp.OsConfig.Inputs.PatchDeploymentPatchConfigPostStepArgs
///             {
///                 LinuxExecStepConfig = new Gcp.OsConfig.Inputs.PatchDeploymentPatchConfigPostStepLinuxExecStepConfigArgs
///                 {
///                     GcsObject = new Gcp.OsConfig.Inputs.PatchDeploymentPatchConfigPostStepLinuxExecStepConfigGcsObjectArgs
///                     {
///                         Bucket = "my-patch-scripts",
///                         GenerationNumber = "1523477886880",
///                         Object = "linux/post_patch_script",
///                     },
///                 },
///                 WindowsExecStepConfig = new Gcp.OsConfig.Inputs.PatchDeploymentPatchConfigPostStepWindowsExecStepConfigArgs
///                 {
///                     Interpreter = "POWERSHELL",
///                     GcsObject = new Gcp.OsConfig.Inputs.PatchDeploymentPatchConfigPostStepWindowsExecStepConfigGcsObjectArgs
///                     {
///                         Bucket = "my-patch-scripts",
///                         GenerationNumber = "135920493447",
///                         Object = "windows/post_patch_script.ps1",
///                     },
///                 },
///             },
///         },
///         Duration = "10s",
///         RecurringSchedule = new Gcp.OsConfig.Inputs.PatchDeploymentRecurringScheduleArgs
///         {
///             TimeZone = new Gcp.OsConfig.Inputs.PatchDeploymentRecurringScheduleTimeZoneArgs
///             {
///                 Id = "America/New_York",
///             },
///             TimeOfDay = new Gcp.OsConfig.Inputs.PatchDeploymentRecurringScheduleTimeOfDayArgs
///             {
///                 Hours = 0,
///                 Minutes = 30,
///                 Seconds = 30,
///                 Nanos = 20,
///             },
///             Monthly = new Gcp.OsConfig.Inputs.PatchDeploymentRecurringScheduleMonthlyArgs
///             {
///                 WeekDayOfMonth = new Gcp.OsConfig.Inputs.PatchDeploymentRecurringScheduleMonthlyWeekDayOfMonthArgs
///                 {
///                     WeekOrdinal = -1,
///                     DayOfWeek = "TUESDAY",
///                     DayOffset = 3,
///                 },
///             },
///         },
///         Rollout = new Gcp.OsConfig.Inputs.PatchDeploymentRolloutArgs
///         {
///             Mode = "ZONE_BY_ZONE",
///             DisruptionBudget = new Gcp.OsConfig.Inputs.PatchDeploymentRolloutDisruptionBudgetArgs
///             {
///                 Fixed = 1,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/osconfig"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := osconfig.NewPatchDeployment(ctx, "patch", &osconfig.PatchDeploymentArgs{
/// 			PatchDeploymentId: pulumi.String("patch-deploy"),
/// 			InstanceFilter: &osconfig.PatchDeploymentInstanceFilterArgs{
/// 				GroupLabels: osconfig.PatchDeploymentInstanceFilterGroupLabelArray{
/// 					&osconfig.PatchDeploymentInstanceFilterGroupLabelArgs{
/// 						Labels: pulumi.StringMap{
/// 							"env": pulumi.String("dev"),
/// 							"app": pulumi.String("web"),
/// 						},
/// 					},
/// 				},
/// 				InstanceNamePrefixes: pulumi.StringArray{
/// 					pulumi.String("test-"),
/// 				},
/// 				Zones: pulumi.StringArray{
/// 					pulumi.String("us-central1-a"),
/// 					pulumi.String("us-central-1c"),
/// 				},
/// 			},
/// 			PatchConfig: &osconfig.PatchDeploymentPatchConfigArgs{
/// 				MigInstancesAllowed: pulumi.Bool(true),
/// 				RebootConfig:        pulumi.String("ALWAYS"),
/// 				Apt: &osconfig.PatchDeploymentPatchConfigAptArgs{
/// 					Type: pulumi.String("DIST"),
/// 					Excludes: pulumi.StringArray{
/// 						pulumi.String("python"),
/// 					},
/// 				},
/// 				Yum: &osconfig.PatchDeploymentPatchConfigYumArgs{
/// 					Security: pulumi.Bool(true),
/// 					Minimal:  pulumi.Bool(true),
/// 					Excludes: pulumi.StringArray{
/// 						pulumi.String("bash"),
/// 					},
/// 				},
/// 				Goo: &osconfig.PatchDeploymentPatchConfigGooArgs{
/// 					Enabled: pulumi.Bool(true),
/// 				},
/// 				Zypper: &osconfig.PatchDeploymentPatchConfigZypperArgs{
/// 					Categories: pulumi.StringArray{
/// 						pulumi.String("security"),
/// 					},
/// 				},
/// 				WindowsUpdate: &osconfig.PatchDeploymentPatchConfigWindowsUpdateArgs{
/// 					Classifications: pulumi.StringArray{
/// 						pulumi.String("CRITICAL"),
/// 						pulumi.String("SECURITY"),
/// 						pulumi.String("UPDATE"),
/// 					},
/// 					Excludes: pulumi.StringArray{
/// 						pulumi.String("5012170"),
/// 					},
/// 				},
/// 				PreStep: &osconfig.PatchDeploymentPatchConfigPreStepArgs{
/// 					LinuxExecStepConfig: &osconfig.PatchDeploymentPatchConfigPreStepLinuxExecStepConfigArgs{
/// 						AllowedSuccessCodes: pulumi.IntArray{
/// 							pulumi.Int(0),
/// 							pulumi.Int(3),
/// 						},
/// 						LocalPath: pulumi.String("/tmp/pre_patch_script.sh"),
/// 					},
/// 					WindowsExecStepConfig: &osconfig.PatchDeploymentPatchConfigPreStepWindowsExecStepConfigArgs{
/// 						Interpreter: pulumi.String("SHELL"),
/// 						AllowedSuccessCodes: pulumi.IntArray{
/// 							pulumi.Int(0),
/// 							pulumi.Int(2),
/// 						},
/// 						LocalPath: pulumi.String("C:\\Users\\user\\pre-patch-script.cmd"),
/// 					},
/// 				},
/// 				PostStep: &osconfig.PatchDeploymentPatchConfigPostStepArgs{
/// 					LinuxExecStepConfig: &osconfig.PatchDeploymentPatchConfigPostStepLinuxExecStepConfigArgs{
/// 						GcsObject: &osconfig.PatchDeploymentPatchConfigPostStepLinuxExecStepConfigGcsObjectArgs{
/// 							Bucket:           pulumi.String("my-patch-scripts"),
/// 							GenerationNumber: pulumi.String("1523477886880"),
/// 							Object:           pulumi.String("linux/post_patch_script"),
/// 						},
/// 					},
/// 					WindowsExecStepConfig: &osconfig.PatchDeploymentPatchConfigPostStepWindowsExecStepConfigArgs{
/// 						Interpreter: pulumi.String("POWERSHELL"),
/// 						GcsObject: &osconfig.PatchDeploymentPatchConfigPostStepWindowsExecStepConfigGcsObjectArgs{
/// 							Bucket:           pulumi.String("my-patch-scripts"),
/// 							GenerationNumber: pulumi.String("135920493447"),
/// 							Object:           pulumi.String("windows/post_patch_script.ps1"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Duration: pulumi.String("10s"),
/// 			RecurringSchedule: &osconfig.PatchDeploymentRecurringScheduleArgs{
/// 				TimeZone: &osconfig.PatchDeploymentRecurringScheduleTimeZoneArgs{
/// 					Id: pulumi.String("America/New_York"),
/// 				},
/// 				TimeOfDay: &osconfig.PatchDeploymentRecurringScheduleTimeOfDayArgs{
/// 					Hours:   pulumi.Int(0),
/// 					Minutes: pulumi.Int(30),
/// 					Seconds: pulumi.Int(30),
/// 					Nanos:   pulumi.Int(20),
/// 				},
/// 				Monthly: &osconfig.PatchDeploymentRecurringScheduleMonthlyArgs{
/// 					WeekDayOfMonth: &osconfig.PatchDeploymentRecurringScheduleMonthlyWeekDayOfMonthArgs{
/// 						WeekOrdinal: pulumi.Int(-1),
/// 						DayOfWeek:   pulumi.String("TUESDAY"),
/// 						DayOffset:   pulumi.Int(3),
/// 					},
/// 				},
/// 			},
/// 			Rollout: &osconfig.PatchDeploymentRolloutArgs{
/// 				Mode: pulumi.String("ZONE_BY_ZONE"),
/// 				DisruptionBudget: &osconfig.PatchDeploymentRolloutDisruptionBudgetArgs{
/// 					Fixed: pulumi.Int(1),
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
/// import com.pulumi.gcp.osconfig.PatchDeployment;
/// import com.pulumi.gcp.osconfig.PatchDeploymentArgs;
/// import com.pulumi.gcp.osconfig.inputs.PatchDeploymentInstanceFilterArgs;
/// import com.pulumi.gcp.osconfig.inputs.PatchDeploymentPatchConfigArgs;
/// import com.pulumi.gcp.osconfig.inputs.PatchDeploymentPatchConfigAptArgs;
/// import com.pulumi.gcp.osconfig.inputs.PatchDeploymentPatchConfigYumArgs;
/// import com.pulumi.gcp.osconfig.inputs.PatchDeploymentPatchConfigGooArgs;
/// import com.pulumi.gcp.osconfig.inputs.PatchDeploymentPatchConfigZypperArgs;
/// import com.pulumi.gcp.osconfig.inputs.PatchDeploymentPatchConfigWindowsUpdateArgs;
/// import com.pulumi.gcp.osconfig.inputs.PatchDeploymentPatchConfigPreStepArgs;
/// import com.pulumi.gcp.osconfig.inputs.PatchDeploymentPatchConfigPreStepLinuxExecStepConfigArgs;
/// import com.pulumi.gcp.osconfig.inputs.PatchDeploymentPatchConfigPreStepWindowsExecStepConfigArgs;
/// import com.pulumi.gcp.osconfig.inputs.PatchDeploymentPatchConfigPostStepArgs;
/// import com.pulumi.gcp.osconfig.inputs.PatchDeploymentPatchConfigPostStepLinuxExecStepConfigArgs;
/// import com.pulumi.gcp.osconfig.inputs.PatchDeploymentPatchConfigPostStepLinuxExecStepConfigGcsObjectArgs;
/// import com.pulumi.gcp.osconfig.inputs.PatchDeploymentPatchConfigPostStepWindowsExecStepConfigArgs;
/// import com.pulumi.gcp.osconfig.inputs.PatchDeploymentPatchConfigPostStepWindowsExecStepConfigGcsObjectArgs;
/// import com.pulumi.gcp.osconfig.inputs.PatchDeploymentRecurringScheduleArgs;
/// import com.pulumi.gcp.osconfig.inputs.PatchDeploymentRecurringScheduleTimeZoneArgs;
/// import com.pulumi.gcp.osconfig.inputs.PatchDeploymentRecurringScheduleTimeOfDayArgs;
/// import com.pulumi.gcp.osconfig.inputs.PatchDeploymentRecurringScheduleMonthlyArgs;
/// import com.pulumi.gcp.osconfig.inputs.PatchDeploymentRecurringScheduleMonthlyWeekDayOfMonthArgs;
/// import com.pulumi.gcp.osconfig.inputs.PatchDeploymentRolloutArgs;
/// import com.pulumi.gcp.osconfig.inputs.PatchDeploymentRolloutDisruptionBudgetArgs;
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
///         var patch = new PatchDeployment("patch", PatchDeploymentArgs.builder()
///             .patchDeploymentId("patch-deploy")
///             .instanceFilter(PatchDeploymentInstanceFilterArgs.builder()
///                 .groupLabels(PatchDeploymentInstanceFilterGroupLabelArgs.builder()
///                     .labels(Map.ofEntries(
///                         Map.entry("env", "dev"),
///                         Map.entry("app", "web")
///                     ))
///                     .build())
///                 .instanceNamePrefixes("test-")
///                 .zones(
///                     "us-central1-a",
///                     "us-central-1c")
///                 .build())
///             .patchConfig(PatchDeploymentPatchConfigArgs.builder()
///                 .migInstancesAllowed(true)
///                 .rebootConfig("ALWAYS")
///                 .apt(PatchDeploymentPatchConfigAptArgs.builder()
///                     .type("DIST")
///                     .excludes("python")
///                     .build())
///                 .yum(PatchDeploymentPatchConfigYumArgs.builder()
///                     .security(true)
///                     .minimal(true)
///                     .excludes("bash")
///                     .build())
///                 .goo(PatchDeploymentPatchConfigGooArgs.builder()
///                     .enabled(true)
///                     .build())
///                 .zypper(PatchDeploymentPatchConfigZypperArgs.builder()
///                     .categories("security")
///                     .build())
///                 .windowsUpdate(PatchDeploymentPatchConfigWindowsUpdateArgs.builder()
///                     .classifications(
///                         "CRITICAL",
///                         "SECURITY",
///                         "UPDATE")
///                     .excludes("5012170")
///                     .build())
///                 .preStep(PatchDeploymentPatchConfigPreStepArgs.builder()
///                     .linuxExecStepConfig(PatchDeploymentPatchConfigPreStepLinuxExecStepConfigArgs.builder()
///                         .allowedSuccessCodes(
///                             0,
///                             3)
///                         .localPath("/tmp/pre_patch_script.sh")
///                         .build())
///                     .windowsExecStepConfig(PatchDeploymentPatchConfigPreStepWindowsExecStepConfigArgs.builder()
///                         .interpreter("SHELL")
///                         .allowedSuccessCodes(
///                             0,
///                             2)
///                         .localPath("C:\\Users\\user\\pre-patch-script.cmd")
///                         .build())
///                     .build())
///                 .postStep(PatchDeploymentPatchConfigPostStepArgs.builder()
///                     .linuxExecStepConfig(PatchDeploymentPatchConfigPostStepLinuxExecStepConfigArgs.builder()
///                         .gcsObject(PatchDeploymentPatchConfigPostStepLinuxExecStepConfigGcsObjectArgs.builder()
///                             .bucket("my-patch-scripts")
///                             .generationNumber("1523477886880")
///                             .object("linux/post_patch_script")
///                             .build())
///                         .build())
///                     .windowsExecStepConfig(PatchDeploymentPatchConfigPostStepWindowsExecStepConfigArgs.builder()
///                         .interpreter("POWERSHELL")
///                         .gcsObject(PatchDeploymentPatchConfigPostStepWindowsExecStepConfigGcsObjectArgs.builder()
///                             .bucket("my-patch-scripts")
///                             .generationNumber("135920493447")
///                             .object("windows/post_patch_script.ps1")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .duration("10s")
///             .recurringSchedule(PatchDeploymentRecurringScheduleArgs.builder()
///                 .timeZone(PatchDeploymentRecurringScheduleTimeZoneArgs.builder()
///                     .id("America/New_York")
///                     .build())
///                 .timeOfDay(PatchDeploymentRecurringScheduleTimeOfDayArgs.builder()
///                     .hours(0)
///                     .minutes(30)
///                     .seconds(30)
///                     .nanos(20)
///                     .build())
///                 .monthly(PatchDeploymentRecurringScheduleMonthlyArgs.builder()
///                     .weekDayOfMonth(PatchDeploymentRecurringScheduleMonthlyWeekDayOfMonthArgs.builder()
///                         .weekOrdinal(-1)
///                         .dayOfWeek("TUESDAY")
///                         .dayOffset(3)
///                         .build())
///                     .build())
///                 .build())
///             .rollout(PatchDeploymentRolloutArgs.builder()
///                 .mode("ZONE_BY_ZONE")
///                 .disruptionBudget(PatchDeploymentRolloutDisruptionBudgetArgs.builder()
///                     .fixed(1)
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   patch:
///     type: gcp:osconfig:PatchDeployment
///     properties:
///       patchDeploymentId: patch-deploy
///       instanceFilter:
///         groupLabels:
///           - labels:
///               env: dev
///               app: web
///         instanceNamePrefixes:
///           - test-
///         zones:
///           - us-central1-a
///           - us-central-1c
///       patchConfig:
///         migInstancesAllowed: true
///         rebootConfig: ALWAYS
///         apt:
///           type: DIST
///           excludes:
///             - python
///         yum:
///           security: true
///           minimal: true
///           excludes:
///             - bash
///         goo:
///           enabled: true
///         zypper:
///           categories:
///             - security
///         windowsUpdate:
///           classifications:
///             - CRITICAL
///             - SECURITY
///             - UPDATE
///           excludes:
///             - '5012170'
///         preStep:
///           linuxExecStepConfig:
///             allowedSuccessCodes:
///               - 0
///               - 3
///             localPath: /tmp/pre_patch_script.sh
///           windowsExecStepConfig:
///             interpreter: SHELL
///             allowedSuccessCodes:
///               - 0
///               - 2
///             localPath: C:\Users\user\pre-patch-script.cmd
///         postStep:
///           linuxExecStepConfig:
///             gcsObject:
///               bucket: my-patch-scripts
///               generationNumber: '1523477886880'
///               object: linux/post_patch_script
///           windowsExecStepConfig:
///             interpreter: POWERSHELL
///             gcsObject:
///               bucket: my-patch-scripts
///               generationNumber: '135920493447'
///               object: windows/post_patch_script.ps1
///       duration: 10s
///       recurringSchedule:
///         timeZone:
///           id: America/New_York
///         timeOfDay:
///           hours: 0
///           minutes: 30
///           seconds: 30
///           nanos: 20
///         monthly:
///           weekDayOfMonth:
///             weekOrdinal: -1
///             dayOfWeek: TUESDAY
///             dayOffset: 3
///       rollout:
///         mode: ZONE_BY_ZONE
///         disruptionBudget:
///           fixed: 1
/// ```
///
///
/// ## Import
///
/// PatchDeployment can be imported using any of these accepted formats:
///
/// * `{{project}}/{{name}}`
///
/// * `{{project}} {{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, PatchDeployment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:osconfig/patchDeployment:PatchDeployment default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:osconfig/patchDeployment:PatchDeployment default "{{project}} {{name}}"
/// ```
///
/// ```sh
/// $ pulumi import gcp:osconfig/patchDeployment:PatchDeployment default {{name}}
/// ```
class PatchDeployment extends pulumi.CustomResource {
  /// Time the patch deployment was created. Timestamp is in RFC3339 text format.
  /// A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> createTime;
  /// Description of the patch deployment. Length of the description is limited to 1024 characters.
  late final pulumi.Output<String?> description;
  /// Duration of the patch. After the duration ends, the patch times out.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s"
  late final pulumi.Output<String?> duration;
  /// VM instances to patch.
  /// Structure is documented below.
  late final pulumi.Output<PatchDeploymentInstanceFilter> instanceFilter;
  /// The last time a patch job was started by this deployment. Timestamp is in RFC3339 text format.
  /// A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> lastExecuteTime;
  /// Unique name for the patch deployment resource in a project.
  /// The patch deployment name is in the form: projects/{project_id}/patchDeployments/{patchDeploymentId}.
  late final pulumi.Output<String> name;
  /// Schedule a one-time execution.
  /// Structure is documented below.
  late final pulumi.Output<PatchDeploymentOneTimeSchedule?> oneTimeSchedule;
  /// Patch configuration that is applied.
  /// Structure is documented below.
  late final pulumi.Output<PatchDeploymentPatchConfig?> patchConfig;
  /// A name for the patch deployment in the project. When creating a name the following rules apply:
  /// * Must contain only lowercase letters, numbers, and hyphens.
  /// * Must start with a letter.
  /// * Must be between 1-63 characters.
  /// * Must end with a number or a letter.
  /// * Must be unique within the project.
  late final pulumi.Output<String> patchDeploymentId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Schedule recurring executions.
  /// Structure is documented below.
  late final pulumi.Output<PatchDeploymentRecurringSchedule?> recurringSchedule;
  /// Rollout strategy of the patch job.
  /// Structure is documented below.
  late final pulumi.Output<PatchDeploymentRollout?> rollout;
  /// Time the patch deployment was last updated. Timestamp is in RFC3339 text format.
  /// A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> updateTime;

  /// Creates a new [PatchDeployment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PatchDeployment]. {@macro pulumi_osconfig_patch_deployment_patch_deployment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PatchDeployment(
    String name, {
    PatchDeploymentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:osconfig/patchDeployment:PatchDeployment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.duration = registerOutput<String?>('duration');
    this.instanceFilter = registerOutput<PatchDeploymentInstanceFilter>('instanceFilter');
    this.lastExecuteTime = registerOutput<String>('lastExecuteTime');
    this.name = registerOutput<String>('name');
    this.oneTimeSchedule = registerOutput<PatchDeploymentOneTimeSchedule?>('oneTimeSchedule');
    this.patchConfig = registerOutput<PatchDeploymentPatchConfig?>('patchConfig');
    this.patchDeploymentId = registerOutput<String>('patchDeploymentId');
    this.project = registerOutput<String>('project');
    this.recurringSchedule = registerOutput<PatchDeploymentRecurringSchedule?>('recurringSchedule');
    this.rollout = registerOutput<PatchDeploymentRollout?>('rollout');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
