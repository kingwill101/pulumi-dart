import 'package:pulumi/pulumi.dart';
import 'application_assignment_configuration_args.dart';

/// Resource for managing an AWS SSO Admin Application Assignment Configuration.
///
/// By default, applications will require users to have an explicit assignment in order to access an application.
/// This resource can be used to adjust this default behavior if necessary.
///
/// > Deleting this resource will return the assignment configuration for the application to the default AWS behavior (ie. <span pulumi-lang-nodejs="`assignmentRequired " pulumi-lang-dotnet="`AssignmentRequired " pulumi-lang-go="`assignmentRequired " pulumi-lang-python="`assignment_required " pulumi-lang-yaml="`assignmentRequired " pulumi-lang-java="`assignmentRequired ">`assignment_required </span>= true`).
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
/// const example = new aws.ssoadmin.ApplicationAssignmentConfiguration("example", {
/// applicationArn: exampleAwsSsoadminApplication.arn,
/// assignmentRequired: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssoadmin.ApplicationAssignmentConfiguration("example",
/// application_arn=example_aws_ssoadmin_application["arn"],
/// assignment_required=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.SsoAdmin.ApplicationAssignmentConfiguration("example", new()
/// {
/// ApplicationArn = exampleAwsSsoadminApplication.Arn,
/// AssignmentRequired = true,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssoadmin"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ssoadmin.NewApplicationAssignmentConfiguration(ctx, "example", &ssoadmin.ApplicationAssignmentConfigurationArgs{
/// ApplicationArn:     pulumi.Any(exampleAwsSsoadminApplication.Arn),
/// AssignmentRequired: pulumi.Bool(true),
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
/// import com.pulumi.aws.ssoadmin.ApplicationAssignmentConfiguration;
/// import com.pulumi.aws.ssoadmin.ApplicationAssignmentConfigurationArgs;
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
/// var example = new ApplicationAssignmentConfiguration("example", ApplicationAssignmentConfigurationArgs.builder()
/// .applicationArn(exampleAwsSsoadminApplication.arn())
/// .assignmentRequired(true)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ssoadmin:ApplicationAssignmentConfiguration
/// properties:
/// applicationArn: ${exampleAwsSsoadminApplication.arn}
/// assignmentRequired: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> (String) Amazon Resource Name (ARN) of the SSO application.
///
///
/// Using `pulumi import`, import SSO Admin Application Assignment Configuration using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:ssoadmin/applicationAssignmentConfiguration:ApplicationAssignmentConfiguration example arn:aws:sso::123456789012:application/id-12345678
/// ```
class ApplicationAssignmentConfiguration extends CustomResource {
  /// ARN of the application.
  late final Output<String> applicationArn;

  /// Indicates whether users must have an explicit assignment to access the application. If <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>, all users have access to the application.
  late final Output<bool> assignmentRequired;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  ApplicationAssignmentConfiguration(
    String name, {
    ApplicationAssignmentConfigurationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ssoadmin/applicationAssignmentConfiguration:ApplicationAssignmentConfiguration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.applicationArn = registerOutput<String>('applicationArn');
    this.assignmentRequired = registerOutput<bool>('assignmentRequired');
    this.region = registerOutput<String>('region');
  }
}
