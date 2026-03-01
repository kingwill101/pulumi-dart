import 'package:pulumi/pulumi.dart' as pulumi;
import 'license_grant_args.dart';

/// Provides a License Manager grant. This allows for sharing licenses with other AWS accounts.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.licensemanager.LicenseGrant("test", {
///     name: "share-license-with-account",
///     allowedOperations: [
///         "ListPurchasedLicenses",
///         "CheckoutLicense",
///         "CheckInLicense",
///         "ExtendConsumptionLicense",
///         "CreateToken",
///     ],
///     licenseArn: "arn:aws:license-manager::111111111111:license:l-exampleARN",
///     principal: "arn:aws:iam::111111111112:root",
///     homeRegion: "us-east-1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.licensemanager.LicenseGrant("test",
///     name="share-license-with-account",
///     allowed_operations=[
///         "ListPurchasedLicenses",
///         "CheckoutLicense",
///         "CheckInLicense",
///         "ExtendConsumptionLicense",
///         "CreateToken",
///     ],
///     license_arn="arn:aws:license-manager::111111111111:license:l-exampleARN",
///     principal="arn:aws:iam::111111111112:root",
///     home_region="us-east-1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.LicenseManager.LicenseGrant("test", new()
///     {
///         Name = "share-license-with-account",
///         AllowedOperations = new[]
///         {
///             "ListPurchasedLicenses",
///             "CheckoutLicense",
///             "CheckInLicense",
///             "ExtendConsumptionLicense",
///             "CreateToken",
///         },
///         LicenseArn = "arn:aws:license-manager::111111111111:license:l-exampleARN",
///         Principal = "arn:aws:iam::111111111112:root",
///         HomeRegion = "us-east-1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/licensemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := licensemanager.NewLicenseGrant(ctx, "test", &licensemanager.LicenseGrantArgs{
/// 			Name: pulumi.String("share-license-with-account"),
/// 			AllowedOperations: pulumi.StringArray{
/// 				pulumi.String("ListPurchasedLicenses"),
/// 				pulumi.String("CheckoutLicense"),
/// 				pulumi.String("CheckInLicense"),
/// 				pulumi.String("ExtendConsumptionLicense"),
/// 				pulumi.String("CreateToken"),
/// 			},
/// 			LicenseArn: pulumi.String("arn:aws:license-manager::111111111111:license:l-exampleARN"),
/// 			Principal:  pulumi.String("arn:aws:iam::111111111112:root"),
/// 			HomeRegion: "us-east-1",
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var test = new LicenseGrant("test", LicenseGrantArgs.builder()
///             .name("share-license-with-account")
///             .allowedOperations(
///                 "ListPurchasedLicenses",
///                 "CheckoutLicense",
///                 "CheckInLicense",
///                 "ExtendConsumptionLicense",
///                 "CreateToken")
///             .licenseArn("arn:aws:license-manager::111111111111:license:l-exampleARN")
///             .principal("arn:aws:iam::111111111112:root")
///             .homeRegion("us-east-1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:licensemanager:LicenseGrant
///     properties:
///       name: share-license-with-account
///       allowedOperations:
///         - ListPurchasedLicenses
///         - CheckoutLicense
///         - CheckInLicense
///         - ExtendConsumptionLicense
///         - CreateToken
///       licenseArn: arn:aws:license-manager::111111111111:license:l-exampleARN
///       principal: arn:aws:iam::111111111112:root
///       homeRegion: us-east-1
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.licensemanager.LicenseGrant` using the grant arn. For example:
///
/// ```sh
/// $ pulumi import aws:licensemanager/licenseGrant:LicenseGrant test arn:aws:license-manager::123456789011:grant:g-01d313393d9e443d8664cc054db1e089
/// ```
class LicenseGrant extends pulumi.CustomResource {
  /// A list of the allowed operations for the grant. This is a subset of the allowed operations on the license.
  late final pulumi.Output<List<String>> allowedOperations;

  /// The grant ARN.
  late final pulumi.Output<String> arn;

  /// The home region for the license.
  late final pulumi.Output<String> homeRegion;

  /// The ARN of the license to grant.
  late final pulumi.Output<String> licenseArn;

  /// The Name of the grant.
  late final pulumi.Output<String> name;

  /// The parent ARN.
  late final pulumi.Output<String> parentArn;

  /// The target account for the grant in the form of the ARN for an account principal of the root user.
  late final pulumi.Output<String> principal;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The grant status.
  late final pulumi.Output<String> status;

  /// The grant version.
  late final pulumi.Output<String> version;

  /// Creates a new [LicenseGrant].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LicenseGrant]. {@macro pulumi_licensemanager_license_grant_license_grant_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LicenseGrant(
    String name, {
    LicenseGrantArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:licensemanager/licenseGrant:LicenseGrant',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.allowedOperations = registerOutput<List<String>>('allowedOperations');
    this.arn = registerOutput<String>('arn');
    this.homeRegion = registerOutput<String>('homeRegion');
    this.licenseArn = registerOutput<String>('licenseArn');
    this.name = registerOutput<String>('name');
    this.parentArn = registerOutput<String>('parentArn');
    this.principal = registerOutput<String>('principal');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
    this.version = registerOutput<String>('version');
  }
}
