import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_domain_args.dart';
import 'get_domain_result.dart';
import 'get_environment_blueprint_args.dart';
import 'get_environment_blueprint_result.dart';

/// Data source for managing an AWS DataZone Domain.
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
/// const example = aws.datazone.getDomain({
///     name: "example_domain",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.datazone.get_domain(name="example_domain")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.DataZone.GetDomain.Invoke(new()
///     {
///         Name = "example_domain",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/datazone"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datazone.LookupDomain(ctx, &datazone.LookupDomainArgs{
/// 			Name: pulumi.StringRef("example_domain"),
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
/// import com.pulumi.aws.datazone.DatazoneFunctions;
/// import com.pulumi.aws.datazone.inputs.GetDomainArgs;
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
///         final var example = DatazoneFunctions.getDomain(GetDomainArgs.builder()
///             .name("example_domain")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:datazone:getDomain
///       arguments:
///         name: example_domain
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_datazone_get_domain_get_domain_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDomainResult> getDomain(
  GetDomainArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:datazone/getDomain:getDomain',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainResult.fromMap(result);
}

/// Data source for managing an AWS DataZone Environment Blueprint.
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
/// const exampleDomain = new aws.datazone.Domain("example", {
///     name: "example_domain",
///     domainExecutionRole: domainExecutionRole.arn,
/// });
/// const example = aws.datazone.getEnvironmentBlueprintOutput({
///     domainId: exampleDomain.id,
///     name: "DefaultDataLake",
///     managed: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_domain = aws.datazone.Domain("example",
///     name="example_domain",
///     domain_execution_role=domain_execution_role["arn"])
/// example = aws.datazone.get_environment_blueprint_output(domain_id=example_domain.id,
///     name="DefaultDataLake",
///     managed=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleDomain = new Aws.DataZone.Domain("example", new()
///     {
///         Name = "example_domain",
///         DomainExecutionRole = domainExecutionRole.Arn,
///     });
///
///     var example = Aws.DataZone.GetEnvironmentBlueprint.Invoke(new()
///     {
///         DomainId = exampleDomain.Id,
///         Name = "DefaultDataLake",
///         Managed = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/datazone"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleDomain, err := datazone.NewDomain(ctx, "example", &datazone.DomainArgs{
/// 			Name:                pulumi.String("example_domain"),
/// 			DomainExecutionRole: pulumi.Any(domainExecutionRole.Arn),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_ = datazone.GetEnvironmentBlueprintOutput(ctx, datazone.GetEnvironmentBlueprintOutputArgs{
/// 			DomainId: exampleDomain.ID(),
/// 			Name:     pulumi.String("DefaultDataLake"),
/// 			Managed:  pulumi.Bool(true),
/// 		}, nil)
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
/// import com.pulumi.aws.datazone.Domain;
/// import com.pulumi.aws.datazone.DomainArgs;
/// import com.pulumi.aws.datazone.DatazoneFunctions;
/// import com.pulumi.aws.datazone.inputs.GetEnvironmentBlueprintArgs;
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
///         var exampleDomain = new Domain("exampleDomain", DomainArgs.builder()
///             .name("example_domain")
///             .domainExecutionRole(domainExecutionRole.arn())
///             .build());
///
///         final var example = DatazoneFunctions.getEnvironmentBlueprint(GetEnvironmentBlueprintArgs.builder()
///             .domainId(exampleDomain.id())
///             .name("DefaultDataLake")
///             .managed(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleDomain:
///     type: aws:datazone:Domain
///     name: example
///     properties:
///       name: example_domain
///       domainExecutionRole: ${domainExecutionRole.arn}
/// variables:
///   example:
///     fn::invoke:
///       function: aws:datazone:getEnvironmentBlueprint
///       arguments:
///         domainId: ${exampleDomain.id}
///         name: DefaultDataLake
///         managed: true
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_datazone_get_environment_blueprint_get_environment_blueprint_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEnvironmentBlueprintResult> getEnvironmentBlueprint(
  GetEnvironmentBlueprintArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:datazone/getEnvironmentBlueprint:getEnvironmentBlueprint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnvironmentBlueprintResult.fromMap(result);
}
