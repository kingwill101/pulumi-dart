import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_contacts_rotation_args.dart';
import 'get_contacts_rotation_result.dart';
import 'get_document_args.dart';
import 'get_document_result.dart';
import 'get_instances_args.dart';
import 'get_instances_result.dart';
import 'get_maintenance_windows_args.dart';
import 'get_maintenance_windows_result.dart';
import 'get_parameter_args.dart';
import 'get_parameter_result.dart';
import 'get_parameters_by_path_args.dart';
import 'get_parameters_by_path_result.dart';
import 'get_patch_baseline_args.dart';
import 'get_patch_baseline_result.dart';
import 'get_patch_baselines_args.dart';
import 'get_patch_baselines_result.dart';

/// Provides a Terraform data source for managing a Contacts Rotation in AWS Systems Manager Incident Manager
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
/// const example = aws.ssm.getContactsRotation({
///     arn: "arn:aws:ssm-contacts:us-east-1:012345678910:rotation/example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssm.get_contacts_rotation(arn="arn:aws:ssm-contacts:us-east-1:012345678910:rotation/example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ssm.GetContactsRotation.Invoke(new()
///     {
///         Arn = "arn:aws:ssm-contacts:us-east-1:012345678910:rotation/example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ssm.LookupContactsRotation(ctx, &ssm.LookupContactsRotationArgs{
/// 			Arn: "arn:aws:ssm-contacts:us-east-1:012345678910:rotation/example",
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
/// import com.pulumi.aws.ssm.SsmFunctions;
/// import com.pulumi.aws.ssm.inputs.GetContactsRotationArgs;
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
///         final var example = SsmFunctions.getContactsRotation(GetContactsRotationArgs.builder()
///             .arn("arn:aws:ssm-contacts:us-east-1:012345678910:rotation/example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ssm:getContactsRotation
///       arguments:
///         arn: arn:aws:ssm-contacts:us-east-1:012345678910:rotation/example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ssm_get_contacts_rotation_get_contacts_rotation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetContactsRotationResult> getContactsRotation(
  GetContactsRotationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ssm/getContactsRotation:getContactsRotation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetContactsRotationResult.fromMap(result);
}

/// Gets the contents of the specified Systems Manager document.
///
/// ## Example Usage
///
/// To get the contents of the document owned by AWS.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const foo = aws.ssm.getDocument({
///     name: "AWS-GatherSoftwareInventory",
///     documentFormat: "YAML",
/// });
/// export const content = foo.then(foo => foo.content);
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foo = aws.ssm.get_document(name="AWS-GatherSoftwareInventory",
///     document_format="YAML")
/// pulumi.export("content", foo.content)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = Aws.Ssm.GetDocument.Invoke(new()
///     {
///         Name = "AWS-GatherSoftwareInventory",
///         DocumentFormat = "YAML",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["content"] = foo.Apply(getDocumentResult => getDocumentResult.Content),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		foo, err := ssm.LookupDocument(ctx, &ssm.LookupDocumentArgs{
/// 			Name:           "AWS-GatherSoftwareInventory",
/// 			DocumentFormat: pulumi.StringRef("YAML"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("content", foo.Content)
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
/// import com.pulumi.aws.ssm.SsmFunctions;
/// import com.pulumi.aws.ssm.inputs.GetDocumentArgs;
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
///         final var foo = SsmFunctions.getDocument(GetDocumentArgs.builder()
///             .name("AWS-GatherSoftwareInventory")
///             .documentFormat("YAML")
///             .build());
///
///         ctx.export("content", foo.content());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   foo:
///     fn::invoke:
///       function: aws:ssm:getDocument
///       arguments:
///         name: AWS-GatherSoftwareInventory
///         documentFormat: YAML
/// outputs:
///   content: ${foo.content}
/// ```
///
///
/// To get the contents of the custom document.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.ssm.getDocument({
///     name: testAwsSsmDocument.name,
///     documentFormat: "JSON",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.ssm.get_document(name=test_aws_ssm_document["name"],
///     document_format="JSON")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.Ssm.GetDocument.Invoke(new()
///     {
///         Name = testAwsSsmDocument.Name,
///         DocumentFormat = "JSON",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ssm.LookupDocument(ctx, &ssm.LookupDocumentArgs{
/// 			Name:           testAwsSsmDocument.Name,
/// 			DocumentFormat: pulumi.StringRef("JSON"),
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
/// import com.pulumi.aws.ssm.SsmFunctions;
/// import com.pulumi.aws.ssm.inputs.GetDocumentArgs;
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
///         final var test = SsmFunctions.getDocument(GetDocumentArgs.builder()
///             .name(testAwsSsmDocument.name())
///             .documentFormat("JSON")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:ssm:getDocument
///       arguments:
///         name: ${testAwsSsmDocument.name}
///         documentFormat: JSON
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ssm_get_document_get_document_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDocumentResult> getDocument(
  GetDocumentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ssm/getDocument:getDocument',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDocumentResult.fromMap(result);
}

/// Use this data source to get the instance IDs of SSM managed instances.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ssm.getInstances({
///     filters: [{
///         name: "PlatformTypes",
///         values: ["Linux"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssm.get_instances(filters=[{
///     "name": "PlatformTypes",
///     "values": ["Linux"],
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
///     var example = Aws.Ssm.GetInstances.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Ssm.Inputs.GetInstancesFilterInputArgs
///             {
///                 Name = "PlatformTypes",
///                 Values = new[]
///                 {
///                     "Linux",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ssm.GetInstances(ctx, &ssm.GetInstancesArgs{
/// 			Filters: []ssm.GetInstancesFilter{
/// 				{
/// 					Name: "PlatformTypes",
/// 					Values: []string{
/// 						"Linux",
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ssm.SsmFunctions;
/// import com.pulumi.aws.ssm.inputs.GetInstancesArgs;
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
///         final var example = SsmFunctions.getInstances(GetInstancesArgs.builder()
///             .filters(GetInstancesFilterArgs.builder()
///                 .name("PlatformTypes")
///                 .values("Linux")
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
///       function: aws:ssm:getInstances
///       arguments:
///         filters:
///           - name: PlatformTypes
///             values:
///               - Linux
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ssm_get_instances_get_instances_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstancesResult> getInstances(
  GetInstancesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ssm/getInstances:getInstances',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstancesResult.fromMap(result);
}

/// Use this data source to get the window IDs of SSM maintenance windows.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ssm.getMaintenanceWindows({
///     filters: [{
///         name: "Enabled",
///         values: ["true"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssm.get_maintenance_windows(filters=[{
///     "name": "Enabled",
///     "values": ["true"],
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
///     var example = Aws.Ssm.GetMaintenanceWindows.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Ssm.Inputs.GetMaintenanceWindowsFilterInputArgs
///             {
///                 Name = "Enabled",
///                 Values = new[]
///                 {
///                     "true",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ssm.GetMaintenanceWindows(ctx, &ssm.GetMaintenanceWindowsArgs{
/// 			Filters: []ssm.GetMaintenanceWindowsFilter{
/// 				{
/// 					Name: "Enabled",
/// 					Values: []string{
/// 						"true",
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ssm.SsmFunctions;
/// import com.pulumi.aws.ssm.inputs.GetMaintenanceWindowsArgs;
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
///         final var example = SsmFunctions.getMaintenanceWindows(GetMaintenanceWindowsArgs.builder()
///             .filters(GetMaintenanceWindowsFilterArgs.builder()
///                 .name("Enabled")
///                 .values("true")
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
///       function: aws:ssm:getMaintenanceWindows
///       arguments:
///         filters:
///           - name: Enabled
///             values:
///               - 'true'
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ssm_get_maintenance_windows_get_maintenance_windows_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMaintenanceWindowsResult> getMaintenanceWindows(
  GetMaintenanceWindowsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ssm/getMaintenanceWindows:getMaintenanceWindows',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMaintenanceWindowsResult.fromMap(result);
}

/// Provides an SSM Parameter data source.
///
/// ## Example Usage
///
/// ### Default
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const foo = aws.ssm.getParameter({
///     name: "foo",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foo = aws.ssm.get_parameter(name="foo")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = Aws.Ssm.GetParameter.Invoke(new()
///     {
///         Name = "foo",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ssm.LookupParameter(ctx, &ssm.LookupParameterArgs{
/// 			Name: "foo",
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
/// import com.pulumi.aws.ssm.SsmFunctions;
/// import com.pulumi.aws.ssm.inputs.GetParameterArgs;
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
///         final var foo = SsmFunctions.getParameter(GetParameterArgs.builder()
///             .name("foo")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   foo:
///     fn::invoke:
///       function: aws:ssm:getParameter
///       arguments:
///         name: foo
/// ```
///
///
/// ### With version
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const foo = aws.ssm.getParameter({
///     name: "foo:3",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foo = aws.ssm.get_parameter(name="foo:3")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = Aws.Ssm.GetParameter.Invoke(new()
///     {
///         Name = "foo:3",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ssm.LookupParameter(ctx, &ssm.LookupParameterArgs{
/// 			Name: "foo:3",
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
/// import com.pulumi.aws.ssm.SsmFunctions;
/// import com.pulumi.aws.ssm.inputs.GetParameterArgs;
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
///         final var foo = SsmFunctions.getParameter(GetParameterArgs.builder()
///             .name("foo:3")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   foo:
///     fn::invoke:
///       function: aws:ssm:getParameter
///       arguments:
///         name: foo:3
/// ```
///
///
/// > **Note:** The unencrypted value of a SecureString will be stored in the raw state as plain-text.
/// [args] Arguments passed to this invoke. {@macro pulumi_ssm_get_parameter_get_parameter_args_doc}
/// [options] Invoke options controlling this call.
Future<GetParameterResult> getParameter(
  GetParameterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ssm/getParameter:getParameter',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetParameterResult.fromMap(result);
}

/// Use this data source to get information about one or more System Manager parameters in a specific hierarchy.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ssm.getParametersByPath({
///     path: "/site/newyork/department/",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssm.get_parameters_by_path(path="/site/newyork/department/")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ssm.GetParametersByPath.Invoke(new()
///     {
///         Path = "/site/newyork/department/",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ssm.GetParametersByPath(ctx, &ssm.GetParametersByPathArgs{
/// 			Path: "/site/newyork/department/",
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
/// import com.pulumi.aws.ssm.SsmFunctions;
/// import com.pulumi.aws.ssm.inputs.GetParametersByPathArgs;
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
///         final var example = SsmFunctions.getParametersByPath(GetParametersByPathArgs.builder()
///             .path("/site/newyork/department/")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ssm:getParametersByPath
///       arguments:
///         path: /site/newyork/department/
/// ```
///
///
/// > **Note:** When the `with_decryption` argument is set to `true`, the unencrypted values of `SecureString` parameters will be stored in the raw state as plain-text as per normal Terraform behavior. > **Note:** The data source follows the behavior of the [SSM API](https://docs.aws.amazon.com/sdk-for-go/api/service/ssm/#Parameter) to return a string value, regardless of parameter type. For `StringList` type where the value is returned as a comma-separated string with no spaces between comma, you may use the built-in split function to get values in a list. Example: `split(",", data.aws_ssm_parameter.subnets.value)`
/// [args] Arguments passed to this invoke. {@macro pulumi_ssm_get_parameters_by_path_get_parameters_by_path_args_doc}
/// [options] Invoke options controlling this call.
Future<GetParametersByPathResult> getParametersByPath(
  GetParametersByPathArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ssm/getParametersByPath:getParametersByPath',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetParametersByPathResult.fromMap(result);
}

/// Provides an SSM Patch Baseline data source. Useful if you wish to reuse the default baselines provided.
///
/// ## Example Usage
///
/// To retrieve a baseline provided by AWS:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const centos = aws.ssm.getPatchBaseline({
///     owner: "AWS",
///     namePrefix: "AWS-",
///     operatingSystem: "CENTOS",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// centos = aws.ssm.get_patch_baseline(owner="AWS",
///     name_prefix="AWS-",
///     operating_system="CENTOS")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var centos = Aws.Ssm.GetPatchBaseline.Invoke(new()
///     {
///         Owner = "AWS",
///         NamePrefix = "AWS-",
///         OperatingSystem = "CENTOS",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ssm.LookupPatchBaseline(ctx, &ssm.LookupPatchBaselineArgs{
/// 			Owner:           "AWS",
/// 			NamePrefix:      pulumi.StringRef("AWS-"),
/// 			OperatingSystem: pulumi.StringRef("CENTOS"),
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
/// import com.pulumi.aws.ssm.SsmFunctions;
/// import com.pulumi.aws.ssm.inputs.GetPatchBaselineArgs;
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
///         final var centos = SsmFunctions.getPatchBaseline(GetPatchBaselineArgs.builder()
///             .owner("AWS")
///             .namePrefix("AWS-")
///             .operatingSystem("CENTOS")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   centos:
///     fn::invoke:
///       function: aws:ssm:getPatchBaseline
///       arguments:
///         owner: AWS
///         namePrefix: AWS-
///         operatingSystem: CENTOS
/// ```
///
///
/// To retrieve a baseline on your account:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const defaultCustom = aws.ssm.getPatchBaseline({
///     owner: "Self",
///     namePrefix: "MyCustomBaseline",
///     defaultBaseline: true,
///     operatingSystem: "WINDOWS",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default_custom = aws.ssm.get_patch_baseline(owner="Self",
///     name_prefix="MyCustomBaseline",
///     default_baseline=True,
///     operating_system="WINDOWS")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaultCustom = Aws.Ssm.GetPatchBaseline.Invoke(new()
///     {
///         Owner = "Self",
///         NamePrefix = "MyCustomBaseline",
///         DefaultBaseline = true,
///         OperatingSystem = "WINDOWS",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ssm.LookupPatchBaseline(ctx, &ssm.LookupPatchBaselineArgs{
/// 			Owner:           "Self",
/// 			NamePrefix:      pulumi.StringRef("MyCustomBaseline"),
/// 			DefaultBaseline: pulumi.BoolRef(true),
/// 			OperatingSystem: pulumi.StringRef("WINDOWS"),
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
/// import com.pulumi.aws.ssm.SsmFunctions;
/// import com.pulumi.aws.ssm.inputs.GetPatchBaselineArgs;
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
///         final var defaultCustom = SsmFunctions.getPatchBaseline(GetPatchBaselineArgs.builder()
///             .owner("Self")
///             .namePrefix("MyCustomBaseline")
///             .defaultBaseline(true)
///             .operatingSystem("WINDOWS")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   defaultCustom:
///     fn::invoke:
///       function: aws:ssm:getPatchBaseline
///       arguments:
///         owner: Self
///         namePrefix: MyCustomBaseline
///         defaultBaseline: true
///         operatingSystem: WINDOWS
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ssm_get_patch_baseline_get_patch_baseline_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPatchBaselineResult> getPatchBaseline(
  GetPatchBaselineArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ssm/getPatchBaseline:getPatchBaseline',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPatchBaselineResult.fromMap(result);
}

/// Data source for retrieving AWS SSM (Systems Manager) Patch Baselines.
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
/// const example = aws.ssm.getPatchBaselines({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssm.get_patch_baselines()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ssm.GetPatchBaselines.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ssm.GetPatchBaselines(ctx, &ssm.GetPatchBaselinesArgs{}, nil)
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
/// import com.pulumi.aws.ssm.SsmFunctions;
/// import com.pulumi.aws.ssm.inputs.GetPatchBaselinesArgs;
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
///         final var example = SsmFunctions.getPatchBaselines(GetPatchBaselinesArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ssm:getPatchBaselines
///       arguments: {}
/// ```
///
///
/// ### With Filters
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ssm.getPatchBaselines({
///     filters: [
///         {
///             key: "OWNER",
///             values: ["AWS"],
///         },
///         {
///             key: "OPERATING_SYSTEM",
///             values: ["WINDOWS"],
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssm.get_patch_baselines(filters=[
///     {
///         "key": "OWNER",
///         "values": ["AWS"],
///     },
///     {
///         "key": "OPERATING_SYSTEM",
///         "values": ["WINDOWS"],
///     },
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ssm.GetPatchBaselines.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Ssm.Inputs.GetPatchBaselinesFilterInputArgs
///             {
///                 Key = "OWNER",
///                 Values = new[]
///                 {
///                     "AWS",
///                 },
///             },
///             new Aws.Ssm.Inputs.GetPatchBaselinesFilterInputArgs
///             {
///                 Key = "OPERATING_SYSTEM",
///                 Values = new[]
///                 {
///                     "WINDOWS",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ssm.GetPatchBaselines(ctx, &ssm.GetPatchBaselinesArgs{
/// 			Filters: []ssm.GetPatchBaselinesFilter{
/// 				{
/// 					Key: "OWNER",
/// 					Values: []string{
/// 						"AWS",
/// 					},
/// 				},
/// 				{
/// 					Key: "OPERATING_SYSTEM",
/// 					Values: []string{
/// 						"WINDOWS",
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ssm.SsmFunctions;
/// import com.pulumi.aws.ssm.inputs.GetPatchBaselinesArgs;
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
///         final var example = SsmFunctions.getPatchBaselines(GetPatchBaselinesArgs.builder()
///             .filters(
///                 GetPatchBaselinesFilterArgs.builder()
///                     .key("OWNER")
///                     .values("AWS")
///                     .build(),
///                 GetPatchBaselinesFilterArgs.builder()
///                     .key("OPERATING_SYSTEM")
///                     .values("WINDOWS")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ssm:getPatchBaselines
///       arguments:
///         filters:
///           - key: OWNER
///             values:
///               - AWS
///           - key: OPERATING_SYSTEM
///             values:
///               - WINDOWS
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ssm_get_patch_baselines_get_patch_baselines_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPatchBaselinesResult> getPatchBaselines(
  GetPatchBaselinesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ssm/getPatchBaselines:getPatchBaselines',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPatchBaselinesResult.fromMap(result);
}
