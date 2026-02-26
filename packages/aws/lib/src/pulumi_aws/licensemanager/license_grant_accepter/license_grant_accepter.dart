import 'package:pulumi/pulumi.dart';
import 'license_grant_accepter_args.dart';

/// Accepts a License Manager grant. This allows for sharing licenses with other aws accounts.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.licensemanager.LicenseGrantAccepter("test", {grantArn: "arn:aws:license-manager::123456789012:grant:g-1cf9fba4ba2f42dcab11c686c4b4d329"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.licensemanager.LicenseGrantAccepter("test", grant_arn="arn:aws:license-manager::123456789012:grant:g-1cf9fba4ba2f42dcab11c686c4b4d329")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = new Aws.LicenseManager.LicenseGrantAccepter("test", new()
/// {
/// GrantArn = "arn:aws:license-manager::123456789012:grant:g-1cf9fba4ba2f42dcab11c686c4b4d329",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/licensemanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := licensemanager.NewLicenseGrantAccepter(ctx, "test", &licensemanager.LicenseGrantAccepterArgs{
/// GrantArn: pulumi.String("arn:aws:license-manager::123456789012:grant:g-1cf9fba4ba2f42dcab11c686c4b4d329"),
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
/// import com.pulumi.aws.licensemanager.LicenseGrantAccepter;
/// import com.pulumi.aws.licensemanager.LicenseGrantAccepterArgs;
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
/// var test = new LicenseGrantAccepter("test", LicenseGrantAccepterArgs.builder()
/// .grantArn("arn:aws:license-manager::123456789012:grant:g-1cf9fba4ba2f42dcab11c686c4b4d329")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:licensemanager:LicenseGrantAccepter
/// properties:
/// grantArn: arn:aws:license-manager::123456789012:grant:g-1cf9fba4ba2f42dcab11c686c4b4d329
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.licensemanager.LicenseGrantAccepter`" pulumi-lang-dotnet="`aws.licensemanager.LicenseGrantAccepter`" pulumi-lang-go="`licensemanager.LicenseGrantAccepter`" pulumi-lang-python="`licensemanager.LicenseGrantAccepter`" pulumi-lang-yaml="`aws.licensemanager.LicenseGrantAccepter`" pulumi-lang-java="`aws.licensemanager.LicenseGrantAccepter`">`aws.licensemanager.LicenseGrantAccepter`</span> using the grant arn. For example:
///
/// ```sh
/// $ pulumi import aws:licensemanager/licenseGrantAccepter:LicenseGrantAccepter test arn:aws:license-manager::123456789012:grant:g-1cf9fba4ba2f42dcab11c686c4b4d329
/// ```
class LicenseGrantAccepter extends CustomResource {
  /// A list of the allowed operations for the grant.
  late final Output<List<String>> allowedOperations;

  /// The ARN of the grant to accept.
  late final Output<String> grantArn;

  /// The home region for the license.
  late final Output<String> homeRegion;

  /// The ARN of the license for the grant.
  late final Output<String> licenseArn;

  /// The Name of the grant.
  late final Output<String> name;

  /// The parent ARN.
  late final Output<String> parentArn;

  /// The target account for the grant.
  late final Output<String> principal;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The grant status.
  late final Output<String> status;

  /// The grant version.
  late final Output<String> version;

  LicenseGrantAccepter(
    String name, {
    LicenseGrantAccepterArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:licensemanager/licenseGrantAccepter:LicenseGrantAccepter',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.allowedOperations = Output.createUnknown<List<String>>();
    this.grantArn = Output.createUnknown<String>();
    this.homeRegion = Output.createUnknown<String>();
    this.licenseArn = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.parentArn = Output.createUnknown<String>();
    this.principal = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.status = Output.createUnknown<String>();
    this.version = Output.createUnknown<String>();
  }
}
