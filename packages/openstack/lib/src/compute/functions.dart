import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_aggregate_v2_args.dart';
import 'get_aggregate_v2_result.dart';
import 'get_availability_zones_args.dart';
import 'get_availability_zones_result.dart';
import 'get_flavor_args.dart';
import 'get_flavor_result.dart';
import 'get_hypervisor_v2_args.dart';
import 'get_hypervisor_v2_result.dart';
import 'get_instance_v2_args.dart';
import 'get_instance_v2_result.dart';
import 'get_keypair_args.dart';
import 'get_keypair_result.dart';
import 'get_limits_v2_args.dart';
import 'get_limits_v2_result.dart';
import 'get_quota_set_v2_args.dart';
import 'get_quota_set_v2_result.dart';
import 'get_servergroup_v2_args.dart';
import 'get_servergroup_v2_result.dart';

/// Use this data source to get information about host aggregates
/// by name.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const test = openstack.compute.getAggregateV2({
///     name: "test",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// test = openstack.compute.get_aggregate_v2(name="test")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = OpenStack.Compute.GetAggregateV2.Invoke(new()
///     {
///         Name = "test",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.LookupAggregateV2(ctx, &compute.LookupAggregateV2Args{
/// 			Name: "test",
/// 		}, nil)
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
/// import com.pulumi.openstack.compute.ComputeFunctions;
/// import com.pulumi.openstack.compute.inputs.GetAggregateV2Args;
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
///         final var test = ComputeFunctions.getAggregateV2(GetAggregateV2Args.builder()
///             .name("test")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: openstack:compute:getAggregateV2
///       arguments:
///         name: test
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_aggregate_v2_get_aggregate_v2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAggregateV2Result> getAggregateV2(
  GetAggregateV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'openstack:compute/getAggregateV2:getAggregateV2',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAggregateV2Result.fromMap(result);
}

/// Use this data source to get a list of availability zones from OpenStack
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const zones = openstack.compute.getAvailabilityZones({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// zones = openstack.compute.get_availability_zones()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var zones = OpenStack.Compute.GetAvailabilityZones.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.GetAvailabilityZones(ctx, &compute.GetAvailabilityZonesArgs{}, nil)
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
/// import com.pulumi.openstack.compute.ComputeFunctions;
/// import com.pulumi.openstack.compute.inputs.GetAvailabilityZonesArgs;
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
///         final var zones = ComputeFunctions.getAvailabilityZones(GetAvailabilityZonesArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   zones:
///     fn::invoke:
///       function: openstack:compute:getAvailabilityZones
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_availability_zones_get_availability_zones_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAvailabilityZonesResult> getAvailabilityZones(
  GetAvailabilityZonesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'openstack:compute/getAvailabilityZones:getAvailabilityZones',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAvailabilityZonesResult.fromMap(result);
}

/// Use this data source to get the ID of an available OpenStack flavor.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const small = openstack.compute.getFlavor({
///     vcpus: 1,
///     ram: 512,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// small = openstack.compute.get_flavor(vcpus=1,
///     ram=512)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var small = OpenStack.Compute.GetFlavor.Invoke(new()
///     {
///         Vcpus = 1,
///         Ram = 512,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.LookupFlavor(ctx, &compute.LookupFlavorArgs{
/// 			Vcpus: pulumi.IntRef(1),
/// 			Ram:   pulumi.IntRef(512),
/// 		}, nil)
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
/// import com.pulumi.openstack.compute.ComputeFunctions;
/// import com.pulumi.openstack.compute.inputs.GetFlavorArgs;
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
///         final var small = ComputeFunctions.getFlavor(GetFlavorArgs.builder()
///             .vcpus(1)
///             .ram(512)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   small:
///     fn::invoke:
///       function: openstack:compute:getFlavor
///       arguments:
///         vcpus: 1
///         ram: 512
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_flavor_get_flavor_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFlavorResult> getFlavor(
  GetFlavorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'openstack:compute/getFlavor:getFlavor',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFlavorResult.fromMap(result);
}

/// Use this data source to get information about hypervisors
/// by hostname.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const host01 = openstack.compute.getHypervisorV2({
///     hostname: "host01",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// host01 = openstack.compute.get_hypervisor_v2(hostname="host01")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var host01 = OpenStack.Compute.GetHypervisorV2.Invoke(new()
///     {
///         Hostname = "host01",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.GetHypervisorV2(ctx, &compute.GetHypervisorV2Args{
/// 			Hostname: pulumi.StringRef("host01"),
/// 		}, nil)
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
/// import com.pulumi.openstack.compute.ComputeFunctions;
/// import com.pulumi.openstack.compute.inputs.GetHypervisorV2Args;
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
///         final var host01 = ComputeFunctions.getHypervisorV2(GetHypervisorV2Args.builder()
///             .hostname("host01")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   host01:
///     fn::invoke:
///       function: openstack:compute:getHypervisorV2
///       arguments:
///         hostname: host01
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_hypervisor_v2_get_hypervisor_v2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHypervisorV2Result> getHypervisorV2(
  GetHypervisorV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'openstack:compute/getHypervisorV2:getHypervisorV2',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHypervisorV2Result.fromMap(result);
}

/// Use this data source to get the details of a running server
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const instance = openstack.compute.getInstanceV2({
///     id: "2ba26dc6-a12d-4889-8f25-794ea5bf4453",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// instance = openstack.compute.get_instance_v2(id="2ba26dc6-a12d-4889-8f25-794ea5bf4453")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var instance = OpenStack.Compute.GetInstanceV2.Invoke(new()
///     {
///         Id = "2ba26dc6-a12d-4889-8f25-794ea5bf4453",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.GetInstanceV2(ctx, &compute.GetInstanceV2Args{
/// 			Id: "2ba26dc6-a12d-4889-8f25-794ea5bf4453",
/// 		}, nil)
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
/// import com.pulumi.openstack.compute.ComputeFunctions;
/// import com.pulumi.openstack.compute.inputs.GetInstanceV2Args;
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
///         final var instance = ComputeFunctions.getInstanceV2(GetInstanceV2Args.builder()
///             .id("2ba26dc6-a12d-4889-8f25-794ea5bf4453")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   instance:
///     fn::invoke:
///       function: openstack:compute:getInstanceV2
///       arguments:
///         id: 2ba26dc6-a12d-4889-8f25-794ea5bf4453
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_instance_v2_get_instance_v2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceV2Result> getInstanceV2(
  GetInstanceV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'openstack:compute/getInstanceV2:getInstanceV2',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceV2Result.fromMap(result);
}

/// Use this data source to get the ID and public key of an OpenStack keypair.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const kp = openstack.compute.getKeypair({
///     name: "sand",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// kp = openstack.compute.get_keypair(name="sand")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var kp = OpenStack.Compute.GetKeypair.Invoke(new()
///     {
///         Name = "sand",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.LookupKeypair(ctx, &compute.LookupKeypairArgs{
/// 			Name: "sand",
/// 		}, nil)
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
/// import com.pulumi.openstack.compute.ComputeFunctions;
/// import com.pulumi.openstack.compute.inputs.GetKeypairArgs;
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
///         final var kp = ComputeFunctions.getKeypair(GetKeypairArgs.builder()
///             .name("sand")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   kp:
///     fn::invoke:
///       function: openstack:compute:getKeypair
///       arguments:
///         name: sand
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_keypair_get_keypair_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKeypairResult> getKeypair(
  GetKeypairArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'openstack:compute/getKeypair:getKeypair',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKeypairResult.fromMap(result);
}

/// Use this data source to get the compute limits of an OpenStack project.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const limits = openstack.compute.getLimitsV2({
///     projectId: "2e367a3d29f94fd988e6ec54e305ec9d",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// limits = openstack.compute.get_limits_v2(project_id="2e367a3d29f94fd988e6ec54e305ec9d")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var limits = OpenStack.Compute.GetLimitsV2.Invoke(new()
///     {
///         ProjectId = "2e367a3d29f94fd988e6ec54e305ec9d",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.GetLimitsV2(ctx, &compute.GetLimitsV2Args{
/// 			ProjectId: "2e367a3d29f94fd988e6ec54e305ec9d",
/// 		}, nil)
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
/// import com.pulumi.openstack.compute.ComputeFunctions;
/// import com.pulumi.openstack.compute.inputs.GetLimitsV2Args;
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
///         final var limits = ComputeFunctions.getLimitsV2(GetLimitsV2Args.builder()
///             .projectId("2e367a3d29f94fd988e6ec54e305ec9d")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   limits:
///     fn::invoke:
///       function: openstack:compute:getLimitsV2
///       arguments:
///         projectId: 2e367a3d29f94fd988e6ec54e305ec9d
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_limits_v2_get_limits_v2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLimitsV2Result> getLimitsV2(
  GetLimitsV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'openstack:compute/getLimitsV2:getLimitsV2',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLimitsV2Result.fromMap(result);
}

/// Use this data source to get the compute quotaset of an OpenStack project.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const quota = openstack.compute.getQuotaSetV2({
///     projectId: "2e367a3d29f94fd988e6ec54e305ec9d",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// quota = openstack.compute.get_quota_set_v2(project_id="2e367a3d29f94fd988e6ec54e305ec9d")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var quota = OpenStack.Compute.GetQuotaSetV2.Invoke(new()
///     {
///         ProjectId = "2e367a3d29f94fd988e6ec54e305ec9d",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.LookupQuotaSetV2(ctx, &compute.LookupQuotaSetV2Args{
/// 			ProjectId: "2e367a3d29f94fd988e6ec54e305ec9d",
/// 		}, nil)
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
/// import com.pulumi.openstack.compute.ComputeFunctions;
/// import com.pulumi.openstack.compute.inputs.GetQuotaSetV2Args;
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
///         final var quota = ComputeFunctions.getQuotaSetV2(GetQuotaSetV2Args.builder()
///             .projectId("2e367a3d29f94fd988e6ec54e305ec9d")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   quota:
///     fn::invoke:
///       function: openstack:compute:getQuotaSetV2
///       arguments:
///         projectId: 2e367a3d29f94fd988e6ec54e305ec9d
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_quota_set_v2_get_quota_set_v2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetQuotaSetV2Result> getQuotaSetV2(
  GetQuotaSetV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'openstack:compute/getQuotaSetV2:getQuotaSetV2',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetQuotaSetV2Result.fromMap(result);
}

/// Use this data source to get information about server groups
/// by name.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const test = openstack.compute.getServergroupV2({
///     name: "test",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// test = openstack.compute.get_servergroup_v2(name="test")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = OpenStack.Compute.GetServergroupV2.Invoke(new()
///     {
///         Name = "test",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.GetServergroupV2(ctx, &compute.GetServergroupV2Args{
/// 			Name: "test",
/// 		}, nil)
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
/// import com.pulumi.openstack.compute.ComputeFunctions;
/// import com.pulumi.openstack.compute.inputs.GetServergroupV2Args;
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
///         final var test = ComputeFunctions.getServergroupV2(GetServergroupV2Args.builder()
///             .name("test")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: openstack:compute:getServergroupV2
///       arguments:
///         name: test
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_get_servergroup_v2_get_servergroup_v2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServergroupV2Result> getServergroupV2(
  GetServergroupV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'openstack:compute/getServergroupV2:getServergroupV2',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServergroupV2Result.fromMap(result);
}
