import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_setting_default_args.dart';
import 'account_setting_default_state.dart';

/// Provides an ECS default account setting for a specific ECS Resource name within a specific region. More information can be found on the [ECS Developer Guide](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-account-settings.html).
///
/// &gt; **NOTE:** The AWS API does not delete this resource. When you run `destroy`, the provider will attempt to disable the setting.
///
/// &gt; **NOTE:** Your AWS account may not support disabling `containerInstanceLongArnFormat`, `serviceLongArnFormat`, and `taskLongArnFormat`. If your account does not support disabling these, "destroying" this resource will not disable the setting nor cause a provider error. However, the AWS Provider will log an AWS error: `InvalidParameterException: You can no longer disable Long Arn settings`.
///
/// ## Example Usage
///
/// ### Enable the long task ARN format
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.ecs.AccountSettingDefault("test", {
///     name: "taskLongArnFormat",
///     value: "enabled",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.ecs.AccountSettingDefault("test",
///     name="taskLongArnFormat",
///     value="enabled")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.Ecs.AccountSettingDefault("test", new()
///     {
///         Name = "taskLongArnFormat",
///         Value = "enabled",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ecs.NewAccountSettingDefault(ctx, "test", &ecs.AccountSettingDefaultArgs{
/// 			Name:  pulumi.String("taskLongArnFormat"),
/// 			Value: pulumi.String("enabled"),
/// 		})
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
/// resource "aws_ecs_accountsettingdefault" "test" {
///   name  = "taskLongArnFormat"
///   value = "enabled"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ecs.AccountSettingDefault;
/// import com.pulumi.aws.ecs.AccountSettingDefaultArgs;
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
///         var test = new AccountSettingDefault("test", AccountSettingDefaultArgs.builder()
///             .name("taskLongArnFormat")
///             .value("enabled")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:ecs:AccountSettingDefault
///     properties:
///       name: taskLongArnFormat
///       value: enabled
/// ```
///
///
/// ### Set the default log driver mode to non-blocking
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.ecs.AccountSettingDefault("test", {
///     name: "defaultLogDriverMode",
///     value: "non-blocking",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.ecs.AccountSettingDefault("test",
///     name="defaultLogDriverMode",
///     value="non-blocking")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.Ecs.AccountSettingDefault("test", new()
///     {
///         Name = "defaultLogDriverMode",
///         Value = "non-blocking",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ecs.NewAccountSettingDefault(ctx, "test", &ecs.AccountSettingDefaultArgs{
/// 			Name:  pulumi.String("defaultLogDriverMode"),
/// 			Value: pulumi.String("non-blocking"),
/// 		})
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
/// resource "aws_ecs_accountsettingdefault" "test" {
///   name  = "defaultLogDriverMode"
///   value = "non-blocking"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ecs.AccountSettingDefault;
/// import com.pulumi.aws.ecs.AccountSettingDefaultArgs;
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
///         var test = new AccountSettingDefault("test", AccountSettingDefaultArgs.builder()
///             .name("defaultLogDriverMode")
///             .value("non-blocking")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:ecs:AccountSettingDefault
///     properties:
///       name: defaultLogDriverMode
///       value: non-blocking
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import ECS Account Setting defaults using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:ecs/accountSettingDefault:AccountSettingDefault example taskLongArnFormat
/// ```
class AccountSettingDefault extends pulumi.CustomResource {
  /// Name of the account setting to set.
  late final pulumi.Output<String> name;
  /// ARN that identifies the account setting.
  late final pulumi.Output<String> principalArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// State of the setting.
  late final pulumi.Output<String> value;

  /// Creates a new [AccountSettingDefault].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccountSettingDefault]. {@macro pulumi_ecs_account_setting_default_account_setting_default_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccountSettingDefault(
    String name, {
    AccountSettingDefaultArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ecs/accountSettingDefault:AccountSettingDefault',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    principalArn = registerOutput<String>('principalArn');
    region = registerOutput<String>('region');
    value = registerOutput<String>('value');
  }

  /// Gets an existing [AccountSettingDefault] resource's state with the given [name] and [id].
  static AccountSettingDefault get(
    String name,
    pulumi.Input<String> id, {
    AccountSettingDefaultState? state,
  }) {
    return AccountSettingDefault._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AccountSettingDefault._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ecs/accountSettingDefault:AccountSettingDefault',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    principalArn = registerOutput<String>('principalArn');
    region = registerOutput<String>('region');
    value = registerOutput<String>('value');
  }
}
