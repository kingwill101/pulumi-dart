import 'package:pulumi/pulumi.dart';
import 'organization_configuration_args.dart';

/// Manages the Detective Organization Configuration in the current AWS Region. The AWS account utilizing this resource must have been assigned as a delegated Organization administrator account, e.g., via the <span pulumi-lang-nodejs="`aws.detective.OrganizationAdminAccount`" pulumi-lang-dotnet="`aws.detective.OrganizationAdminAccount`" pulumi-lang-go="`detective.OrganizationAdminAccount`" pulumi-lang-python="`detective.OrganizationAdminAccount`" pulumi-lang-yaml="`aws.detective.OrganizationAdminAccount`" pulumi-lang-java="`aws.detective.OrganizationAdminAccount`">`aws.detective.OrganizationAdminAccount`</span> resource. More information about Organizations support in Detective can be found in the [Detective User Guide](https://docs.aws.amazon.com/detective/latest/adminguide/accounts-orgs-transition.html).
///
/// > **NOTE:** This is an advanced Terraform resource. Terraform will automatically assume management of the Detective Organization Configuration without import and perform no actions on removal from the Terraform configuration.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.detective.Graph("example", {enable: true});
/// const exampleOrganizationConfiguration = new aws.detective.OrganizationConfiguration("example", {
/// autoEnable: true,
/// graphArn: example.graphArn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.detective.Graph("example", enable=True)
/// example_organization_configuration = aws.detective.OrganizationConfiguration("example",
/// auto_enable=True,
/// graph_arn=example.graph_arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Detective.Graph("example", new()
/// {
/// Enable = true,
/// });
///
/// var exampleOrganizationConfiguration = new Aws.Detective.OrganizationConfiguration("example", new()
/// {
/// AutoEnable = true,
/// GraphArn = example.GraphArn,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/detective"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := detective.NewGraph(ctx, "example", &detective.GraphArgs{
/// Enable: true,
/// })
/// if err != nil {
/// return err
/// }
/// _, err = detective.NewOrganizationConfiguration(ctx, "example", &detective.OrganizationConfigurationArgs{
/// AutoEnable: pulumi.Bool(true),
/// GraphArn:   example.GraphArn,
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new Graph("example", GraphArgs.builder()
/// .enable(true)
/// .build());
///
/// var exampleOrganizationConfiguration = new OrganizationConfiguration("exampleOrganizationConfiguration", OrganizationConfigurationArgs.builder()
/// .autoEnable(true)
/// .graphArn(example.graphArn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:detective:Graph
/// properties:
/// enable: true
/// exampleOrganizationConfiguration:
/// type: aws:detective:OrganizationConfiguration
/// name: example
/// properties:
/// autoEnable: true
/// graphArn: ${example.graphArn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.detective.OrganizationAdminAccount`" pulumi-lang-dotnet="`aws.detective.OrganizationAdminAccount`" pulumi-lang-go="`detective.OrganizationAdminAccount`" pulumi-lang-python="`detective.OrganizationAdminAccount`" pulumi-lang-yaml="`aws.detective.OrganizationAdminAccount`" pulumi-lang-java="`aws.detective.OrganizationAdminAccount`">`aws.detective.OrganizationAdminAccount`</span> using the behavior graph ARN. For example:
///
/// ```sh
/// $ pulumi import aws:detective/organizationConfiguration:OrganizationConfiguration example arn:aws:detective:us-east-1:123456789012:graph:00b00fd5aecc0ab60a708659477e9617
/// ```
class OrganizationConfiguration extends CustomResource {
  /// When this setting is enabled, all new accounts that are created in, or added to, the organization are added as a member accounts of the organization’s Detective delegated administrator and Detective is enabled in that AWS Region.
  late final Output<bool> autoEnable;

  /// ARN of the behavior graph.
  late final Output<String> graphArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  OrganizationConfiguration(
    String name, {
    OrganizationConfigurationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:detective/organizationConfiguration:OrganizationConfiguration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.autoEnable = registerOutput<bool>('autoEnable');
    this.graphArn = registerOutput<String>('graphArn');
    this.region = registerOutput<String>('region');
  }
}
