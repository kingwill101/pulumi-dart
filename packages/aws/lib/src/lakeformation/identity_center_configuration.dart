import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_center_configuration_args.dart';

/// Manages an AWS Lake Formation Identity Center Configuration.
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
/// const example = aws.ssoadmin.getInstances({});
/// const identityCenterInstanceArn = example.then(example => example.arns?.[0]);
/// const exampleIdentityCenterConfiguration = new aws.lakeformation.IdentityCenterConfiguration("example", {instanceArn: identityCenterInstanceArn});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssoadmin.get_instances()
/// identity_center_instance_arn = example.arns[0]
/// example_identity_center_configuration = aws.lakeformation.IdentityCenterConfiguration("example", instance_arn=identity_center_instance_arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.SsoAdmin.GetInstances.Invoke();
///
///     var identityCenterInstanceArn = example.Apply(getInstancesResult => getInstancesResult.Arns[0]);
///
///     var exampleIdentityCenterConfiguration = new Aws.LakeFormation.IdentityCenterConfiguration("example", new()
///     {
///         InstanceArn = identityCenterInstanceArn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lakeformation"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssoadmin"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := ssoadmin.GetInstances(ctx, &ssoadmin.GetInstancesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		identityCenterInstanceArn := example.Arns[0]
/// 		_, err = lakeformation.NewIdentityCenterConfiguration(ctx, "example", &lakeformation.IdentityCenterConfigurationArgs{
/// 			InstanceArn: pulumi.String(identityCenterInstanceArn),
/// 		})
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
/// import com.pulumi.aws.ssoadmin.SsoadminFunctions;
/// import com.pulumi.aws.ssoadmin.inputs.GetInstancesArgs;
/// import com.pulumi.aws.lakeformation.IdentityCenterConfiguration;
/// import com.pulumi.aws.lakeformation.IdentityCenterConfigurationArgs;
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
///         final var example = SsoadminFunctions.getInstances(GetInstancesArgs.builder()
///             .build());
///
///         final var identityCenterInstanceArn = example.arns()[0];
///
///         var exampleIdentityCenterConfiguration = new IdentityCenterConfiguration("exampleIdentityCenterConfiguration", IdentityCenterConfigurationArgs.builder()
///             .instanceArn(identityCenterInstanceArn)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleIdentityCenterConfiguration:
///     type: aws:lakeformation:IdentityCenterConfiguration
///     name: example
///     properties:
///       instanceArn: ${identityCenterInstanceArn}
/// variables:
///   identityCenterInstanceArn: ${example.arns[0]}
///   example:
///     fn::invoke:
///       function: aws:ssoadmin:getInstances
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Lake Formation Identity Center Configuration using the `catalog_id`. For example:
///
/// ```sh
/// $ pulumi import aws:lakeformation/identityCenterConfiguration:IdentityCenterConfiguration example 123456789012
/// ```
class IdentityCenterConfiguration extends pulumi.CustomResource {
  /// ARN of the Lake Formation applicated integrated with IAM Identity Center.
  late final pulumi.Output<String> applicationArn;
  /// Identifier for the Data Catalog.
  /// By default, the account ID.
  late final pulumi.Output<String> catalogId;
  /// ARN of the IAM Identity Center Instance to associate.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> instanceArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN of the Resource Access Manager (RAM) resource share.
  late final pulumi.Output<String> resourceShare;

  /// Creates a new [IdentityCenterConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IdentityCenterConfiguration]. {@macro pulumi_lakeformation_identity_center_configuration_identity_center_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IdentityCenterConfiguration(
    String name, {
    IdentityCenterConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lakeformation/identityCenterConfiguration:IdentityCenterConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationArn = registerOutput<String>('applicationArn');
    this.catalogId = registerOutput<String>('catalogId');
    this.instanceArn = registerOutput<String>('instanceArn');
    this.region = registerOutput<String>('region');
    this.resourceShare = registerOutput<String>('resourceShare');
  }
}
