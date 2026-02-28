import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_access_point_args.dart';
import 'get_access_point_result.dart';
import 'get_access_points_args.dart';
import 'get_access_points_result.dart';
import 'get_file_system_args.dart';
import 'get_file_system_result.dart';
import 'get_mount_target_args.dart';
import 'get_mount_target_result.dart';

/// Provides information about an Elastic File System (EFS) Access Point.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.efs.getAccessPoint({
///     accessPointId: "fsap-12345678",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.efs.get_access_point(access_point_id="fsap-12345678")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.Efs.GetAccessPoint.Invoke(new()
///     {
///         AccessPointId = "fsap-12345678",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/efs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := efs.LookupAccessPoint(ctx, &efs.LookupAccessPointArgs{
/// 			AccessPointId: "fsap-12345678",
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
/// import com.pulumi.aws.efs.EfsFunctions;
/// import com.pulumi.aws.efs.inputs.GetAccessPointArgs;
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
///         final var test = EfsFunctions.getAccessPoint(GetAccessPointArgs.builder()
///             .accessPointId("fsap-12345678")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:efs:getAccessPoint
///       arguments:
///         accessPointId: fsap-12345678
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_efs_get_access_point_get_access_point_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccessPointResult> getAccessPoint(
  GetAccessPointArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:efs/getAccessPoint:getAccessPoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccessPointResult.fromMap(result);
}

/// Provides information about multiple Elastic File System (EFS) Access Points.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.efs.getAccessPoints({
///     fileSystemId: "fs-12345678",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.efs.get_access_points(file_system_id="fs-12345678")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.Efs.GetAccessPoints.Invoke(new()
///     {
///         FileSystemId = "fs-12345678",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/efs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := efs.GetAccessPoints(ctx, &efs.GetAccessPointsArgs{
/// 			FileSystemId: "fs-12345678",
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
/// import com.pulumi.aws.efs.EfsFunctions;
/// import com.pulumi.aws.efs.inputs.GetAccessPointsArgs;
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
///         final var test = EfsFunctions.getAccessPoints(GetAccessPointsArgs.builder()
///             .fileSystemId("fs-12345678")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:efs:getAccessPoints
///       arguments:
///         fileSystemId: fs-12345678
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_efs_get_access_points_get_access_points_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccessPointsResult> getAccessPoints(
  GetAccessPointsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:efs/getAccessPoints:getAccessPoints',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccessPointsResult.fromMap(result);
}

/// Provides information about an Elastic File System (EFS) File System.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const config = new pulumi.Config();
/// const fileSystemId = config.get("fileSystemId") || "";
/// const byId = aws.efs.getFileSystem({
///     fileSystemId: fileSystemId,
/// });
/// const byTag = aws.efs.getFileSystem({
///     tags: {
///         Environment: "dev",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// config = pulumi.Config()
/// file_system_id = config.get("fileSystemId")
/// if file_system_id is None:
///     file_system_id = ""
/// by_id = aws.efs.get_file_system(file_system_id=file_system_id)
/// by_tag = aws.efs.get_file_system(tags={
///     "Environment": "dev",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var fileSystemId = config.Get("fileSystemId") ?? "";
///     var byId = Aws.Efs.GetFileSystem.Invoke(new()
///     {
///         FileSystemId = fileSystemId,
///     });
///
///     var byTag = Aws.Efs.GetFileSystem.Invoke(new()
///     {
///         Tags =
///         {
///             { "Environment", "dev" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/efs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		fileSystemId := ""
/// 		if param := cfg.Get("fileSystemId"); param != "" {
/// 			fileSystemId = param
/// 		}
/// 		_, err := efs.LookupFileSystem(ctx, &efs.LookupFileSystemArgs{
/// 			FileSystemId: pulumi.StringRef(fileSystemId),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = efs.LookupFileSystem(ctx, &efs.LookupFileSystemArgs{
/// 			Tags: map[string]interface{}{
/// 				"Environment": "dev",
/// 			},
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
/// import com.pulumi.aws.efs.EfsFunctions;
/// import com.pulumi.aws.efs.inputs.GetFileSystemArgs;
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
///         final var fileSystemId = config.get("fileSystemId").orElse("");
///         final var byId = EfsFunctions.getFileSystem(GetFileSystemArgs.builder()
///             .fileSystemId(fileSystemId)
///             .build());
///
///         final var byTag = EfsFunctions.getFileSystem(GetFileSystemArgs.builder()
///             .tags(Map.of("Environment", "dev"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   fileSystemId:
///     type: string
///     default: ""
/// variables:
///   byId:
///     fn::invoke:
///       function: aws:efs:getFileSystem
///       arguments:
///         fileSystemId: ${fileSystemId}
///   byTag:
///     fn::invoke:
///       function: aws:efs:getFileSystem
///       arguments:
///         tags:
///           Environment: dev
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_efs_get_file_system_get_file_system_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFileSystemResult> getFileSystem(
  GetFileSystemArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:efs/getFileSystem:getFileSystem',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFileSystemResult.fromMap(result);
}

/// Provides information about an Elastic File System Mount Target (EFS).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const config = new pulumi.Config();
/// const mountTargetId = config.get("mountTargetId") || "";
/// const byId = aws.efs.getMountTarget({
///     mountTargetId: mountTargetId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// config = pulumi.Config()
/// mount_target_id = config.get("mountTargetId")
/// if mount_target_id is None:
///     mount_target_id = ""
/// by_id = aws.efs.get_mount_target(mount_target_id=mount_target_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var mountTargetId = config.Get("mountTargetId") ?? "";
///     var byId = Aws.Efs.GetMountTarget.Invoke(new()
///     {
///         MountTargetId = mountTargetId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/efs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		mountTargetId := ""
/// 		if param := cfg.Get("mountTargetId"); param != "" {
/// 			mountTargetId = param
/// 		}
/// 		_, err := efs.LookupMountTarget(ctx, &efs.LookupMountTargetArgs{
/// 			MountTargetId: pulumi.StringRef(mountTargetId),
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
/// import com.pulumi.aws.efs.EfsFunctions;
/// import com.pulumi.aws.efs.inputs.GetMountTargetArgs;
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
///         final var mountTargetId = config.get("mountTargetId").orElse("");
///         final var byId = EfsFunctions.getMountTarget(GetMountTargetArgs.builder()
///             .mountTargetId(mountTargetId)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   mountTargetId:
///     type: string
///     default: ""
/// variables:
///   byId:
///     fn::invoke:
///       function: aws:efs:getMountTarget
///       arguments:
///         mountTargetId: ${mountTargetId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_efs_get_mount_target_get_mount_target_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMountTargetResult> getMountTarget(
  GetMountTargetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:efs/getMountTarget:getMountTarget',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMountTargetResult.fromMap(result);
}
