import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_engine_service_iam_policy_args.dart';
import 'get_app_engine_service_iam_policy_result.dart';
import 'get_app_engine_version_iam_policy_args.dart';
import 'get_app_engine_version_iam_policy_result.dart';
import 'get_client_args.dart';
import 'get_client_result.dart';
import 'get_tunnel_dest_group_iam_policy_args.dart';
import 'get_tunnel_dest_group_iam_policy_result.dart';
import 'get_tunnel_iam_policy_args.dart';
import 'get_tunnel_iam_policy_result.dart';
import 'get_tunnel_instance_iam_policy_args.dart';
import 'get_tunnel_instance_iam_policy_result.dart';
import 'get_web_backend_service_iam_policy_args.dart';
import 'get_web_backend_service_iam_policy_result.dart';
import 'get_web_cloud_run_service_iam_policy_args.dart';
import 'get_web_cloud_run_service_iam_policy_result.dart';
import 'get_web_forwarding_rule_service_iam_policy_args.dart';
import 'get_web_forwarding_rule_service_iam_policy_result.dart';
import 'get_web_iam_policy_args.dart';
import 'get_web_iam_policy_result.dart';
import 'get_web_region_backend_service_iam_policy_args.dart';
import 'get_web_region_backend_service_iam_policy_result.dart';
import 'get_web_region_forwarding_rule_service_iam_policy_args.dart';
import 'get_web_region_forwarding_rule_service_iam_policy_result.dart';
import 'get_web_type_app_engine_iam_policy_args.dart';
import 'get_web_type_app_engine_iam_policy_result.dart';
import 'get_web_type_compute_iam_policy_args.dart';
import 'get_web_type_compute_iam_policy_result.dart';

/// Retrieves the current IAM policy data for appengineservice
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.iap.getAppEngineServiceIamPolicy({
///     project: version.project,
///     appId: version.project,
///     service: version.service,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.iap.get_app_engine_service_iam_policy(project=version["project"],
///     app_id=version["project"],
///     service=version["service"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Iap.GetAppEngineServiceIamPolicy.Invoke(new()
///     {
///         Project = version.Project,
///         AppId = version.Project,
///         Service = version.Service,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iap.LookupAppEngineServiceIamPolicy(ctx, &iap.LookupAppEngineServiceIamPolicyArgs{
/// 			Project: pulumi.StringRef(version.Project),
/// 			AppId:   version.Project,
/// 			Service: version.Service,
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
/// import com.pulumi.gcp.iap.IapFunctions;
/// import com.pulumi.gcp.iap.inputs.GetAppEngineServiceIamPolicyArgs;
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
///         final var policy = IapFunctions.getAppEngineServiceIamPolicy(GetAppEngineServiceIamPolicyArgs.builder()
///             .project(version.project())
///             .appId(version.project())
///             .service(version.service())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:iap:getAppEngineServiceIamPolicy
///       arguments:
///         project: ${version.project}
///         appId: ${version.project}
///         service: ${version.service}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_iap_get_app_engine_service_iam_policy_get_app_engine_service_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAppEngineServiceIamPolicyResult> getAppEngineServiceIamPolicy(
  GetAppEngineServiceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iap/getAppEngineServiceIamPolicy:getAppEngineServiceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppEngineServiceIamPolicyResult.fromMap(result);
}

/// Retrieves the current IAM policy data for appengineversion
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.iap.getAppEngineVersionIamPolicy({
///     project: version.project,
///     appId: version.project,
///     service: version.service,
///     versionId: version.versionId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.iap.get_app_engine_version_iam_policy(project=version["project"],
///     app_id=version["project"],
///     service=version["service"],
///     version_id=version["versionId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Iap.GetAppEngineVersionIamPolicy.Invoke(new()
///     {
///         Project = version.Project,
///         AppId = version.Project,
///         Service = version.Service,
///         VersionId = version.VersionId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iap.LookupAppEngineVersionIamPolicy(ctx, &iap.LookupAppEngineVersionIamPolicyArgs{
/// 			Project:   pulumi.StringRef(version.Project),
/// 			AppId:     version.Project,
/// 			Service:   version.Service,
/// 			VersionId: version.VersionId,
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
/// import com.pulumi.gcp.iap.IapFunctions;
/// import com.pulumi.gcp.iap.inputs.GetAppEngineVersionIamPolicyArgs;
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
///         final var policy = IapFunctions.getAppEngineVersionIamPolicy(GetAppEngineVersionIamPolicyArgs.builder()
///             .project(version.project())
///             .appId(version.project())
///             .service(version.service())
///             .versionId(version.versionId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:iap:getAppEngineVersionIamPolicy
///       arguments:
///         project: ${version.project}
///         appId: ${version.project}
///         service: ${version.service}
///         versionId: ${version.versionId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_iap_get_app_engine_version_iam_policy_get_app_engine_version_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAppEngineVersionIamPolicyResult> getAppEngineVersionIamPolicy(
  GetAppEngineVersionIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iap/getAppEngineVersionIamPolicy:getAppEngineVersionIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppEngineVersionIamPolicyResult.fromMap(result);
}

/// Get info about a Google Cloud IAP Client.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({
///     projectId: "foobar",
/// });
/// const projectClient = project.then(project => gcp.iap.getClient({
///     brand: `projects/${project.number}/brands/[BRAND_NUMBER]`,
///     clientId: apps.googleusercontent.com,
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project(project_id="foobar")
/// project_client = gcp.iap.get_client(brand=f"projects/{project.number}/brands/[BRAND_NUMBER]",
///     client_id=apps["googleusercontent"]["com"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = Gcp.Organizations.GetProject.Invoke(new()
///     {
///         ProjectId = "foobar",
///     });
///
///     var projectClient = Gcp.Iap.GetClient.Invoke(new()
///     {
///         Brand = $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}/brands/[BRAND_NUMBER]",
///         ClientId = apps.Googleusercontent.Com,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{
/// 			ProjectId: pulumi.StringRef("foobar"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iap.LookupClient(ctx, &iap.LookupClientArgs{
/// 			Brand:    fmt.Sprintf("projects/%v/brands/[BRAND_NUMBER]", project.Number),
/// 			ClientId: apps.Googleusercontent.Com,
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.iap.IapFunctions;
/// import com.pulumi.gcp.iap.inputs.GetClientArgs;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .projectId("foobar")
///             .build());
///
///         final var projectClient = IapFunctions.getClient(GetClientArgs.builder()
///             .brand(String.format("projects/%s/brands/[BRAND_NUMBER]", project.number()))
///             .clientId(apps.googleusercontent().com())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments:
///         projectId: foobar
///   projectClient:
///     fn::invoke:
///       function: gcp:iap:getClient
///       arguments:
///         brand: projects/${project.number}/brands/[BRAND_NUMBER]
///         clientId: ${apps.googleusercontent.com}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_iap_get_client_get_client_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClientResult> getClient(
  GetClientArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iap/getClient:getClient',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClientResult.fromMap(result);
}

/// Retrieves the current IAM policy data for tunneldestgroup
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.iap.getTunnelDestGroupIamPolicy({
///     project: destGroup.project,
///     region: destGroup.region,
///     destGroup: destGroup.groupName,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.iap.get_tunnel_dest_group_iam_policy(project=dest_group["project"],
///     region=dest_group["region"],
///     dest_group=dest_group["groupName"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Iap.GetTunnelDestGroupIamPolicy.Invoke(new()
///     {
///         Project = destGroup.Project,
///         Region = destGroup.Region,
///         DestGroup = destGroup.GroupName,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iap.LookupTunnelDestGroupIamPolicy(ctx, &iap.LookupTunnelDestGroupIamPolicyArgs{
/// 			Project:   pulumi.StringRef(destGroup.Project),
/// 			Region:    pulumi.StringRef(destGroup.Region),
/// 			DestGroup: destGroup.GroupName,
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
/// import com.pulumi.gcp.iap.IapFunctions;
/// import com.pulumi.gcp.iap.inputs.GetTunnelDestGroupIamPolicyArgs;
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
///         final var policy = IapFunctions.getTunnelDestGroupIamPolicy(GetTunnelDestGroupIamPolicyArgs.builder()
///             .project(destGroup.project())
///             .region(destGroup.region())
///             .destGroup(destGroup.groupName())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:iap:getTunnelDestGroupIamPolicy
///       arguments:
///         project: ${destGroup.project}
///         region: ${destGroup.region}
///         destGroup: ${destGroup.groupName}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_iap_get_tunnel_dest_group_iam_policy_get_tunnel_dest_group_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTunnelDestGroupIamPolicyResult> getTunnelDestGroupIamPolicy(
  GetTunnelDestGroupIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iap/getTunnelDestGroupIamPolicy:getTunnelDestGroupIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTunnelDestGroupIamPolicyResult.fromMap(result);
}

/// Retrieves the current IAM policy data for tunnel
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.iap.getTunnelIamPolicy({
///     project: projectService.project,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.iap.get_tunnel_iam_policy(project=project_service["project"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Iap.GetTunnelIamPolicy.Invoke(new()
///     {
///         Project = projectService.Project,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iap.LookupTunnelIamPolicy(ctx, &iap.LookupTunnelIamPolicyArgs{
/// 			Project: pulumi.StringRef(projectService.Project),
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
/// import com.pulumi.gcp.iap.IapFunctions;
/// import com.pulumi.gcp.iap.inputs.GetTunnelIamPolicyArgs;
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
///         final var policy = IapFunctions.getTunnelIamPolicy(GetTunnelIamPolicyArgs.builder()
///             .project(projectService.project())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:iap:getTunnelIamPolicy
///       arguments:
///         project: ${projectService.project}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_iap_get_tunnel_iam_policy_get_tunnel_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTunnelIamPolicyResult> getTunnelIamPolicy(
  GetTunnelIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iap/getTunnelIamPolicy:getTunnelIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTunnelIamPolicyResult.fromMap(result);
}

/// Retrieves the current IAM policy data for tunnelinstance
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.iap.getTunnelInstanceIamPolicy({
///     project: tunnelvm.project,
///     zone: tunnelvm.zone,
///     instance: tunnelvm.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.iap.get_tunnel_instance_iam_policy(project=tunnelvm["project"],
///     zone=tunnelvm["zone"],
///     instance=tunnelvm["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Iap.GetTunnelInstanceIamPolicy.Invoke(new()
///     {
///         Project = tunnelvm.Project,
///         Zone = tunnelvm.Zone,
///         Instance = tunnelvm.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iap.GetTunnelInstanceIamPolicy(ctx, &iap.GetTunnelInstanceIamPolicyArgs{
/// 			Project:  pulumi.StringRef(tunnelvm.Project),
/// 			Zone:     pulumi.StringRef(tunnelvm.Zone),
/// 			Instance: tunnelvm.Name,
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
/// import com.pulumi.gcp.iap.IapFunctions;
/// import com.pulumi.gcp.iap.inputs.GetTunnelInstanceIamPolicyArgs;
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
///         final var policy = IapFunctions.getTunnelInstanceIamPolicy(GetTunnelInstanceIamPolicyArgs.builder()
///             .project(tunnelvm.project())
///             .zone(tunnelvm.zone())
///             .instance(tunnelvm.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:iap:getTunnelInstanceIamPolicy
///       arguments:
///         project: ${tunnelvm.project}
///         zone: ${tunnelvm.zone}
///         instance: ${tunnelvm.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_iap_get_tunnel_instance_iam_policy_get_tunnel_instance_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTunnelInstanceIamPolicyResult> getTunnelInstanceIamPolicy(
  GetTunnelInstanceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iap/getTunnelInstanceIamPolicy:getTunnelInstanceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTunnelInstanceIamPolicyResult.fromMap(result);
}

/// Retrieves the current IAM policy data for webbackendservice
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.iap.getWebBackendServiceIamPolicy({
///     project: _default.project,
///     webBackendService: _default.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.iap.get_web_backend_service_iam_policy(project=default["project"],
///     web_backend_service=default["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Iap.GetWebBackendServiceIamPolicy.Invoke(new()
///     {
///         Project = @default.Project,
///         WebBackendService = @default.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iap.LookupWebBackendServiceIamPolicy(ctx, &iap.LookupWebBackendServiceIamPolicyArgs{
/// 			Project:           pulumi.StringRef(_default.Project),
/// 			WebBackendService: _default.Name,
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
/// import com.pulumi.gcp.iap.IapFunctions;
/// import com.pulumi.gcp.iap.inputs.GetWebBackendServiceIamPolicyArgs;
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
///         final var policy = IapFunctions.getWebBackendServiceIamPolicy(GetWebBackendServiceIamPolicyArgs.builder()
///             .project(default_.project())
///             .webBackendService(default_.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:iap:getWebBackendServiceIamPolicy
///       arguments:
///         project: ${default.project}
///         webBackendService: ${default.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_iap_get_web_backend_service_iam_policy_get_web_backend_service_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebBackendServiceIamPolicyResult> getWebBackendServiceIamPolicy(
  GetWebBackendServiceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iap/getWebBackendServiceIamPolicy:getWebBackendServiceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebBackendServiceIamPolicyResult.fromMap(result);
}

/// Retrieves the current IAM policy data for webcloudrunservice
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.iap.getWebCloudRunServiceIamPolicy({
///     project: _default.project,
///     location: _default.location,
///     cloudRunServiceName: _default.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.iap.get_web_cloud_run_service_iam_policy(project=default["project"],
///     location=default["location"],
///     cloud_run_service_name=default["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Iap.GetWebCloudRunServiceIamPolicy.Invoke(new()
///     {
///         Project = @default.Project,
///         Location = @default.Location,
///         CloudRunServiceName = @default.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iap.LookupWebCloudRunServiceIamPolicy(ctx, &iap.LookupWebCloudRunServiceIamPolicyArgs{
/// 			Project:             pulumi.StringRef(_default.Project),
/// 			Location:            pulumi.StringRef(_default.Location),
/// 			CloudRunServiceName: _default.Name,
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
/// import com.pulumi.gcp.iap.IapFunctions;
/// import com.pulumi.gcp.iap.inputs.GetWebCloudRunServiceIamPolicyArgs;
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
///         final var policy = IapFunctions.getWebCloudRunServiceIamPolicy(GetWebCloudRunServiceIamPolicyArgs.builder()
///             .project(default_.project())
///             .location(default_.location())
///             .cloudRunServiceName(default_.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:iap:getWebCloudRunServiceIamPolicy
///       arguments:
///         project: ${default.project}
///         location: ${default.location}
///         cloudRunServiceName: ${default.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_iap_get_web_cloud_run_service_iam_policy_get_web_cloud_run_service_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebCloudRunServiceIamPolicyResult> getWebCloudRunServiceIamPolicy(
  GetWebCloudRunServiceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iap/getWebCloudRunServiceIamPolicy:getWebCloudRunServiceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebCloudRunServiceIamPolicyResult.fromMap(result);
}

/// Retrieves the current IAM policy data for webforwardingruleservice
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.iap.getWebForwardingRuleServiceIamPolicy({
///     project: _default.project,
///     forwardingRuleServiceName: _default.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.iap.get_web_forwarding_rule_service_iam_policy(project=default["project"],
///     forwarding_rule_service_name=default["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Iap.GetWebForwardingRuleServiceIamPolicy.Invoke(new()
///     {
///         Project = @default.Project,
///         ForwardingRuleServiceName = @default.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iap.LookupWebForwardingRuleServiceIamPolicy(ctx, &iap.LookupWebForwardingRuleServiceIamPolicyArgs{
/// 			Project:                   pulumi.StringRef(_default.Project),
/// 			ForwardingRuleServiceName: _default.Name,
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
/// import com.pulumi.gcp.iap.IapFunctions;
/// import com.pulumi.gcp.iap.inputs.GetWebForwardingRuleServiceIamPolicyArgs;
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
///         final var policy = IapFunctions.getWebForwardingRuleServiceIamPolicy(GetWebForwardingRuleServiceIamPolicyArgs.builder()
///             .project(default_.project())
///             .forwardingRuleServiceName(default_.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:iap:getWebForwardingRuleServiceIamPolicy
///       arguments:
///         project: ${default.project}
///         forwardingRuleServiceName: ${default.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_iap_get_web_forwarding_rule_service_iam_policy_get_web_forwarding_rule_service_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebForwardingRuleServiceIamPolicyResult>
getWebForwardingRuleServiceIamPolicy(
  GetWebForwardingRuleServiceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iap/getWebForwardingRuleServiceIamPolicy:getWebForwardingRuleServiceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebForwardingRuleServiceIamPolicyResult.fromMap(result);
}

/// Retrieves the current IAM policy data for web
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.iap.getWebIamPolicy({
///     project: projectService.project,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.iap.get_web_iam_policy(project=project_service["project"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Iap.GetWebIamPolicy.Invoke(new()
///     {
///         Project = projectService.Project,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iap.LookupWebIamPolicy(ctx, &iap.LookupWebIamPolicyArgs{
/// 			Project: pulumi.StringRef(projectService.Project),
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
/// import com.pulumi.gcp.iap.IapFunctions;
/// import com.pulumi.gcp.iap.inputs.GetWebIamPolicyArgs;
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
///         final var policy = IapFunctions.getWebIamPolicy(GetWebIamPolicyArgs.builder()
///             .project(projectService.project())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:iap:getWebIamPolicy
///       arguments:
///         project: ${projectService.project}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_iap_get_web_iam_policy_get_web_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebIamPolicyResult> getWebIamPolicy(
  GetWebIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iap/getWebIamPolicy:getWebIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebIamPolicyResult.fromMap(result);
}

/// Retrieves the current IAM policy data for webregionbackendservice
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.iap.getWebRegionBackendServiceIamPolicy({
///     project: _default.project,
///     region: _default.region,
///     webRegionBackendService: _default.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.iap.get_web_region_backend_service_iam_policy(project=default["project"],
///     region=default["region"],
///     web_region_backend_service=default["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Iap.GetWebRegionBackendServiceIamPolicy.Invoke(new()
///     {
///         Project = @default.Project,
///         Region = @default.Region,
///         WebRegionBackendService = @default.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iap.LookupWebRegionBackendServiceIamPolicy(ctx, &iap.LookupWebRegionBackendServiceIamPolicyArgs{
/// 			Project:                 pulumi.StringRef(_default.Project),
/// 			Region:                  pulumi.StringRef(_default.Region),
/// 			WebRegionBackendService: _default.Name,
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
/// import com.pulumi.gcp.iap.IapFunctions;
/// import com.pulumi.gcp.iap.inputs.GetWebRegionBackendServiceIamPolicyArgs;
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
///         final var policy = IapFunctions.getWebRegionBackendServiceIamPolicy(GetWebRegionBackendServiceIamPolicyArgs.builder()
///             .project(default_.project())
///             .region(default_.region())
///             .webRegionBackendService(default_.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:iap:getWebRegionBackendServiceIamPolicy
///       arguments:
///         project: ${default.project}
///         region: ${default.region}
///         webRegionBackendService: ${default.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_iap_get_web_region_backend_service_iam_policy_get_web_region_backend_service_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebRegionBackendServiceIamPolicyResult>
getWebRegionBackendServiceIamPolicy(
  GetWebRegionBackendServiceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iap/getWebRegionBackendServiceIamPolicy:getWebRegionBackendServiceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebRegionBackendServiceIamPolicyResult.fromMap(result);
}

/// Retrieves the current IAM policy data for webregionforwardingruleservice
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.iap.getWebRegionForwardingRuleServiceIamPolicy({
///     project: _default.project,
///     region: _default.region,
///     forwardingRuleRegionServiceName: _default.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.iap.get_web_region_forwarding_rule_service_iam_policy(project=default["project"],
///     region=default["region"],
///     forwarding_rule_region_service_name=default["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Iap.GetWebRegionForwardingRuleServiceIamPolicy.Invoke(new()
///     {
///         Project = @default.Project,
///         Region = @default.Region,
///         ForwardingRuleRegionServiceName = @default.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iap.LookupWebRegionForwardingRuleServiceIamPolicy(ctx, &iap.LookupWebRegionForwardingRuleServiceIamPolicyArgs{
/// 			Project:                         pulumi.StringRef(_default.Project),
/// 			Region:                          pulumi.StringRef(_default.Region),
/// 			ForwardingRuleRegionServiceName: _default.Name,
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
/// import com.pulumi.gcp.iap.IapFunctions;
/// import com.pulumi.gcp.iap.inputs.GetWebRegionForwardingRuleServiceIamPolicyArgs;
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
///         final var policy = IapFunctions.getWebRegionForwardingRuleServiceIamPolicy(GetWebRegionForwardingRuleServiceIamPolicyArgs.builder()
///             .project(default_.project())
///             .region(default_.region())
///             .forwardingRuleRegionServiceName(default_.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:iap:getWebRegionForwardingRuleServiceIamPolicy
///       arguments:
///         project: ${default.project}
///         region: ${default.region}
///         forwardingRuleRegionServiceName: ${default.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_iap_get_web_region_forwarding_rule_service_iam_policy_get_web_region_forwarding_rule_service_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebRegionForwardingRuleServiceIamPolicyResult>
getWebRegionForwardingRuleServiceIamPolicy(
  GetWebRegionForwardingRuleServiceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iap/getWebRegionForwardingRuleServiceIamPolicy:getWebRegionForwardingRuleServiceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebRegionForwardingRuleServiceIamPolicyResult.fromMap(result);
}

/// Retrieves the current IAM policy data for webtypeappengine
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.iap.getWebTypeAppEngineIamPolicy({
///     project: app.project,
///     appId: app.appId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.iap.get_web_type_app_engine_iam_policy(project=app["project"],
///     app_id=app["appId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Iap.GetWebTypeAppEngineIamPolicy.Invoke(new()
///     {
///         Project = app.Project,
///         AppId = app.AppId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iap.GetWebTypeAppEngineIamPolicy(ctx, &iap.GetWebTypeAppEngineIamPolicyArgs{
/// 			Project: pulumi.StringRef(app.Project),
/// 			AppId:   app.AppId,
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
/// import com.pulumi.gcp.iap.IapFunctions;
/// import com.pulumi.gcp.iap.inputs.GetWebTypeAppEngineIamPolicyArgs;
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
///         final var policy = IapFunctions.getWebTypeAppEngineIamPolicy(GetWebTypeAppEngineIamPolicyArgs.builder()
///             .project(app.project())
///             .appId(app.appId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:iap:getWebTypeAppEngineIamPolicy
///       arguments:
///         project: ${app.project}
///         appId: ${app.appId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_iap_get_web_type_app_engine_iam_policy_get_web_type_app_engine_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebTypeAppEngineIamPolicyResult> getWebTypeAppEngineIamPolicy(
  GetWebTypeAppEngineIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iap/getWebTypeAppEngineIamPolicy:getWebTypeAppEngineIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebTypeAppEngineIamPolicyResult.fromMap(result);
}

/// Retrieves the current IAM policy data for webtypecompute
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.iap.getWebTypeComputeIamPolicy({
///     project: projectService.project,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.iap.get_web_type_compute_iam_policy(project=project_service["project"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Iap.GetWebTypeComputeIamPolicy.Invoke(new()
///     {
///         Project = projectService.Project,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iap.LookupWebTypeComputeIamPolicy(ctx, &iap.LookupWebTypeComputeIamPolicyArgs{
/// 			Project: pulumi.StringRef(projectService.Project),
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
/// import com.pulumi.gcp.iap.IapFunctions;
/// import com.pulumi.gcp.iap.inputs.GetWebTypeComputeIamPolicyArgs;
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
///         final var policy = IapFunctions.getWebTypeComputeIamPolicy(GetWebTypeComputeIamPolicyArgs.builder()
///             .project(projectService.project())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:iap:getWebTypeComputeIamPolicy
///       arguments:
///         project: ${projectService.project}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_iap_get_web_type_compute_iam_policy_get_web_type_compute_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebTypeComputeIamPolicyResult> getWebTypeComputeIamPolicy(
  GetWebTypeComputeIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iap/getWebTypeComputeIamPolicy:getWebTypeComputeIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebTypeComputeIamPolicyResult.fromMap(result);
}
