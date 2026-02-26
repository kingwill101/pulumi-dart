import 'package:pulumi/pulumi.dart';
import 'organization_configuration_args4.dart';

/// Provides a resource to manage Amazon Macie configuration settings for an organization in AWS Organizations.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.macie2.OrganizationConfiguration("example", {autoEnable: true});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.macie2.OrganizationConfiguration("example", auto_enable=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Macie2.OrganizationConfiguration("example", new()
/// {
/// AutoEnable = true,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/macie2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := macie2.NewOrganizationConfiguration(ctx, "example", &macie2.OrganizationConfigurationArgs{
/// AutoEnable: pulumi.Bool(true),
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
/// import com.pulumi.aws.macie2.OrganizationConfiguration;
/// import com.pulumi.aws.macie2.OrganizationConfigurationArgs;
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
/// var example = new OrganizationConfiguration("example", OrganizationConfigurationArgs.builder()
/// .autoEnable(true)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:macie2:OrganizationConfiguration
/// properties:
/// autoEnable: true
/// ```
/// <!--End PulumiCodeChooser -->
class OrganizationConfiguration4 extends CustomResource {
  /// Whether to enable Amazon Macie automatically for accounts that are added to the organization in AWS Organizations.
  late final Output<bool> autoEnable;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  OrganizationConfiguration4(
    String name, {
    OrganizationConfigurationArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:macie2/organizationConfiguration:OrganizationConfiguration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.autoEnable = Output.createUnknown<bool>();
    this.region = Output.createUnknown<String>();
  }
}
