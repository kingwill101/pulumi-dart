import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_args.dart';
import 'get_application_result.dart';
import 'get_hosted_zone_args.dart';
import 'get_hosted_zone_result.dart';
import 'get_solution_stack_args.dart';
import 'get_solution_stack_result.dart';

/// Retrieve information about an Elastic Beanstalk Application.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.elasticbeanstalk.getApplication({
///     name: "example",
/// });
/// export const arn = example.then(example => example.arn);
/// export const description = example.then(example => example.description);
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.elasticbeanstalk.get_application(name="example")
/// pulumi.export("arn", example.arn)
/// pulumi.export("description", example.description)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.ElasticBeanstalk.GetApplication.Invoke(new()
///     {
///         Name = "example",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["arn"] = example.Apply(getApplicationResult => getApplicationResult.Arn),
///         ["description"] = example.Apply(getApplicationResult => getApplicationResult.Description),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/elasticbeanstalk"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := elasticbeanstalk.LookupApplication(ctx, &elasticbeanstalk.LookupApplicationArgs{
/// 			Name: "example",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("arn", example.Arn)
/// 		ctx.Export("description", example.Description)
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
/// import com.pulumi.aws.elasticbeanstalk.ElasticbeanstalkFunctions;
/// import com.pulumi.aws.elasticbeanstalk.inputs.GetApplicationArgs;
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
///         final var example = ElasticbeanstalkFunctions.getApplication(GetApplicationArgs.builder()
///             .name("example")
///             .build());
///
///         ctx.export("arn", example.arn());
///         ctx.export("description", example.description());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:elasticbeanstalk:getApplication
///       arguments:
///         name: example
/// outputs:
///   arn: ${example.arn}
///   description: ${example.description}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_elasticbeanstalk_get_application_get_application_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApplicationResult> getApplication(
  GetApplicationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:elasticbeanstalk/getApplication:getApplication',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApplicationResult.fromMap(result);
}

/// Use this data source to get the ID of an [elastic beanstalk hosted zone](http://docs.aws.amazon.com/general/latest/gr/rande.html#elasticbeanstalk_region).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.elasticbeanstalk.getHostedZone({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.elasticbeanstalk.get_hosted_zone()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.ElasticBeanstalk.GetHostedZone.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/elasticbeanstalk"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := elasticbeanstalk.GetHostedZone(ctx, &elasticbeanstalk.GetHostedZoneArgs{}, nil)
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
/// import com.pulumi.aws.elasticbeanstalk.ElasticbeanstalkFunctions;
/// import com.pulumi.aws.elasticbeanstalk.inputs.GetHostedZoneArgs;
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
///         final var current = ElasticbeanstalkFunctions.getHostedZone(GetHostedZoneArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   current:
///     fn::invoke:
///       function: aws:elasticbeanstalk:getHostedZone
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_elasticbeanstalk_get_hosted_zone_get_hosted_zone_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHostedZoneResult> getHostedZone(
  GetHostedZoneArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:elasticbeanstalk/getHostedZone:getHostedZone',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHostedZoneResult.fromMap(result);
}

/// Use this data source to get the name of a elastic beanstalk solution stack.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const multiDocker = aws.elasticbeanstalk.getSolutionStack({
///     mostRecent: true,
///     nameRegex: "^64bit Amazon Linux (.*) Multi-container Docker (.*)$",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// multi_docker = aws.elasticbeanstalk.get_solution_stack(most_recent=True,
///     name_regex="^64bit Amazon Linux (.*) Multi-container Docker (.*)$")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var multiDocker = Aws.ElasticBeanstalk.GetSolutionStack.Invoke(new()
///     {
///         MostRecent = true,
///         NameRegex = "^64bit Amazon Linux (.*) Multi-container Docker (.*)$",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/elasticbeanstalk"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := elasticbeanstalk.GetSolutionStack(ctx, &elasticbeanstalk.GetSolutionStackArgs{
/// 			MostRecent: pulumi.BoolRef(true),
/// 			NameRegex:  "^64bit Amazon Linux (.*) Multi-container Docker (.*)$",
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
/// import com.pulumi.aws.elasticbeanstalk.ElasticbeanstalkFunctions;
/// import com.pulumi.aws.elasticbeanstalk.inputs.GetSolutionStackArgs;
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
///         final var multiDocker = ElasticbeanstalkFunctions.getSolutionStack(GetSolutionStackArgs.builder()
///             .mostRecent(true)
///             .nameRegex("^64bit Amazon Linux (.*) Multi-container Docker (.*)$")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   multiDocker:
///     fn::invoke:
///       function: aws:elasticbeanstalk:getSolutionStack
///       arguments:
///         mostRecent: true
///         nameRegex: ^64bit Amazon Linux (.*) Multi-container Docker (.*)$
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_elasticbeanstalk_get_solution_stack_get_solution_stack_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSolutionStackResult> getSolutionStack(
  GetSolutionStackArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:elasticbeanstalk/getSolutionStack:getSolutionStack',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSolutionStackResult.fromMap(result);
}
