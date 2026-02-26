import 'package:pulumi/pulumi.dart';
import '../default_credit_specification_timeouts/default_credit_specification_timeouts.dart';
import 'default_credit_specification_args.dart';

/// Resource for managing an AWS EC2 (Elastic Compute Cloud) Default Credit Specification.
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
/// const example = new aws.ec2.DefaultCreditSpecification("example", {
/// instanceFamily: "t2",
/// cpuCredits: "standard",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.DefaultCreditSpecification("example",
/// instance_family="t2",
/// cpu_credits="standard")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Ec2.DefaultCreditSpecification("example", new()
/// {
/// InstanceFamily = "t2",
/// CpuCredits = "standard",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ec2.NewDefaultCreditSpecification(ctx, "example", &ec2.DefaultCreditSpecificationArgs{
/// InstanceFamily: pulumi.String("t2"),
/// CpuCredits:     pulumi.String("standard"),
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
/// import com.pulumi.aws.ec2.DefaultCreditSpecification;
/// import com.pulumi.aws.ec2.DefaultCreditSpecificationArgs;
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
/// var example = new DefaultCreditSpecification("example", DefaultCreditSpecificationArgs.builder()
/// .instanceFamily("t2")
/// .cpuCredits("standard")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2:DefaultCreditSpecification
/// properties:
/// instanceFamily: t2
/// cpuCredits: standard
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import EC2 (Elastic Compute Cloud) Default Credit Specification using the <span pulumi-lang-nodejs="`instanceFamily`" pulumi-lang-dotnet="`InstanceFamily`" pulumi-lang-go="`instanceFamily`" pulumi-lang-python="`instance_family`" pulumi-lang-yaml="`instanceFamily`" pulumi-lang-java="`instanceFamily`">`instance_family`</span>. For example:
///
/// ```console
/// % pulumi import aws_ec2_default_credit_specification.example t2
///
/// ```
class DefaultCreditSpecification extends CustomResource {
  /// Credit option for CPU usage of the instance family. Valid values: <span pulumi-lang-nodejs="`standard`" pulumi-lang-dotnet="`Standard`" pulumi-lang-go="`standard`" pulumi-lang-python="`standard`" pulumi-lang-yaml="`standard`" pulumi-lang-java="`standard`">`standard`</span>, <span pulumi-lang-nodejs="`unlimited`" pulumi-lang-dotnet="`Unlimited`" pulumi-lang-go="`unlimited`" pulumi-lang-python="`unlimited`" pulumi-lang-yaml="`unlimited`" pulumi-lang-java="`unlimited`">`unlimited`</span>.
  late final Output<String> cpuCredits;

  /// Instance family. Valid values are <span pulumi-lang-nodejs="`t2`" pulumi-lang-dotnet="`T2`" pulumi-lang-go="`t2`" pulumi-lang-python="`t2`" pulumi-lang-yaml="`t2`" pulumi-lang-java="`t2`">`t2`</span>, <span pulumi-lang-nodejs="`t3`" pulumi-lang-dotnet="`T3`" pulumi-lang-go="`t3`" pulumi-lang-python="`t3`" pulumi-lang-yaml="`t3`" pulumi-lang-java="`t3`">`t3`</span>, <span pulumi-lang-nodejs="`t3a`" pulumi-lang-dotnet="`T3a`" pulumi-lang-go="`t3a`" pulumi-lang-python="`t3a`" pulumi-lang-yaml="`t3a`" pulumi-lang-java="`t3a`">`t3a`</span>, <span pulumi-lang-nodejs="`t4g`" pulumi-lang-dotnet="`T4g`" pulumi-lang-go="`t4g`" pulumi-lang-python="`t4g`" pulumi-lang-yaml="`t4g`" pulumi-lang-java="`t4g`">`t4g`</span>.
  late final Output<String> instanceFamily;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;
  late final Output<DefaultCreditSpecificationTimeouts?> timeouts;

  DefaultCreditSpecification(
    String name, {
    DefaultCreditSpecificationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/defaultCreditSpecification:DefaultCreditSpecification',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.cpuCredits = registerOutput<String>('cpuCredits');
    this.instanceFamily = registerOutput<String>('instanceFamily');
    this.region = registerOutput<String>('region');
    this.timeouts =
        registerOutput<DefaultCreditSpecificationTimeouts?>('timeouts');
  }
}
