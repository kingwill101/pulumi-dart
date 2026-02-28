import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_default_scraper_configuration_args.dart';
import 'get_default_scraper_configuration_result.dart';
import 'get_workspace_args.dart';
import 'get_workspace_result.dart';
import 'get_workspaces_args.dart';
import 'get_workspaces_result.dart';

/// Returns the default scraper configuration used when Amazon EKS creates a scraper for you.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.amp.getDefaultScraperConfiguration({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.amp.get_default_scraper_configuration()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Amp.GetDefaultScraperConfiguration.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/amp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := amp.GetDefaultScraperConfiguration(ctx, &amp.GetDefaultScraperConfigurationArgs{}, nil)
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
/// import com.pulumi.aws.amp.AmpFunctions;
/// import com.pulumi.aws.amp.inputs.GetDefaultScraperConfigurationArgs;
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
///         final var example = AmpFunctions.getDefaultScraperConfiguration(GetDefaultScraperConfigurationArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:amp:getDefaultScraperConfiguration
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_amp_get_default_scraper_configuration_get_default_scraper_configuration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDefaultScraperConfigurationResult> getDefaultScraperConfiguration(
  GetDefaultScraperConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:amp/getDefaultScraperConfiguration:getDefaultScraperConfiguration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDefaultScraperConfigurationResult.fromMap(result);
}

/// Provides an Amazon Managed Prometheus workspace data source.
///
/// ## Example Usage
///
/// ### Basic configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.amp.getWorkspace({
///     workspaceId: "ws-41det8a1-2c67-6a1a-9381-9b83d3d78ef7",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.amp.get_workspace(workspace_id="ws-41det8a1-2c67-6a1a-9381-9b83d3d78ef7")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Amp.GetWorkspace.Invoke(new()
///     {
///         WorkspaceId = "ws-41det8a1-2c67-6a1a-9381-9b83d3d78ef7",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/amp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := amp.LookupWorkspace(ctx, &amp.LookupWorkspaceArgs{
/// 			WorkspaceId: "ws-41det8a1-2c67-6a1a-9381-9b83d3d78ef7",
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
/// import com.pulumi.aws.amp.AmpFunctions;
/// import com.pulumi.aws.amp.inputs.GetWorkspaceArgs;
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
///         final var example = AmpFunctions.getWorkspace(GetWorkspaceArgs.builder()
///             .workspaceId("ws-41det8a1-2c67-6a1a-9381-9b83d3d78ef7")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:amp:getWorkspace
///       arguments:
///         workspaceId: ws-41det8a1-2c67-6a1a-9381-9b83d3d78ef7
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_amp_get_workspace_get_workspace_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspaceResult> getWorkspace(
  GetWorkspaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:amp/getWorkspace:getWorkspace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkspaceResult.fromMap(result);
}

/// Provides the aliases, ARNs, and workspace IDs of Amazon Prometheus workspaces.
///
/// ## Example Usage
///
/// The following example returns all of the workspaces in a region:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.amp.getWorkspaces({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.amp.get_workspaces()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Amp.GetWorkspaces.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/amp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := amp.GetWorkspaces(ctx, &amp.GetWorkspacesArgs{}, nil)
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
/// import com.pulumi.aws.amp.AmpFunctions;
/// import com.pulumi.aws.amp.inputs.GetWorkspacesArgs;
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
///         final var example = AmpFunctions.getWorkspaces(GetWorkspacesArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:amp:getWorkspaces
///       arguments: {}
/// ```
///
///
/// The following example filters the workspaces by alias. Only the workspaces with
/// aliases that begin with the value of `alias_prefix` will be returned:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.amp.getWorkspaces({
///     aliasPrefix: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.amp.get_workspaces(alias_prefix="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Amp.GetWorkspaces.Invoke(new()
///     {
///         AliasPrefix = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/amp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := amp.GetWorkspaces(ctx, &amp.GetWorkspacesArgs{
/// 			AliasPrefix: pulumi.StringRef("example"),
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
/// import com.pulumi.aws.amp.AmpFunctions;
/// import com.pulumi.aws.amp.inputs.GetWorkspacesArgs;
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
///         final var example = AmpFunctions.getWorkspaces(GetWorkspacesArgs.builder()
///             .aliasPrefix("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:amp:getWorkspaces
///       arguments:
///         aliasPrefix: example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_amp_get_workspaces_get_workspaces_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspacesResult> getWorkspaces(
  GetWorkspacesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:amp/getWorkspaces:getWorkspaces',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkspacesResult.fromMap(result);
}
