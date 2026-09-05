import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_args.dart';
import 'get_application_result.dart';
import 'get_configuration_profile_args.dart';
import 'get_configuration_profile_result.dart';
import 'get_configuration_profiles_args.dart';
import 'get_configuration_profiles_result.dart';
import 'get_environment_args.dart';
import 'get_environment_result.dart';
import 'get_environments_args.dart';
import 'get_environments_result.dart';

/// Provides details about an AWS AppConfig Application.
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
/// const example = aws.appconfig.getApplication({
///     name: "my-appconfig-application",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.appconfig.get_application(name="my-appconfig-application")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.AppConfig.GetApplication.Invoke(new()
///     {
///         Name = "my-appconfig-application",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appconfig"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appconfig.LookupApplication(ctx, &appconfig.LookupApplicationArgs{
/// 			Name: pulumi.StringRef("my-appconfig-application"),
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
/// data "aws_appconfig_getapplication" "example" {
///   name = "my-appconfig-application"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.appconfig.AppconfigFunctions;
/// import com.pulumi.aws.appconfig.inputs.GetApplicationArgs;
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
///         final var example = AppconfigFunctions.getApplication(GetApplicationArgs.builder()
///             .name("my-appconfig-application")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:appconfig:getApplication
///       arguments:
///         name: my-appconfig-application
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_appconfig_get_application_get_application_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApplicationResult> getApplication(
  GetApplicationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:appconfig/getApplication:getApplication',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApplicationResult.fromMap(result);
}

pulumi.Output<GetApplicationResult> getApplicationOutput(
  GetApplicationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:appconfig/getApplication:getApplication',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetApplicationResult.fromMap);
}

/// Provides access to an AppConfig Configuration Profile.
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
/// const example = aws.appconfig.getConfigurationProfile({
///     applicationId: "b5d5gpj",
///     configurationProfileId: "qrbb1c1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.appconfig.get_configuration_profile(application_id="b5d5gpj",
///     configuration_profile_id="qrbb1c1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.AppConfig.GetConfigurationProfile.Invoke(new()
///     {
///         ApplicationId = "b5d5gpj",
///         ConfigurationProfileId = "qrbb1c1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appconfig"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appconfig.LookupConfigurationProfile(ctx, &appconfig.LookupConfigurationProfileArgs{
/// 			ApplicationId:          "b5d5gpj",
/// 			ConfigurationProfileId: "qrbb1c1",
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
/// data "aws_appconfig_getconfigurationprofile" "example" {
///   application_id           = "b5d5gpj"
///   configuration_profile_id = "qrbb1c1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.appconfig.AppconfigFunctions;
/// import com.pulumi.aws.appconfig.inputs.GetConfigurationProfileArgs;
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
///         final var example = AppconfigFunctions.getConfigurationProfile(GetConfigurationProfileArgs.builder()
///             .applicationId("b5d5gpj")
///             .configurationProfileId("qrbb1c1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:appconfig:getConfigurationProfile
///       arguments:
///         applicationId: b5d5gpj
///         configurationProfileId: qrbb1c1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_appconfig_get_configuration_profile_get_configuration_profile_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConfigurationProfileResult> getConfigurationProfile(
  GetConfigurationProfileArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:appconfig/getConfigurationProfile:getConfigurationProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConfigurationProfileResult.fromMap(result);
}

pulumi.Output<GetConfigurationProfileResult> getConfigurationProfileOutput(
  GetConfigurationProfileArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:appconfig/getConfigurationProfile:getConfigurationProfile',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetConfigurationProfileResult.fromMap);
}

/// Provides access to all Configuration Properties for an AppConfig Application. This will allow you to pass Configuration
/// Profile IDs to another resource.
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
/// const example = aws.appconfig.getConfigurationProfiles({
///     applicationId: "a1d3rpe",
/// });
/// const exampleGetConfigurationProfile = example.then(example => .reduce((__obj, [__key, __value]) => ({ ...__obj, [String(__key)]: aws.appconfig.getConfigurationProfile({
///     configurationProfileId: __value,
///     applicationId: exampleAwsAppconfigApplication.id,
/// }) }), {}));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.appconfig.get_configuration_profiles(application_id="a1d3rpe")
/// example_get_configuration_profile = {str(__key): aws.appconfig.get_configuration_profile(configuration_profile_id=__value,
///     application_id=example_aws_appconfig_application["id"]) for __key, __value in enumerate(example.configuration_profile_ids)}
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.AppConfig.GetConfigurationProfiles.Invoke(new()
///     {
///         ApplicationId = "a1d3rpe",
///     });
///
///     var exampleGetConfigurationProfile = ;
///
/// });
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
/// data "aws_appconfig_getconfigurationprofiles" "example" {
///   application_id = "a1d3rpe"
/// }
/// data "aws_appconfig_getconfigurationprofile" "invoke_1" {
///   for_each                 = data.aws_appconfig_getconfigurationprofiles.example.configuration_profile_ids
///   configuration_profile_id = each.value
///   application_id           = exampleAwsAppconfigApplication.id
/// }
///
/// locals {
///   exampleGetConfigurationProfile = {for __key, __value in data.aws_appconfig_getconfigurationprofiles.example.configuration_profile_ids : __key => data.aws_appconfig_getconfigurationprofile.invoke_1[__key]}
/// }
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_appconfig_get_configuration_profiles_get_configuration_profiles_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConfigurationProfilesResult> getConfigurationProfiles(
  GetConfigurationProfilesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:appconfig/getConfigurationProfiles:getConfigurationProfiles',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConfigurationProfilesResult.fromMap(result);
}

pulumi.Output<GetConfigurationProfilesResult> getConfigurationProfilesOutput(
  GetConfigurationProfilesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:appconfig/getConfigurationProfiles:getConfigurationProfiles',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetConfigurationProfilesResult.fromMap);
}

/// Provides access to an AppConfig Environment.
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
/// const example = aws.appconfig.getEnvironment({
///     applicationId: "b5d5gpj",
///     environmentId: "qrbb1c1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.appconfig.get_environment(application_id="b5d5gpj",
///     environment_id="qrbb1c1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.AppConfig.GetEnvironment.Invoke(new()
///     {
///         ApplicationId = "b5d5gpj",
///         EnvironmentId = "qrbb1c1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appconfig"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appconfig.LookupEnvironment(ctx, &appconfig.LookupEnvironmentArgs{
/// 			ApplicationId: "b5d5gpj",
/// 			EnvironmentId: "qrbb1c1",
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
/// data "aws_appconfig_getenvironment" "example" {
///   application_id = "b5d5gpj"
///   environment_id = "qrbb1c1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.appconfig.AppconfigFunctions;
/// import com.pulumi.aws.appconfig.inputs.GetEnvironmentArgs;
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
///         final var example = AppconfigFunctions.getEnvironment(GetEnvironmentArgs.builder()
///             .applicationId("b5d5gpj")
///             .environmentId("qrbb1c1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:appconfig:getEnvironment
///       arguments:
///         applicationId: b5d5gpj
///         environmentId: qrbb1c1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_appconfig_get_environment_get_environment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEnvironmentResult> getEnvironment(
  GetEnvironmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:appconfig/getEnvironment:getEnvironment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnvironmentResult.fromMap(result);
}

pulumi.Output<GetEnvironmentResult> getEnvironmentOutput(
  GetEnvironmentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:appconfig/getEnvironment:getEnvironment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEnvironmentResult.fromMap);
}

/// Provides access to all Environments for an AppConfig Application. This will allow you to pass Environment IDs to another
/// resource.
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
/// const example = aws.appconfig.getEnvironments({
///     applicationId: "a1d3rpe",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.appconfig.get_environments(application_id="a1d3rpe")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.AppConfig.GetEnvironments.Invoke(new()
///     {
///         ApplicationId = "a1d3rpe",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appconfig"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appconfig.GetEnvironments(ctx, &appconfig.GetEnvironmentsArgs{
/// 			ApplicationId: "a1d3rpe",
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
/// data "aws_appconfig_getenvironments" "example" {
///   application_id = "a1d3rpe"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.appconfig.AppconfigFunctions;
/// import com.pulumi.aws.appconfig.inputs.GetEnvironmentsArgs;
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
///         final var example = AppconfigFunctions.getEnvironments(GetEnvironmentsArgs.builder()
///             .applicationId("a1d3rpe")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:appconfig:getEnvironments
///       arguments:
///         applicationId: a1d3rpe
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_appconfig_get_environments_get_environments_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEnvironmentsResult> getEnvironments(
  GetEnvironmentsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:appconfig/getEnvironments:getEnvironments',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnvironmentsResult.fromMap(result);
}

pulumi.Output<GetEnvironmentsResult> getEnvironmentsOutput(
  GetEnvironmentsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:appconfig/getEnvironments:getEnvironments',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEnvironmentsResult.fromMap);
}
