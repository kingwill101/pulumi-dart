import 'package:pulumi/pulumi.dart' as pulumi;
import 'opt_in_args.dart';
import 'opt_in_condition.dart';
import 'opt_in_principal.dart';
import 'opt_in_resource_data.dart';

/// Resource for managing an AWS Lake Formation Opt In.
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
///     var example = new Aws.LakeFormation.OptIn("example");
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lakeformation"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := lakeformation.NewOptIn(ctx, "example", nil)
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
/// import com.pulumi.aws.lakeformation.OptIn;
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
///         var example = new OptIn("example");
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lakeformation:OptIn
/// ```
class OptIn extends pulumi.CustomResource {
  /// Lake Formation condition, which applies to permissions and opt-ins that contain an expression.
  late final pulumi.Output<List<OptInCondition>?> conditions;

  /// Last modified date and time of the record.
  late final pulumi.Output<String> lastModified;
  late final pulumi.Output<String> lastUpdatedBy;

  /// Lake Formation principal. Supported principals are IAM users or IAM roles. See Principal for more details.
  late final pulumi.Output<List<OptInPrincipal>?> principals;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Structure for the resource. See Resource for more details.
  late final pulumi.Output<List<OptInResourceData>?> resourceDatas;

  /// Creates a new [OptIn].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OptIn]. {@macro pulumi_lakeformation_opt_in_opt_in_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OptIn(String name, {OptInArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'aws:lakeformation/optIn:OptIn',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    this.conditions = registerOutput<List<OptInCondition>?>('conditions');
    this.lastModified = registerOutput<String>('lastModified');
    this.lastUpdatedBy = registerOutput<String>('lastUpdatedBy');
    this.principals = registerOutput<List<OptInPrincipal>?>('principals');
    this.region = registerOutput<String>('region');
    this.resourceDatas = registerOutput<List<OptInResourceData>?>(
      'resourceDatas',
    );
  }
}
