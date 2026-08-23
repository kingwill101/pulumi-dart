import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_admin_account_registration_args.dart';
import 'organization_admin_account_registration_state.dart';

/// Resource for managing AWS Audit Manager Organization Admin Account Registration.
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
/// const example = new aws.auditmanager.OrganizationAdminAccountRegistration("example", {adminAccountId: "123456789012"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.auditmanager.OrganizationAdminAccountRegistration("example", admin_account_id="123456789012")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Auditmanager.OrganizationAdminAccountRegistration("example", new()
///     {
///         AdminAccountId = "123456789012",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/auditmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := auditmanager.NewOrganizationAdminAccountRegistration(ctx, "example", &auditmanager.OrganizationAdminAccountRegistrationArgs{
/// 			AdminAccountId: pulumi.String("123456789012"),
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
/// resource "aws_auditmanager_organizationadminaccountregistration" "example" {
///   admin_account_id = "123456789012"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.auditmanager.OrganizationAdminAccountRegistration;
/// import com.pulumi.aws.auditmanager.OrganizationAdminAccountRegistrationArgs;
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
///         var example = new OrganizationAdminAccountRegistration("example", OrganizationAdminAccountRegistrationArgs.builder()
///             .adminAccountId("123456789012")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:auditmanager:OrganizationAdminAccountRegistration
///     properties:
///       adminAccountId: '123456789012'
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Audit Manager Organization Admin Account Registration using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:auditmanager/organizationAdminAccountRegistration:OrganizationAdminAccountRegistration example 123456789012
/// ```
class OrganizationAdminAccountRegistration extends pulumi.CustomResource {
  /// Identifier for the organization administrator account.
  late final pulumi.Output<String> adminAccountId;
  /// Identifier for the organization.
  late final pulumi.Output<String> organizationId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [OrganizationAdminAccountRegistration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OrganizationAdminAccountRegistration]. {@macro pulumi_auditmanager_organization_admin_account_registration_organization_admin_account_registration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OrganizationAdminAccountRegistration(
    String name, {
    OrganizationAdminAccountRegistrationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:auditmanager/organizationAdminAccountRegistration:OrganizationAdminAccountRegistration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    adminAccountId = registerOutput<String>('adminAccountId');
    organizationId = registerOutput<String>('organizationId');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [OrganizationAdminAccountRegistration] resource's state with the given [name] and [id].
  static OrganizationAdminAccountRegistration get(
    String name,
    pulumi.Input<String> id, {
    OrganizationAdminAccountRegistrationState? state,
  }) {
    return OrganizationAdminAccountRegistration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  OrganizationAdminAccountRegistration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:auditmanager/organizationAdminAccountRegistration:OrganizationAdminAccountRegistration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    adminAccountId = registerOutput<String>('adminAccountId');
    organizationId = registerOutput<String>('organizationId');
    region = registerOutput<String>('region');
  }
}
