import 'package:pulumi/pulumi.dart';
import 'account_setting_default_args.dart';

/// Provides an ECS default account setting for a specific ECS Resource name within a specific region. More information can be found on the [ECS Developer Guide](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-account-settings.html).
///
/// > **NOTE:** The AWS API does not delete this resource. When you run <span pulumi-lang-nodejs="`destroy`" pulumi-lang-dotnet="`Destroy`" pulumi-lang-go="`destroy`" pulumi-lang-python="`destroy`" pulumi-lang-yaml="`destroy`" pulumi-lang-java="`destroy`">`destroy`</span>, the provider will attempt to disable the setting.
///
/// > **NOTE:** Your AWS account may not support disabling `containerInstanceLongArnFormat`, `serviceLongArnFormat`, and `taskLongArnFormat`. If your account does not support disabling these, "destroying" this resource will not disable the setting nor cause a provider error. However, the AWS Provider will log an AWS error: `InvalidParameterException: You can no longer disable Long Arn settings`.
///
/// ## Example Usage
///
/// ### Enable the long task ARN format
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.ecs.AccountSettingDefault("test", {
/// name: "taskLongArnFormat",
/// value: "enabled",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.ecs.AccountSettingDefault("test",
/// name="taskLongArnFormat",
/// value="enabled")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = new Aws.Ecs.AccountSettingDefault("test", new()
/// {
/// Name = "taskLongArnFormat",
/// Value = "enabled",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecs"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ecs.NewAccountSettingDefault(ctx, "test", &ecs.AccountSettingDefaultArgs{
/// Name:  pulumi.String("taskLongArnFormat"),
/// Value: pulumi.String("enabled"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var test = new AccountSettingDefault("test", AccountSettingDefaultArgs.builder()
/// .name("taskLongArnFormat")
/// .value("enabled")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:ecs:AccountSettingDefault
/// properties:
/// name: taskLongArnFormat
/// value: enabled
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Set the default log driver mode to non-blocking
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.ecs.AccountSettingDefault("test", {
/// name: "defaultLogDriverMode",
/// value: "non-blocking",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.ecs.AccountSettingDefault("test",
/// name="defaultLogDriverMode",
/// value="non-blocking")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = new Aws.Ecs.AccountSettingDefault("test", new()
/// {
/// Name = "defaultLogDriverMode",
/// Value = "non-blocking",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecs"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ecs.NewAccountSettingDefault(ctx, "test", &ecs.AccountSettingDefaultArgs{
/// Name:  pulumi.String("defaultLogDriverMode"),
/// Value: pulumi.String("non-blocking"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var test = new AccountSettingDefault("test", AccountSettingDefaultArgs.builder()
/// .name("defaultLogDriverMode")
/// .value("non-blocking")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:ecs:AccountSettingDefault
/// properties:
/// name: defaultLogDriverMode
/// value: non-blocking
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import ECS Account Setting defaults using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:ecs/accountSettingDefault:AccountSettingDefault example taskLongArnFormat
/// ```
class AccountSettingDefault extends CustomResource {
  /// Name of the account setting to set.
  late final Output<String> name;
  late final Output<String> principalArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// State of the setting.
  late final Output<String> value;

  AccountSettingDefault(
    String name, {
    AccountSettingDefaultArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ecs/accountSettingDefault:AccountSettingDefault',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.name = Output.createUnknown<String>();
    this.principalArn = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.value = Output.createUnknown<String>();
  }
}
