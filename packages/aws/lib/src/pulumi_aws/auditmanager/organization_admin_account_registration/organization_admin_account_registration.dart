import 'package:pulumi/pulumi.dart';
import 'organization_admin_account_registration_args.dart';

/// Resource for managing AWS Audit Manager Organization Admin Account Registration.
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
/// var example = new Aws.Auditmanager.OrganizationAdminAccountRegistration("example", new()
/// {
/// AdminAccountId = "123456789012",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/auditmanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := auditmanager.NewOrganizationAdminAccountRegistration(ctx, "example", &auditmanager.OrganizationAdminAccountRegistrationArgs{
/// AdminAccountId: pulumi.String("123456789012"),
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
/// import com.pulumi.aws.auditmanager.OrganizationAdminAccountRegistration;
/// import com.pulumi.aws.auditmanager.OrganizationAdminAccountRegistrationArgs;
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
/// var example = new OrganizationAdminAccountRegistration("example", OrganizationAdminAccountRegistrationArgs.builder()
/// .adminAccountId("123456789012")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:auditmanager:OrganizationAdminAccountRegistration
/// properties:
/// adminAccountId: '123456789012'
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Audit Manager Organization Admin Account Registration using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:auditmanager/organizationAdminAccountRegistration:OrganizationAdminAccountRegistration example 123456789012
/// ```
class OrganizationAdminAccountRegistration extends CustomResource {
  /// Identifier for the organization administrator account.
  late final Output<String> adminAccountId;

  /// Identifier for the organization.
  late final Output<String> organizationId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  OrganizationAdminAccountRegistration(
    String name, {
    OrganizationAdminAccountRegistrationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:auditmanager/organizationAdminAccountRegistration:OrganizationAdminAccountRegistration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.adminAccountId = Output.createUnknown<String>();
    this.organizationId = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
  }
}
