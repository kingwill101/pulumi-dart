import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_configuration_set_args.dart';
import 'get_configuration_set_result.dart';
import 'get_dedicated_ip_pool_args.dart';
import 'get_dedicated_ip_pool_result.dart';
import 'get_email_identity_args.dart';
import 'get_email_identity_mail_from_attributes_args.dart';
import 'get_email_identity_mail_from_attributes_result.dart';
import 'get_email_identity_result.dart';

/// Data source for managing an AWS SESv2 (Simple Email V2) Configuration Set.
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
/// const example = aws.sesv2.getConfigurationSet({
///     configurationSetName: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sesv2.get_configuration_set(configuration_set_name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.SesV2.GetConfigurationSet.Invoke(new()
///     {
///         ConfigurationSetName = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sesv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sesv2.LookupConfigurationSet(ctx, &sesv2.LookupConfigurationSetArgs{
/// 			ConfigurationSetName: "example",
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
/// data "aws_sesv2_getconfigurationset" "example" {
///   configuration_set_name = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.sesv2.Sesv2Functions;
/// import com.pulumi.aws.sesv2.inputs.GetConfigurationSetArgs;
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
///         final var example = Sesv2Functions.getConfigurationSet(GetConfigurationSetArgs.builder()
///             .configurationSetName("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:sesv2:getConfigurationSet
///       arguments:
///         configurationSetName: example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_sesv2_get_configuration_set_get_configuration_set_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConfigurationSetResult> getConfigurationSet(
  GetConfigurationSetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:sesv2/getConfigurationSet:getConfigurationSet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConfigurationSetResult.fromMap(result);
}

/// Data source for managing an AWS SESv2 (Simple Email V2) Dedicated IP Pool.
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
/// const example = aws.sesv2.getDedicatedIpPool({
///     poolName: "my-pool",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sesv2.get_dedicated_ip_pool(pool_name="my-pool")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.SesV2.GetDedicatedIpPool.Invoke(new()
///     {
///         PoolName = "my-pool",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sesv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sesv2.LookupDedicatedIpPool(ctx, &sesv2.LookupDedicatedIpPoolArgs{
/// 			PoolName: "my-pool",
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
/// data "aws_sesv2_getdedicatedippool" "example" {
///   pool_name = "my-pool"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.sesv2.Sesv2Functions;
/// import com.pulumi.aws.sesv2.inputs.GetDedicatedIpPoolArgs;
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
///         final var example = Sesv2Functions.getDedicatedIpPool(GetDedicatedIpPoolArgs.builder()
///             .poolName("my-pool")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:sesv2:getDedicatedIpPool
///       arguments:
///         poolName: my-pool
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_sesv2_get_dedicated_ip_pool_get_dedicated_ip_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDedicatedIpPoolResult> getDedicatedIpPool(
  GetDedicatedIpPoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:sesv2/getDedicatedIpPool:getDedicatedIpPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDedicatedIpPoolResult.fromMap(result);
}

/// Data source for managing an AWS SESv2 (Simple Email V2) Email Identity.
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
/// const example = aws.sesv2.getEmailIdentity({
///     emailIdentity: "example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sesv2.get_email_identity(email_identity="example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.SesV2.GetEmailIdentity.Invoke(new()
///     {
///         EmailIdentity = "example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sesv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sesv2.LookupEmailIdentity(ctx, &sesv2.LookupEmailIdentityArgs{
/// 			EmailIdentity: "example.com",
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
/// data "aws_sesv2_getemailidentity" "example" {
///   email_identity = "example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.sesv2.Sesv2Functions;
/// import com.pulumi.aws.sesv2.inputs.GetEmailIdentityArgs;
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
///         final var example = Sesv2Functions.getEmailIdentity(GetEmailIdentityArgs.builder()
///             .emailIdentity("example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:sesv2:getEmailIdentity
///       arguments:
///         emailIdentity: example.com
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_sesv2_get_email_identity_get_email_identity_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEmailIdentityResult> getEmailIdentity(
  GetEmailIdentityArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:sesv2/getEmailIdentity:getEmailIdentity',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEmailIdentityResult.fromMap(result);
}

/// Data source for managing an AWS SESv2 (Simple Email V2) Email Identity Mail From Attributes.
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
/// const example = aws.sesv2.getEmailIdentity({
///     emailIdentity: "example.com",
/// });
/// const exampleGetEmailIdentityMailFromAttributes = example.then(example => aws.sesv2.getEmailIdentityMailFromAttributes({
///     emailIdentity: example.emailIdentity,
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sesv2.get_email_identity(email_identity="example.com")
/// example_get_email_identity_mail_from_attributes = aws.sesv2.get_email_identity_mail_from_attributes(email_identity=example.email_identity)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.SesV2.GetEmailIdentity.Invoke(new()
///     {
///         EmailIdentity = "example.com",
///     });
///
///     var exampleGetEmailIdentityMailFromAttributes = Aws.SesV2.GetEmailIdentityMailFromAttributes.Invoke(new()
///     {
///         EmailIdentity = example.Apply(getEmailIdentityResult => getEmailIdentityResult.EmailIdentity),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sesv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := sesv2.LookupEmailIdentity(ctx, &sesv2.LookupEmailIdentityArgs{
/// 			EmailIdentity: "example.com",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sesv2.LookupEmailIdentityMailFromAttributes(ctx, &sesv2.LookupEmailIdentityMailFromAttributesArgs{
/// 			EmailIdentity: example.EmailIdentity,
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
/// data "aws_sesv2_getemailidentity" "example" {
///   email_identity = "example.com"
/// }
/// data "aws_sesv2_getemailidentitymailfromattributes" "exampleGetEmailIdentityMailFromAttributes" {
///   email_identity = data.aws_sesv2_getemailidentity.example.email_identity
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.sesv2.Sesv2Functions;
/// import com.pulumi.aws.sesv2.inputs.GetEmailIdentityArgs;
/// import com.pulumi.aws.sesv2.inputs.GetEmailIdentityMailFromAttributesArgs;
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
///         final var example = Sesv2Functions.getEmailIdentity(GetEmailIdentityArgs.builder()
///             .emailIdentity("example.com")
///             .build());
///
///         final var exampleGetEmailIdentityMailFromAttributes = Sesv2Functions.getEmailIdentityMailFromAttributes(GetEmailIdentityMailFromAttributesArgs.builder()
///             .emailIdentity(example.emailIdentity())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:sesv2:getEmailIdentity
///       arguments:
///         emailIdentity: example.com
///   exampleGetEmailIdentityMailFromAttributes:
///     fn::invoke:
///       function: aws:sesv2:getEmailIdentityMailFromAttributes
///       arguments:
///         emailIdentity: ${example.emailIdentity}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_sesv2_get_email_identity_mail_from_attributes_get_email_identity_mail_from_attributes_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEmailIdentityMailFromAttributesResult> getEmailIdentityMailFromAttributes(
  GetEmailIdentityMailFromAttributesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:sesv2/getEmailIdentityMailFromAttributes:getEmailIdentityMailFromAttributes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEmailIdentityMailFromAttributesResult.fromMap(result);
}
