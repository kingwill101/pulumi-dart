import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_connector_args.dart';

/// Manages an App Runner VPC Connector.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const connector = new aws.apprunner.VpcConnector("connector", {
///     vpcConnectorName: "name",
///     subnets: [
///         "subnet1",
///         "subnet2",
///     ],
///     securityGroups: [
///         "sg1",
///         "sg2",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// connector = aws.apprunner.VpcConnector("connector",
///     vpc_connector_name="name",
///     subnets=[
///         "subnet1",
///         "subnet2",
///     ],
///     security_groups=[
///         "sg1",
///         "sg2",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var connector = new Aws.AppRunner.VpcConnector("connector", new()
///     {
///         VpcConnectorName = "name",
///         Subnets = new[]
///         {
///             "subnet1",
///             "subnet2",
///         },
///         SecurityGroups = new[]
///         {
///             "sg1",
///             "sg2",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apprunner"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apprunner.NewVpcConnector(ctx, "connector", &apprunner.VpcConnectorArgs{
/// 			VpcConnectorName: pulumi.String("name"),
/// 			Subnets: pulumi.StringArray{
/// 				pulumi.String("subnet1"),
/// 				pulumi.String("subnet2"),
/// 			},
/// 			SecurityGroups: pulumi.StringArray{
/// 				pulumi.String("sg1"),
/// 				pulumi.String("sg2"),
/// 			},
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
/// import com.pulumi.aws.apprunner.VpcConnector;
/// import com.pulumi.aws.apprunner.VpcConnectorArgs;
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
///         var connector = new VpcConnector("connector", VpcConnectorArgs.builder()
///             .vpcConnectorName("name")
///             .subnets(
///                 "subnet1",
///                 "subnet2")
///             .securityGroups(
///                 "sg1",
///                 "sg2")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   connector:
///     type: aws:apprunner:VpcConnector
///     properties:
///       vpcConnectorName: name
///       subnets:
///         - subnet1
///         - subnet2
///       securityGroups:
///         - sg1
///         - sg2
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the App Runner VPC connector.
///
///
/// Using `pulumi import`, import App Runner vpc connector using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:apprunner/vpcConnector:VpcConnector example arn:aws:apprunner:us-east-1:1234567890:vpcconnector/example/1/0a03292a89764e5882c41d8f991c82fe
/// ```
class VpcConnector extends pulumi.CustomResource {
  /// ARN of VPC connector.
  late final pulumi.Output<String> arn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// List of IDs of security groups that App Runner should use for access to AWS resources under the specified subnets. If not specified, App Runner uses the default security group of the Amazon VPC. The default security group allows all outbound traffic.
  late final pulumi.Output<List<String>> securityGroups;

  /// Current state of the VPC connector. If the status of a connector revision is INACTIVE, it was deleted and can't be used. Inactive connector revisions are permanently removed some time after they are deleted.
  late final pulumi.Output<String> status;

  /// List of IDs of subnets that App Runner should use when it associates your service with a custom Amazon VPC. Specify IDs of subnets of a single Amazon VPC. App Runner determines the Amazon VPC from the subnets you specify.
  late final pulumi.Output<List<String>> subnets;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Name for the VPC connector.
  late final pulumi.Output<String> vpcConnectorName;

  /// The revision of VPC connector. It's unique among all the active connectors ("Status": "ACTIVE") that share the same Name.
  late final pulumi.Output<int> vpcConnectorRevision;

  /// Creates a new [VpcConnector].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpcConnector]. {@macro pulumi_apprunner_vpc_connector_vpc_connector_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpcConnector(
    String name, {
    VpcConnectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:apprunner/vpcConnector:VpcConnector',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.arn = registerOutput<String>('arn');
    this.region = registerOutput<String>('region');
    this.securityGroups = registerOutput<List<String>>('securityGroups');
    this.status = registerOutput<String>('status');
    this.subnets = registerOutput<List<String>>('subnets');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcConnectorName = registerOutput<String>('vpcConnectorName');
    this.vpcConnectorRevision = registerOutput<int>('vpcConnectorRevision');
  }
}
