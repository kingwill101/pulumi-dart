import 'package:pulumi/pulumi.dart';
import '../instance_desired_state_timeouts/instance_desired_state_timeouts.dart';
import 'instance_desired_state_args.dart';

/// Resource for managing an AWS RDS (Relational Database) RDS Instance State.
///
/// > Destruction of this resource is a no-op and **will not** modify the instance state
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
/// const test = new aws.rds.InstanceDesiredState("test", {
/// identifier: testAwsDbInstance.identifier,
/// state: "available",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.rds.InstanceDesiredState("test",
/// identifier=test_aws_db_instance["identifier"],
/// state="available")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = new Aws.Rds.InstanceDesiredState("test", new()
/// {
/// Identifier = testAwsDbInstance.Identifier,
/// State = "available",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rds"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := rds.NewInstanceDesiredState(ctx, "test", &rds.InstanceDesiredStateArgs{
/// Identifier: pulumi.Any(testAwsDbInstance.Identifier),
/// State:      pulumi.String("available"),
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
/// import com.pulumi.aws.rds.InstanceDesiredState;
/// import com.pulumi.aws.rds.InstanceDesiredStateArgs;
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
/// var test = new InstanceDesiredState("test", InstanceDesiredStateArgs.builder()
/// .identifier(testAwsDbInstance.identifier())
/// .state("available")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:rds:InstanceDesiredState
/// properties:
/// identifier: ${testAwsDbInstance.identifier}
/// state: available
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import RDS (Relational Database) RDS Instance State using the <span pulumi-lang-nodejs="`identifier`" pulumi-lang-dotnet="`Identifier`" pulumi-lang-go="`identifier`" pulumi-lang-python="`identifier`" pulumi-lang-yaml="`identifier`" pulumi-lang-java="`identifier`">`identifier`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:rds/instanceDesiredState:InstanceDesiredState example rds_instance_state-id-12345678
/// ```
class InstanceDesiredState extends CustomResource {
  /// DB Instance Identifier
  late final Output<String> identifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Configured state of the DB Instance. Valid values are <span pulumi-lang-nodejs="`available`" pulumi-lang-dotnet="`Available`" pulumi-lang-go="`available`" pulumi-lang-python="`available`" pulumi-lang-yaml="`available`" pulumi-lang-java="`available`">`available`</span> and <span pulumi-lang-nodejs="`stopped`" pulumi-lang-dotnet="`Stopped`" pulumi-lang-go="`stopped`" pulumi-lang-python="`stopped`" pulumi-lang-yaml="`stopped`" pulumi-lang-java="`stopped`">`stopped`</span>.
  late final Output<String> state;
  late final Output<InstanceDesiredStateTimeouts?> timeouts;

  InstanceDesiredState(
    String name, {
    InstanceDesiredStateArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:rds/instanceDesiredState:InstanceDesiredState',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.identifier = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.timeouts = Output.createUnknown<InstanceDesiredStateTimeouts?>();
  }
}
