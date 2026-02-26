import 'package:pulumi/pulumi.dart';
import 'license_grant_args.dart';

/// Provides a License Manager grant. This allows for sharing licenses with other AWS accounts.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.licensemanager.LicenseGrant("test", {
/// name: "share-license-with-account",
/// allowedOperations: [
/// "ListPurchasedLicenses",
/// "CheckoutLicense",
/// "CheckInLicense",
/// "ExtendConsumptionLicense",
/// "CreateToken",
/// ],
/// licenseArn: "arn:aws:license-manager::111111111111:license:l-exampleARN",
/// principal: "arn:aws:iam::111111111112:root",
/// homeRegion: "us-east-1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.licensemanager.LicenseGrant("test",
/// name="share-license-with-account",
/// allowed_operations=[
/// "ListPurchasedLicenses",
/// "CheckoutLicense",
/// "CheckInLicense",
/// "ExtendConsumptionLicense",
/// "CreateToken",
/// ],
/// license_arn="arn:aws:license-manager::111111111111:license:l-exampleARN",
/// principal="arn:aws:iam::111111111112:root",
/// home_region="us-east-1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = new Aws.LicenseManager.LicenseGrant("test", new()
/// {
/// Name = "share-license-with-account",
/// AllowedOperations = new[]
/// {
/// "ListPurchasedLicenses",
/// "CheckoutLicense",
/// "CheckInLicense",
/// "ExtendConsumptionLicense",
/// "CreateToken",
/// },
/// LicenseArn = "arn:aws:license-manager::111111111111:license:l-exampleARN",
/// Principal = "arn:aws:iam::111111111112:root",
/// HomeRegion = "us-east-1",
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
/// _, err := licensemanager.NewLicenseGrant(ctx, "test", &licensemanager.LicenseGrantArgs{
/// Name: pulumi.String("share-license-with-account"),
/// AllowedOperations: pulumi.StringArray{
/// pulumi.String("ListPurchasedLicenses"),
/// pulumi.String("CheckoutLicense"),
/// pulumi.String("CheckInLicense"),
/// pulumi.String("ExtendConsumptionLicense"),
/// pulumi.String("CreateToken"),
/// },
/// LicenseArn: pulumi.String("arn:aws:license-manager::111111111111:license:l-exampleARN"),
/// Principal:  pulumi.String("arn:aws:iam::111111111112:root"),
/// HomeRegion: "us-east-1",
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
/// import com.pulumi.aws.licensemanager.LicenseGrant;
/// import com.pulumi.aws.licensemanager.LicenseGrantArgs;
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
/// var test = new LicenseGrant("test", LicenseGrantArgs.builder()
/// .name("share-license-with-account")
/// .allowedOperations(
/// "ListPurchasedLicenses",
/// "CheckoutLicense",
/// "CheckInLicense",
/// "ExtendConsumptionLicense",
/// "CreateToken")
/// .licenseArn("arn:aws:license-manager::111111111111:license:l-exampleARN")
/// .principal("arn:aws:iam::111111111112:root")
/// .homeRegion("us-east-1")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:licensemanager:LicenseGrant
/// properties:
/// name: share-license-with-account
/// allowedOperations:
/// - ListPurchasedLicenses
/// - CheckoutLicense
/// - CheckInLicense
/// - ExtendConsumptionLicense
/// - CreateToken
/// licenseArn: arn:aws:license-manager::111111111111:license:l-exampleARN
/// principal: arn:aws:iam::111111111112:root
/// homeRegion: us-east-1
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.licensemanager.LicenseGrant`" pulumi-lang-dotnet="`aws.licensemanager.LicenseGrant`" pulumi-lang-go="`licensemanager.LicenseGrant`" pulumi-lang-python="`licensemanager.LicenseGrant`" pulumi-lang-yaml="`aws.licensemanager.LicenseGrant`" pulumi-lang-java="`aws.licensemanager.LicenseGrant`">`aws.licensemanager.LicenseGrant`</span> using the grant arn. For example:
///
/// ```sh
/// $ pulumi import aws:licensemanager/licenseGrant:LicenseGrant test arn:aws:license-manager::123456789011:grant:g-01d313393d9e443d8664cc054db1e089
/// ```
class LicenseGrant extends CustomResource {
  /// A list of the allowed operations for the grant. This is a subset of the allowed operations on the license.
  late final Output<List<String>> allowedOperations;

  /// The grant ARN.
  late final Output<String> arn;

  /// The home region for the license.
  late final Output<String> homeRegion;

  /// The ARN of the license to grant.
  late final Output<String> licenseArn;

  /// The Name of the grant.
  late final Output<String> name;

  /// The parent ARN.
  late final Output<String> parentArn;

  /// The target account for the grant in the form of the ARN for an account principal of the root user.
  late final Output<String> principal;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The grant status.
  late final Output<String> status;

  /// The grant version.
  late final Output<String> version;

  LicenseGrant(
    String name, {
    LicenseGrantArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:licensemanager/licenseGrant:LicenseGrant',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.allowedOperations = Output.createUnknown<List<String>>();
    this.arn = Output.createUnknown<String>();
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
