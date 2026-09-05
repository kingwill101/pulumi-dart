import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_assignment_configuration_args.dart';
import 'application_assignment_configuration_state.dart';

/// Resource for managing an AWS SSO Admin Application Assignment Configuration.
///
/// By default, applications will require users to have an explicit assignment in order to access an application.
/// This resource can be used to adjust this default behavior if necessary.
///
/// &gt; Deleting this resource will return the assignment configuration for the application to the default AWS behavior (ie. `assignmentRequired = true`).
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
/// const example = new aws.ssoadmin.ApplicationAssignmentConfiguration("example", {
///     applicationArn: exampleAwsSsoadminApplication.arn,
///     assignmentRequired: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssoadmin.ApplicationAssignmentConfiguration("example",
///     application_arn=example_aws_ssoadmin_application["arn"],
///     assignment_required=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.SsoAdmin.ApplicationAssignmentConfiguration("example", new()
///     {
///         ApplicationArn = exampleAwsSsoadminApplication.Arn,
///         AssignmentRequired = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssoadmin"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ssoadmin.NewApplicationAssignmentConfiguration(ctx, "example", &ssoadmin.ApplicationAssignmentConfigurationArgs{
/// 			ApplicationArn:     pulumi.Any(exampleAwsSsoadminApplication.Arn),
/// 			AssignmentRequired: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_ssoadmin_applicationassignmentconfiguration" "example" {
///   application_arn     = exampleAwsSsoadminApplication.arn
///   assignment_required = true
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new ApplicationAssignmentConfiguration("example", ApplicationAssignmentConfigurationArgs.builder()
///             .applicationArn(exampleAwsSsoadminApplication.arn())
///             .assignmentRequired(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ssoadmin:ApplicationAssignmentConfiguration
///     properties:
///       applicationArn: ${exampleAwsSsoadminApplication.arn}
///       assignmentRequired: true
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `applicationArn` (String) ARN of the SSO application.
///
/// #### Optional
///
/// - `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import SSO Admin Application Assignment Configuration using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ssoadmin/applicationAssignmentConfiguration:ApplicationAssignmentConfiguration example arn:aws:sso::123456789012:application/id-12345678
/// ```
class ApplicationAssignmentConfiguration extends pulumi.CustomResource {
  /// ARN of the application.
  late final pulumi.Output<String> applicationArn;
  /// Indicates whether users must have an explicit assignment to access the application. If `false`, all users have access to the application.
  late final pulumi.Output<bool> assignmentRequired;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [ApplicationAssignmentConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApplicationAssignmentConfiguration]. {@macro pulumi_ssoadmin_application_assignment_configuration_application_assignment_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApplicationAssignmentConfiguration(
    String name, {
    ApplicationAssignmentConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssoadmin/applicationAssignmentConfiguration:ApplicationAssignmentConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    applicationArn = registerOutput<String>('applicationArn');
    assignmentRequired = registerOutput<bool>('assignmentRequired');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [ApplicationAssignmentConfiguration] resource's state with the given [name] and [id].
  static ApplicationAssignmentConfiguration get(
    String name,
    pulumi.Input<String> id, {
    ApplicationAssignmentConfigurationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ApplicationAssignmentConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ApplicationAssignmentConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssoadmin/applicationAssignmentConfiguration:ApplicationAssignmentConfiguration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applicationArn = registerOutput<String>('applicationArn');
    assignmentRequired = registerOutput<bool>('assignmentRequired');
    region = registerOutput<String>('region');
  }

  /// Creates a typed reference to an existing [ApplicationAssignmentConfiguration] resource.
  ApplicationAssignmentConfiguration.reference(String urn)
    : super(
        'aws:ssoadmin/applicationAssignmentConfiguration:ApplicationAssignmentConfiguration',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    applicationArn = registerOutput<String>('applicationArn');
    assignmentRequired = registerOutput<bool>('assignmentRequired');
    region = registerOutput<String>('region');
  }
}
