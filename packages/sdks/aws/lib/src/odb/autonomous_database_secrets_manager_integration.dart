import 'package:pulumi/pulumi.dart' as pulumi;
import 'autonomous_database_secrets_manager_integration_args.dart';
import 'autonomous_database_secrets_manager_integration_state.dart';
import 'autonomous_database_secrets_manager_integration_timeouts.dart';

/// Manages the Oracle Database@AWS Autonomous Database Serverless integration with AWS Secrets Manager. The resource provisions an Oracle-managed service role that can assume a customer-managed role to read an administrator-password secret.
///
/// &gt; **Note:** This integration is shared by all databases in the AWS account and Region. Creating this resource manages the existing integration if it is already enabled. Destroying this resource disables the integration for the entire account and Region, which can disrupt databases outside this Terraform configuration that use AWS Secrets Manager credentials. Manage the integration in only one Terraform configuration and coordinate changes with all database owners that depend on it.
///
/// For accounts with a resource anchor, creating or destroying this resource preserves an existing OCI identity domain. If no identity domain exists, the service creates one when enabling or disabling the integration. This resource does not delete the identity domain.
///
/// Create the customer-managed IAM role separately. Its trust policy must allow the exported `roleArn` to assume it, and its permissions must grant access to the selected secret. See the [AWS Secrets Manager documentation](https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html) for IAM permission guidance.
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
/// const example = new aws.odb.AutonomousDatabaseSecretsManagerIntegration("example", {});
/// export const adbsSecretsManagerServiceRoleArn = example.roleArn;
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.odb.AutonomousDatabaseSecretsManagerIntegration("example")
/// pulumi.export("adbsSecretsManagerServiceRoleArn", example.role_arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Odb.AutonomousDatabaseSecretsManagerIntegration("example");
///
///     return new Dictionary<string, object?>
///     {
///         ["adbsSecretsManagerServiceRoleArn"] = example.RoleArn,
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/odb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := odb.NewAutonomousDatabaseSecretsManagerIntegration(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("adbsSecretsManagerServiceRoleArn", example.RoleArn)
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
/// resource "aws_odb_autonomousdatabasesecretsmanagerintegration" "example" {
/// }
/// output "adbsSecretsManagerServiceRoleArn" {
///   value = aws_odb_autonomousdatabasesecretsmanagerintegration.example.role_arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.odb.AutonomousDatabaseSecretsManagerIntegration;
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
///         var example = new AutonomousDatabaseSecretsManagerIntegration("example");
///
///         ctx.export("adbsSecretsManagerServiceRoleArn", example.roleArn());
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:odb:AutonomousDatabaseSecretsManagerIntegration
/// outputs:
///   adbsSecretsManagerServiceRoleArn: ${example.roleArn}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import the integration using its Region. For example:
///
/// ```sh
/// $ pulumi import aws:odb/autonomousDatabaseSecretsManagerIntegration:AutonomousDatabaseSecretsManagerIntegration example us-east-1
/// ```
class AutonomousDatabaseSecretsManagerIntegration extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN of the Oracle-managed service role that assumes the customer-managed IAM role.
  late final pulumi.Output<String> roleArn;
  /// Current lifecycle status of the service role.
  late final pulumi.Output<String> status;
  /// Additional lifecycle-status information, if available.
  late final pulumi.Output<String> statusReason;
  late final pulumi.Output<AutonomousDatabaseSecretsManagerIntegrationTimeouts?> timeouts;

  /// Creates a new [AutonomousDatabaseSecretsManagerIntegration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AutonomousDatabaseSecretsManagerIntegration]. {@macro pulumi_odb_autonomous_database_secrets_manager_integration_autonomous_database_secrets_manager_integration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AutonomousDatabaseSecretsManagerIntegration(
    String name, {
    AutonomousDatabaseSecretsManagerIntegrationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:odb/autonomousDatabaseSecretsManagerIntegration:AutonomousDatabaseSecretsManagerIntegration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.51.1').merge(options),
        ) {
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    status = registerOutput<String>('status');
    statusReason = registerOutput<String>('statusReason');
    timeouts = registerOutput<AutonomousDatabaseSecretsManagerIntegrationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutonomousDatabaseSecretsManagerIntegrationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [AutonomousDatabaseSecretsManagerIntegration] resource's state with the given [name] and [id].
  static AutonomousDatabaseSecretsManagerIntegration get(
    String name,
    pulumi.Input<String> id, {
    AutonomousDatabaseSecretsManagerIntegrationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AutonomousDatabaseSecretsManagerIntegration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AutonomousDatabaseSecretsManagerIntegration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:odb/autonomousDatabaseSecretsManagerIntegration:AutonomousDatabaseSecretsManagerIntegration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    status = registerOutput<String>('status');
    statusReason = registerOutput<String>('statusReason');
    timeouts = registerOutput<AutonomousDatabaseSecretsManagerIntegrationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutonomousDatabaseSecretsManagerIntegrationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [AutonomousDatabaseSecretsManagerIntegration] resource.
  AutonomousDatabaseSecretsManagerIntegration.reference(String urn)
    : super(
        'aws:odb/autonomousDatabaseSecretsManagerIntegration:AutonomousDatabaseSecretsManagerIntegration',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    status = registerOutput<String>('status');
    statusReason = registerOutput<String>('statusReason');
    timeouts = registerOutput<AutonomousDatabaseSecretsManagerIntegrationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutonomousDatabaseSecretsManagerIntegrationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
