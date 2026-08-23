import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_credentials_args.dart';
import 'get_credentials_result.dart';
import 'get_namespace_args.dart';
import 'get_namespace_result.dart';
import 'get_workgroup_args.dart';
import 'get_workgroup_result.dart';

/// Provides redshift serverless temporary credentials for a workgroup.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.redshiftserverless.getCredentials({
///     workgroupName: exampleAwsRedshiftserverlessWorkgroup.workgroupName,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.redshiftserverless.get_credentials(workgroup_name=example_aws_redshiftserverless_workgroup["workgroupName"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.RedshiftServerless.GetCredentials.Invoke(new()
///     {
///         WorkgroupName = exampleAwsRedshiftserverlessWorkgroup.WorkgroupName,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshiftserverless"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := redshiftserverless.GetCredentials(ctx, &redshiftserverless.GetCredentialsArgs{
/// 			WorkgroupName: exampleAwsRedshiftserverlessWorkgroup.WorkgroupName,
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
/// data "aws_redshiftserverless_getcredentials" "example" {
///   workgroup_name = exampleAwsRedshiftserverlessWorkgroup.workgroupName
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.redshiftserverless.RedshiftserverlessFunctions;
/// import com.pulumi.aws.redshiftserverless.inputs.GetCredentialsArgs;
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
///         final var example = RedshiftserverlessFunctions.getCredentials(GetCredentialsArgs.builder()
///             .workgroupName(exampleAwsRedshiftserverlessWorkgroup.workgroupName())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:redshiftserverless:getCredentials
///       arguments:
///         workgroupName: ${exampleAwsRedshiftserverlessWorkgroup.workgroupName}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_redshiftserverless_get_credentials_get_credentials_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCredentialsResult> getCredentials(
  GetCredentialsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:redshiftserverless/getCredentials:getCredentials',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCredentialsResult.fromMap(result);
}

/// Data source for managing an AWS Redshift Serverless Namespace.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.redshiftserverless.getNamespace({
///     namespaceName: "example-namespace",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.redshiftserverless.get_namespace(namespace_name="example-namespace")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.RedshiftServerless.GetNamespace.Invoke(new()
///     {
///         NamespaceName = "example-namespace",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshiftserverless"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := redshiftserverless.LookupNamespace(ctx, &redshiftserverless.LookupNamespaceArgs{
/// 			NamespaceName: "example-namespace",
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
/// data "aws_redshiftserverless_getnamespace" "example" {
///   namespace_name = "example-namespace"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.redshiftserverless.RedshiftserverlessFunctions;
/// import com.pulumi.aws.redshiftserverless.inputs.GetNamespaceArgs;
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
///         final var example = RedshiftserverlessFunctions.getNamespace(GetNamespaceArgs.builder()
///             .namespaceName("example-namespace")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:redshiftserverless:getNamespace
///       arguments:
///         namespaceName: example-namespace
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_redshiftserverless_get_namespace_get_namespace_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNamespaceResult> getNamespace(
  GetNamespaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:redshiftserverless/getNamespace:getNamespace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNamespaceResult.fromMap(result);
}

/// Data source for managing an AWS Redshift Serverless Workgroup.
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
/// const example = aws.redshiftserverless.getWorkgroup({
///     workgroupName: exampleAwsRedshiftserverlessWorkgroup.workgroupName,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.redshiftserverless.get_workgroup(workgroup_name=example_aws_redshiftserverless_workgroup["workgroupName"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.RedshiftServerless.GetWorkgroup.Invoke(new()
///     {
///         WorkgroupName = exampleAwsRedshiftserverlessWorkgroup.WorkgroupName,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshiftserverless"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := redshiftserverless.LookupWorkgroup(ctx, &redshiftserverless.LookupWorkgroupArgs{
/// 			WorkgroupName: exampleAwsRedshiftserverlessWorkgroup.WorkgroupName,
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
/// data "aws_redshiftserverless_getworkgroup" "example" {
///   workgroup_name = exampleAwsRedshiftserverlessWorkgroup.workgroupName
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.redshiftserverless.RedshiftserverlessFunctions;
/// import com.pulumi.aws.redshiftserverless.inputs.GetWorkgroupArgs;
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
///         final var example = RedshiftserverlessFunctions.getWorkgroup(GetWorkgroupArgs.builder()
///             .workgroupName(exampleAwsRedshiftserverlessWorkgroup.workgroupName())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:redshiftserverless:getWorkgroup
///       arguments:
///         workgroupName: ${exampleAwsRedshiftserverlessWorkgroup.workgroupName}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_redshiftserverless_get_workgroup_get_workgroup_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkgroupResult> getWorkgroup(
  GetWorkgroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:redshiftserverless/getWorkgroup:getWorkgroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkgroupResult.fromMap(result);
}
