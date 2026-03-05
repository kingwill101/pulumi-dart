import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_configuration_args.dart';
import 'organization_configuration_state.dart';

/// Manages the Detective Organization Configuration in the current AWS Region. The AWS account utilizing this resource must have been assigned as a delegated Organization administrator account, e.g., via the `aws.detective.OrganizationAdminAccount` resource. More information about Organizations support in Detective can be found in the [Detective User Guide](https://docs.aws.amazon.com/detective/latest/adminguide/accounts-orgs-transition.html).
///
/// &gt; **NOTE:** This is an advanced Terraform resource. Terraform will automatically assume management of the Detective Organization Configuration without import and perform no actions on removal from the Terraform configuration.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.detective.Graph("example", {enable: true});
/// const exampleOrganizationConfiguration = new aws.detective.OrganizationConfiguration("example", {
///     autoEnable: true,
///     graphArn: example.graphArn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.detective.Graph("example", enable=True)
/// example_organization_configuration = aws.detective.OrganizationConfiguration("example",
///     auto_enable=True,
///     graph_arn=example.graph_arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Detective.Graph("example", new()
///     {
///         Enable = true,
///     });
///
///     var exampleOrganizationConfiguration = new Aws.Detective.OrganizationConfiguration("example", new()
///     {
///         AutoEnable = true,
///         GraphArn = example.GraphArn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/detective"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := detective.NewGraph(ctx, "example", &detective.GraphArgs{
/// 			Enable: true,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = detective.NewOrganizationConfiguration(ctx, "example", &detective.OrganizationConfigurationArgs{
/// 			AutoEnable: pulumi.Bool(true),
/// 			GraphArn:   example.GraphArn,
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
/// import com.pulumi.aws.detective.Graph;
/// import com.pulumi.aws.detective.GraphArgs;
/// import com.pulumi.aws.detective.OrganizationConfiguration;
/// import com.pulumi.aws.detective.OrganizationConfigurationArgs;
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
///         var example = new Graph("example", GraphArgs.builder()
///             .enable(true)
///             .build());
///
///         var exampleOrganizationConfiguration = new OrganizationConfiguration("exampleOrganizationConfiguration", OrganizationConfigurationArgs.builder()
///             .autoEnable(true)
///             .graphArn(example.graphArn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:detective:Graph
///     properties:
///       enable: true
///   exampleOrganizationConfiguration:
///     type: aws:detective:OrganizationConfiguration
///     name: example
///     properties:
///       autoEnable: true
///       graphArn: ${example.graphArn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.detective.OrganizationAdminAccount` using the behavior graph ARN. For example:
///
/// ```sh
/// $ pulumi import aws:detective/organizationConfiguration:OrganizationConfiguration example arn:aws:detective:us-east-1:123456789012:graph:00b00fd5aecc0ab60a708659477e9617
/// ```
class OrganizationConfiguration extends pulumi.CustomResource {
  /// When this setting is enabled, all new accounts that are created in, or added to, the organization are added as a member accounts of the organization’s Detective delegated administrator and Detective is enabled in that AWS Region.
  late final pulumi.Output<bool> autoEnable;
  /// ARN of the behavior graph.
  late final pulumi.Output<String> graphArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [OrganizationConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OrganizationConfiguration]. {@macro pulumi_detective_organization_configuration_organization_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OrganizationConfiguration(
    String name, {
    OrganizationConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:detective/organizationConfiguration:OrganizationConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoEnable = registerOutput<bool>('autoEnable');
    graphArn = registerOutput<String>('graphArn');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [OrganizationConfiguration] resource's state with the given [name] and [id].
  static OrganizationConfiguration get(
    String name,
    pulumi.Input<String> id, {
    OrganizationConfigurationState? state,
  }) {
    return OrganizationConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  OrganizationConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:detective/organizationConfiguration:OrganizationConfiguration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoEnable = registerOutput<bool>('autoEnable');
    graphArn = registerOutput<String>('graphArn');
    region = registerOutput<String>('region');
  }
}
