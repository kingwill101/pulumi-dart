import 'package:pulumi/pulumi.dart';
import '../alias_routing_configuration/alias_routing_configuration.dart';
import 'alias_args4.dart';

/// Provides a Step Function State Machine Alias.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const sfnAlias = new aws.sfn.Alias("sfn_alias", {
/// name: "my_sfn_alias",
/// routingConfigurations: [{
/// stateMachineVersionArn: sfnTest.stateMachineVersionArn,
/// weight: 100,
/// }],
/// });
/// const mySfnAlias = new aws.sfn.Alias("my_sfn_alias", {
/// name: "my_sfn_alias",
/// routingConfigurations: [
/// {
/// stateMachineVersionArn: "arn:aws:states:us-east-1:12345:stateMachine:demo:3",
/// weight: 50,
/// },
/// {
/// stateMachineVersionArn: "arn:aws:states:us-east-1:12345:stateMachine:demo:2",
/// weight: 50,
/// },
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// sfn_alias = aws.sfn.Alias("sfn_alias",
/// name="my_sfn_alias",
/// routing_configurations=[{
/// "state_machine_version_arn": sfn_test["stateMachineVersionArn"],
/// "weight": 100,
/// }])
/// my_sfn_alias = aws.sfn.Alias("my_sfn_alias",
/// name="my_sfn_alias",
/// routing_configurations=[
/// {
/// "state_machine_version_arn": "arn:aws:states:us-east-1:12345:stateMachine:demo:3",
/// "weight": 50,
/// },
/// {
/// "state_machine_version_arn": "arn:aws:states:us-east-1:12345:stateMachine:demo:2",
/// "weight": 50,
/// },
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
/// var sfnAlias = new Aws.Sfn.Alias("sfn_alias", new()
/// {
/// Name = "my_sfn_alias",
/// RoutingConfigurations = new[]
/// {
/// new Aws.Sfn.Inputs.AliasRoutingConfigurationArgs
/// {
/// StateMachineVersionArn = sfnTest.StateMachineVersionArn,
/// Weight = 100,
/// },
/// },
/// });
///
/// var mySfnAlias = new Aws.Sfn.Alias("my_sfn_alias", new()
/// {
/// Name = "my_sfn_alias",
/// RoutingConfigurations = new[]
/// {
/// new Aws.Sfn.Inputs.AliasRoutingConfigurationArgs
/// {
/// StateMachineVersionArn = "arn:aws:states:us-east-1:12345:stateMachine:demo:3",
/// Weight = 50,
/// },
/// new Aws.Sfn.Inputs.AliasRoutingConfigurationArgs
/// {
/// StateMachineVersionArn = "arn:aws:states:us-east-1:12345:stateMachine:demo:2",
/// Weight = 50,
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sfn"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := sfn.NewAlias(ctx, "sfn_alias", &sfn.AliasArgs{
/// Name: pulumi.String("my_sfn_alias"),
/// RoutingConfigurations: sfn.AliasRoutingConfigurationArray{
/// &sfn.AliasRoutingConfigurationArgs{
/// StateMachineVersionArn: pulumi.Any(sfnTest.StateMachineVersionArn),
/// Weight:                 pulumi.Int(100),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = sfn.NewAlias(ctx, "my_sfn_alias", &sfn.AliasArgs{
/// Name: pulumi.String("my_sfn_alias"),
/// RoutingConfigurations: sfn.AliasRoutingConfigurationArray{
/// &sfn.AliasRoutingConfigurationArgs{
/// StateMachineVersionArn: pulumi.String("arn:aws:states:us-east-1:12345:stateMachine:demo:3"),
/// Weight:                 pulumi.Int(50),
/// },
/// &sfn.AliasRoutingConfigurationArgs{
/// StateMachineVersionArn: pulumi.String("arn:aws:states:us-east-1:12345:stateMachine:demo:2"),
/// Weight:                 pulumi.Int(50),
/// },
/// },
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
/// import com.pulumi.aws.sfn.Alias;
/// import com.pulumi.aws.sfn.AliasArgs;
/// import com.pulumi.aws.sfn.inputs.AliasRoutingConfigurationArgs;
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
/// var sfnAlias = new Alias("sfnAlias", AliasArgs.builder()
/// .name("my_sfn_alias")
/// .routingConfigurations(AliasRoutingConfigurationArgs.builder()
/// .stateMachineVersionArn(sfnTest.stateMachineVersionArn())
/// .weight(100)
/// .build())
/// .build());
///
/// var mySfnAlias = new Alias("mySfnAlias", AliasArgs.builder()
/// .name("my_sfn_alias")
/// .routingConfigurations(
/// AliasRoutingConfigurationArgs.builder()
/// .stateMachineVersionArn("arn:aws:states:us-east-1:12345:stateMachine:demo:3")
/// .weight(50)
/// .build(),
/// AliasRoutingConfigurationArgs.builder()
/// .stateMachineVersionArn("arn:aws:states:us-east-1:12345:stateMachine:demo:2")
/// .weight(50)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// sfnAlias:
/// type: aws:sfn:Alias
/// name: sfn_alias
/// properties:
/// name: my_sfn_alias
/// routingConfigurations:
/// - stateMachineVersionArn: ${sfnTest.stateMachineVersionArn}
/// weight: 100
/// mySfnAlias:
/// type: aws:sfn:Alias
/// name: my_sfn_alias
/// properties:
/// name: my_sfn_alias
/// routingConfigurations:
/// - stateMachineVersionArn: arn:aws:states:us-east-1:12345:stateMachine:demo:3
/// weight: 50
/// - stateMachineVersionArn: arn:aws:states:us-east-1:12345:stateMachine:demo:2
/// weight: 50
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import SFN (Step Functions) Alias using the <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:sfn/alias:Alias foo arn:aws:states:us-east-1:123456789098:stateMachine:myStateMachine:foo
/// ```
class Alias4 extends CustomResource {
  /// The Amazon Resource Name (ARN) identifying your state machine alias.
  late final Output<String> arn;

  /// The date the state machine alias was created.
  late final Output<String> creationDate;

  /// Description of the alias.
  late final Output<String?> description;

  /// Name for the alias you are creating.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The StateMachine alias' route configuration settings. Fields documented below
  late final Output<List<AliasRoutingConfiguration>> routingConfigurations;

  Alias4(
    String name, {
    AliasArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:sfn/alias:Alias',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.creationDate = registerOutput<String>('creationDate');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.routingConfigurations =
        registerOutput<List<AliasRoutingConfiguration>>(
            'routingConfigurations');
  }
}
