import 'package:pulumi/pulumi.dart';
import '../opt_in_condition/opt_in_condition.dart';
import '../opt_in_principal/opt_in_principal.dart';
import '../opt_in_resource_data/opt_in_resource_data.dart';
import 'opt_in_args.dart';

/// Resource for managing an AWS Lake Formation Opt In.
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
/// const example = new aws.lakeformation.OptIn("example", {});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lakeformation.OptIn("example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.LakeFormation.OptIn("example");
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lakeformation"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := lakeformation.NewOptIn(ctx, "example", nil)
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
/// import com.pulumi.aws.lakeformation.OptIn;
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
/// var example = new OptIn("example");
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:lakeformation:OptIn
/// ```
/// <!--End PulumiCodeChooser -->
class OptIn extends CustomResource {
  /// Lake Formation condition, which applies to permissions and opt-ins that contain an expression.
  late final Output<List<OptInCondition>?> conditions;

  /// Last modified date and time of the record.
  late final Output<String> lastModified;
  late final Output<String> lastUpdatedBy;

  /// Lake Formation principal. Supported principals are IAM users or IAM roles. See Principal for more details.
  late final Output<List<OptInPrincipal>?> principals;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Structure for the resource. See Resource for more details.
  late final Output<List<OptInResourceData>?> resourceDatas;

  OptIn(
    String name, {
    OptInArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:lakeformation/optIn:OptIn',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.conditions = Output.createUnknown<List<OptInCondition>?>();
    this.lastModified = Output.createUnknown<String>();
    this.lastUpdatedBy = Output.createUnknown<String>();
    this.principals = Output.createUnknown<List<OptInPrincipal>?>();
    this.region = Output.createUnknown<String>();
    this.resourceDatas = Output.createUnknown<List<OptInResourceData>?>();
  }
}
