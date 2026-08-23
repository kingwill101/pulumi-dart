import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ontap_file_system_args.dart';
import 'get_ontap_file_system_result.dart';
import 'get_ontap_storage_virtual_machine_args.dart';
import 'get_ontap_storage_virtual_machine_result.dart';
import 'get_ontap_storage_virtual_machines_args.dart';
import 'get_ontap_storage_virtual_machines_result.dart';
import 'get_open_zfs_snapshot_args.dart';
import 'get_open_zfs_snapshot_result.dart';
import 'get_windows_file_system_args.dart';
import 'get_windows_file_system_result.dart';

/// Retrieve information on FSx ONTAP File System.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.fsx.getOntapFileSystem({
///     id: "fs-12345678",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.fsx.get_ontap_file_system(id="fs-12345678")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Fsx.GetOntapFileSystem.Invoke(new()
///     {
///         Id = "fs-12345678",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/fsx"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := fsx.LookupOntapFileSystem(ctx, &fsx.LookupOntapFileSystemArgs{
/// 			Id: "fs-12345678",
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
/// data "aws_fsx_getontapfilesystem" "example" {
///   id = "fs-12345678"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.fsx.FsxFunctions;
/// import com.pulumi.aws.fsx.inputs.GetOntapFileSystemArgs;
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
///         final var example = FsxFunctions.getOntapFileSystem(GetOntapFileSystemArgs.builder()
///             .id("fs-12345678")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:fsx:getOntapFileSystem
///       arguments:
///         id: fs-12345678
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_fsx_get_ontap_file_system_get_ontap_file_system_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOntapFileSystemResult> getOntapFileSystem(
  GetOntapFileSystemArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:fsx/getOntapFileSystem:getOntapFileSystem',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOntapFileSystemResult.fromMap(result);
}

/// Retrieve information on FSx ONTAP Storage Virtual Machine (SVM).
///
/// The arguments of this data source act as filters for querying the available ONTAP Storage Virtual Machines in the current region. The given filters must match exactly one Storage Virtual Machine whose data will be exported as attributes.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.fsx.getOntapStorageVirtualMachine({
///     id: "svm-12345678",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.fsx.get_ontap_storage_virtual_machine(id="svm-12345678")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Fsx.GetOntapStorageVirtualMachine.Invoke(new()
///     {
///         Id = "svm-12345678",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/fsx"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := fsx.LookupOntapStorageVirtualMachine(ctx, &fsx.LookupOntapStorageVirtualMachineArgs{
/// 			Id: pulumi.StringRef("svm-12345678"),
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
/// data "aws_fsx_getontapstoragevirtualmachine" "example" {
///   id = "svm-12345678"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.fsx.FsxFunctions;
/// import com.pulumi.aws.fsx.inputs.GetOntapStorageVirtualMachineArgs;
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
///         final var example = FsxFunctions.getOntapStorageVirtualMachine(GetOntapStorageVirtualMachineArgs.builder()
///             .id("svm-12345678")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:fsx:getOntapStorageVirtualMachine
///       arguments:
///         id: svm-12345678
/// ```
///
///
/// ### Filter Example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.fsx.getOntapStorageVirtualMachine({
///     filters: [{
///         name: "file-system-id",
///         values: ["fs-12345678"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.fsx.get_ontap_storage_virtual_machine(filters=[{
///     "name": "file-system-id",
///     "values": ["fs-12345678"],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Fsx.GetOntapStorageVirtualMachine.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Fsx.Inputs.GetOntapStorageVirtualMachineFilterInputArgs
///             {
///                 Name = "file-system-id",
///                 Values = new[]
///                 {
///                     "fs-12345678",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/fsx"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := fsx.LookupOntapStorageVirtualMachine(ctx, &fsx.LookupOntapStorageVirtualMachineArgs{
/// 			Filters: []fsx.GetOntapStorageVirtualMachineFilter{
/// 				{
/// 					Name: "file-system-id",
/// 					Values: []string{
/// 						"fs-12345678",
/// 					},
/// 				},
/// 			},
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
/// data "aws_fsx_getontapstoragevirtualmachine" "example" {
///   filters {
///     name   = "file-system-id"
///     values = ["fs-12345678"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.fsx.FsxFunctions;
/// import com.pulumi.aws.fsx.inputs.GetOntapStorageVirtualMachineArgs;
/// import com.pulumi.aws.fsx.inputs.GetOntapStorageVirtualMachineFilterArgs;
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
///         final var example = FsxFunctions.getOntapStorageVirtualMachine(GetOntapStorageVirtualMachineArgs.builder()
///             .filters(GetOntapStorageVirtualMachineFilterArgs.builder()
///                 .name("file-system-id")
///                 .values("fs-12345678")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:fsx:getOntapStorageVirtualMachine
///       arguments:
///         filters:
///           - name: file-system-id
///             values:
///               - fs-12345678
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_fsx_get_ontap_storage_virtual_machine_get_ontap_storage_virtual_machine_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOntapStorageVirtualMachineResult> getOntapStorageVirtualMachine(
  GetOntapStorageVirtualMachineArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:fsx/getOntapStorageVirtualMachine:getOntapStorageVirtualMachine',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOntapStorageVirtualMachineResult.fromMap(result);
}

/// This resource can be useful for getting back a set of FSx ONTAP Storage Virtual Machine (SVM) IDs.
///
/// ## Example Usage
///
/// The following shows outputting all SVM IDs for a given FSx ONTAP File System.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.fsx.getOntapStorageVirtualMachines({
///     filters: [{
///         name: "file-system-id",
///         values: ["fs-12345678"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.fsx.get_ontap_storage_virtual_machines(filters=[{
///     "name": "file-system-id",
///     "values": ["fs-12345678"],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Fsx.GetOntapStorageVirtualMachines.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Fsx.Inputs.GetOntapStorageVirtualMachinesFilterInputArgs
///             {
///                 Name = "file-system-id",
///                 Values = new[]
///                 {
///                     "fs-12345678",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/fsx"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := fsx.GetOntapStorageVirtualMachines(ctx, &fsx.GetOntapStorageVirtualMachinesArgs{
/// 			Filters: []fsx.GetOntapStorageVirtualMachinesFilter{
/// 				{
/// 					Name: "file-system-id",
/// 					Values: []string{
/// 						"fs-12345678",
/// 					},
/// 				},
/// 			},
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
/// data "aws_fsx_getontapstoragevirtualmachines" "example" {
///   filters {
///     name   = "file-system-id"
///     values = ["fs-12345678"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.fsx.FsxFunctions;
/// import com.pulumi.aws.fsx.inputs.GetOntapStorageVirtualMachinesArgs;
/// import com.pulumi.aws.fsx.inputs.GetOntapStorageVirtualMachinesFilterArgs;
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
///         final var example = FsxFunctions.getOntapStorageVirtualMachines(GetOntapStorageVirtualMachinesArgs.builder()
///             .filters(GetOntapStorageVirtualMachinesFilterArgs.builder()
///                 .name("file-system-id")
///                 .values("fs-12345678")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:fsx:getOntapStorageVirtualMachines
///       arguments:
///         filters:
///           - name: file-system-id
///             values:
///               - fs-12345678
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_fsx_get_ontap_storage_virtual_machines_get_ontap_storage_virtual_machines_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOntapStorageVirtualMachinesResult> getOntapStorageVirtualMachines(
  GetOntapStorageVirtualMachinesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:fsx/getOntapStorageVirtualMachines:getOntapStorageVirtualMachines',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOntapStorageVirtualMachinesResult.fromMap(result);
}

/// Use this data source to get information about an Amazon FSx for OpenZFS Snapshot for use when provisioning new Volumes.
///
/// ## Example Usage
///
/// ### Root volume Example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.fsx.getOpenZfsSnapshot({
///     mostRecent: true,
///     filters: [{
///         name: "volume-id",
///         values: ["fsvol-073a32b6098a73feb"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.fsx.get_open_zfs_snapshot(most_recent=True,
///     filters=[{
///         "name": "volume-id",
///         "values": ["fsvol-073a32b6098a73feb"],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Fsx.GetOpenZfsSnapshot.Invoke(new()
///     {
///         MostRecent = true,
///         Filters = new[]
///         {
///             new Aws.Fsx.Inputs.GetOpenZfsSnapshotFilterInputArgs
///             {
///                 Name = "volume-id",
///                 Values = new[]
///                 {
///                     "fsvol-073a32b6098a73feb",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/fsx"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := fsx.LookupOpenZfsSnapshot(ctx, &fsx.LookupOpenZfsSnapshotArgs{
/// 			MostRecent: pulumi.BoolRef(true),
/// 			Filters: []fsx.GetOpenZfsSnapshotFilter{
/// 				{
/// 					Name: "volume-id",
/// 					Values: []string{
/// 						"fsvol-073a32b6098a73feb",
/// 					},
/// 				},
/// 			},
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
/// data "aws_fsx_getopenzfssnapshot" "example" {
///   most_recent = true
///   filters {
///     name   = "volume-id"
///     values = ["fsvol-073a32b6098a73feb"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.fsx.FsxFunctions;
/// import com.pulumi.aws.fsx.inputs.GetOpenZfsSnapshotArgs;
/// import com.pulumi.aws.fsx.inputs.GetOpenZfsSnapshotFilterArgs;
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
///         final var example = FsxFunctions.getOpenZfsSnapshot(GetOpenZfsSnapshotArgs.builder()
///             .mostRecent(true)
///             .filters(GetOpenZfsSnapshotFilterArgs.builder()
///                 .name("volume-id")
///                 .values("fsvol-073a32b6098a73feb")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:fsx:getOpenZfsSnapshot
///       arguments:
///         mostRecent: true
///         filters:
///           - name: volume-id
///             values:
///               - fsvol-073a32b6098a73feb
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_fsx_get_open_zfs_snapshot_get_open_zfs_snapshot_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOpenZfsSnapshotResult> getOpenZfsSnapshot(
  GetOpenZfsSnapshotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:fsx/getOpenZfsSnapshot:getOpenZfsSnapshot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOpenZfsSnapshotResult.fromMap(result);
}

/// Retrieve information on FSx Windows File System.
///
/// ## Example Usage
///
/// ### Root volume Example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.fsx.getWindowsFileSystem({
///     id: "fs-12345678",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.fsx.get_windows_file_system(id="fs-12345678")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Fsx.GetWindowsFileSystem.Invoke(new()
///     {
///         Id = "fs-12345678",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/fsx"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := fsx.LookupWindowsFileSystem(ctx, &fsx.LookupWindowsFileSystemArgs{
/// 			Id: "fs-12345678",
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
/// data "aws_fsx_getwindowsfilesystem" "example" {
///   id = "fs-12345678"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.fsx.FsxFunctions;
/// import com.pulumi.aws.fsx.inputs.GetWindowsFileSystemArgs;
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
///         final var example = FsxFunctions.getWindowsFileSystem(GetWindowsFileSystemArgs.builder()
///             .id("fs-12345678")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:fsx:getWindowsFileSystem
///       arguments:
///         id: fs-12345678
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_fsx_get_windows_file_system_get_windows_file_system_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWindowsFileSystemResult> getWindowsFileSystem(
  GetWindowsFileSystemArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:fsx/getWindowsFileSystem:getWindowsFileSystem',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWindowsFileSystemResult.fromMap(result);
}
