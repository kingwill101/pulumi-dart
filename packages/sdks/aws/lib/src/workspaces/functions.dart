import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bundle_args.dart';
import 'get_bundle_result.dart';
import 'get_directory_args.dart';
import 'get_directory_result.dart';
import 'get_image_args.dart';
import 'get_image_result.dart';
import 'get_workspace_args.dart';
import 'get_workspace_result.dart';

/// Retrieve information about an AWS WorkSpaces bundle.
///
/// ## Example Usage
///
/// ### By ID
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.workspaces.getBundle({
///     bundleId: "wsb-b0s22j3d7",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.workspaces.get_bundle(bundle_id="wsb-b0s22j3d7")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Workspaces.GetBundle.Invoke(new()
///     {
///         BundleId = "wsb-b0s22j3d7",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/workspaces"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workspaces.GetBundle(ctx, &workspaces.GetBundleArgs{
/// 			BundleId: pulumi.StringRef("wsb-b0s22j3d7"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_workspaces_getbundle" "example" {
///   bundle_id = "wsb-b0s22j3d7"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.workspaces.WorkspacesFunctions;
/// import com.pulumi.aws.workspaces.inputs.GetBundleArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         final var example = WorkspacesFunctions.getBundle(GetBundleArgs.builder()
///             .bundleId("wsb-b0s22j3d7")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:workspaces:getBundle
///       arguments:
///         bundleId: wsb-b0s22j3d7
/// ```
///
///
/// ### By Owner & Name
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.workspaces.getBundle({
///     owner: "AMAZON",
///     name: "Value with Windows 10 and Office 2016",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.workspaces.get_bundle(owner="AMAZON",
///     name="Value with Windows 10 and Office 2016")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Workspaces.GetBundle.Invoke(new()
///     {
///         Owner = "AMAZON",
///         Name = "Value with Windows 10 and Office 2016",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/workspaces"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workspaces.GetBundle(ctx, &workspaces.GetBundleArgs{
/// 			Owner: pulumi.StringRef("AMAZON"),
/// 			Name:  pulumi.StringRef("Value with Windows 10 and Office 2016"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_workspaces_getbundle" "example" {
///   owner = "AMAZON"
///   name  = "Value with Windows 10 and Office 2016"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.workspaces.WorkspacesFunctions;
/// import com.pulumi.aws.workspaces.inputs.GetBundleArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         final var example = WorkspacesFunctions.getBundle(GetBundleArgs.builder()
///             .owner("AMAZON")
///             .name("Value with Windows 10 and Office 2016")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:workspaces:getBundle
///       arguments:
///         owner: AMAZON
///         name: Value with Windows 10 and Office 2016
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_workspaces_get_bundle_get_bundle_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBundleResult> getBundle(
  GetBundleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:workspaces/getBundle:getBundle',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBundleResult.fromMap(result);
}

/// Retrieve information about an AWS WorkSpaces directory.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.workspaces.getDirectory({
///     directoryId: "d-9067783251",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.workspaces.get_directory(directory_id="d-9067783251")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Workspaces.GetDirectory.Invoke(new()
///     {
///         DirectoryId = "d-9067783251",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/workspaces"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workspaces.LookupDirectory(ctx, &workspaces.LookupDirectoryArgs{
/// 			DirectoryId: "d-9067783251",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_workspaces_getdirectory" "example" {
///   directory_id = "d-9067783251"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.workspaces.WorkspacesFunctions;
/// import com.pulumi.aws.workspaces.inputs.GetDirectoryArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         final var example = WorkspacesFunctions.getDirectory(GetDirectoryArgs.builder()
///             .directoryId("d-9067783251")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:workspaces:getDirectory
///       arguments:
///         directoryId: d-9067783251
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_workspaces_get_directory_get_directory_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDirectoryResult> getDirectory(
  GetDirectoryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:workspaces/getDirectory:getDirectory',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDirectoryResult.fromMap(result);
}

/// Use this data source to get information about a Workspaces image.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.workspaces.getImage({
///     imageId: "wsi-ten5h0y19",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.workspaces.get_image(image_id="wsi-ten5h0y19")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Workspaces.GetImage.Invoke(new()
///     {
///         ImageId = "wsi-ten5h0y19",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/workspaces"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workspaces.GetImage(ctx, &workspaces.GetImageArgs{
/// 			ImageId: "wsi-ten5h0y19",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_workspaces_getimage" "example" {
///   image_id = "wsi-ten5h0y19"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.workspaces.WorkspacesFunctions;
/// import com.pulumi.aws.workspaces.inputs.GetImageArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         final var example = WorkspacesFunctions.getImage(GetImageArgs.builder()
///             .imageId("wsi-ten5h0y19")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:workspaces:getImage
///       arguments:
///         imageId: wsi-ten5h0y19
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_workspaces_get_image_get_image_args_doc}
/// [options] Invoke options controlling this call.
Future<GetImageResult> getImage(
  GetImageArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:workspaces/getImage:getImage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetImageResult.fromMap(result);
}

/// Use this data source to get information about a workspace in [AWS Workspaces](https://docs.aws.amazon.com/workspaces/latest/adminguide/amazon-workspaces.html) Service.
///
/// ## Example Usage
///
/// ### Filter By Workspace ID
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.workspaces.getWorkspace({
///     workspaceId: "ws-cj5xcxsz5",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.workspaces.get_workspace(workspace_id="ws-cj5xcxsz5")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Workspaces.GetWorkspace.Invoke(new()
///     {
///         WorkspaceId = "ws-cj5xcxsz5",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/workspaces"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workspaces.LookupWorkspace(ctx, &workspaces.LookupWorkspaceArgs{
/// 			WorkspaceId: pulumi.StringRef("ws-cj5xcxsz5"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_workspaces_getworkspace" "example" {
///   workspace_id = "ws-cj5xcxsz5"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.workspaces.WorkspacesFunctions;
/// import com.pulumi.aws.workspaces.inputs.GetWorkspaceArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         final var example = WorkspacesFunctions.getWorkspace(GetWorkspaceArgs.builder()
///             .workspaceId("ws-cj5xcxsz5")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:workspaces:getWorkspace
///       arguments:
///         workspaceId: ws-cj5xcxsz5
/// ```
///
///
/// ### Filter By Directory ID & User Name
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.workspaces.getWorkspace({
///     directoryId: "d-9967252f57",
///     userName: "Example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.workspaces.get_workspace(directory_id="d-9967252f57",
///     user_name="Example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Workspaces.GetWorkspace.Invoke(new()
///     {
///         DirectoryId = "d-9967252f57",
///         UserName = "Example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/workspaces"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workspaces.LookupWorkspace(ctx, &workspaces.LookupWorkspaceArgs{
/// 			DirectoryId: pulumi.StringRef("d-9967252f57"),
/// 			UserName:    pulumi.StringRef("Example"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_workspaces_getworkspace" "example" {
///   directory_id = "d-9967252f57"
///   user_name    = "Example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.workspaces.WorkspacesFunctions;
/// import com.pulumi.aws.workspaces.inputs.GetWorkspaceArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         final var example = WorkspacesFunctions.getWorkspace(GetWorkspaceArgs.builder()
///             .directoryId("d-9967252f57")
///             .userName("Example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:workspaces:getWorkspace
///       arguments:
///         directoryId: d-9967252f57
///         userName: Example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_workspaces_get_workspace_get_workspace_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspaceResult> getWorkspace(
  GetWorkspaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:workspaces/getWorkspace:getWorkspace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkspaceResult.fromMap(result);
}
