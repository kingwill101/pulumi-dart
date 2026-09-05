import 'package:pulumi/pulumi.dart' as pulumi;
import 'license_grant_accepter_args.dart';
import 'license_grant_accepter_state.dart';

/// Accepts a License Manager grant. This allows for sharing licenses with other aws accounts.
///
/// ## Example Usage
///
///
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
///     var test = new Aws.LicenseManager.LicenseGrantAccepter("test", new()
///     {
///         GrantArn = "arn:aws:license-manager::123456789012:grant:g-1cf9fba4ba2f42dcab11c686c4b4d329",
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
/// 		_, err := licensemanager.NewLicenseGrantAccepter(ctx, "test", &licensemanager.LicenseGrantAccepterArgs{
/// 			GrantArn: pulumi.String("arn:aws:license-manager::123456789012:grant:g-1cf9fba4ba2f42dcab11c686c4b4d329"),
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
/// resource "aws_licensemanager_licensegrantaccepter" "test" {
///   grant_arn = "arn:aws:license-manager::123456789012:grant:g-1cf9fba4ba2f42dcab11c686c4b4d329"
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
///         var test = new LicenseGrantAccepter("test", LicenseGrantAccepterArgs.builder()
///             .grantArn("arn:aws:license-manager::123456789012:grant:g-1cf9fba4ba2f42dcab11c686c4b4d329")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:licensemanager:LicenseGrantAccepter
///     properties:
///       grantArn: arn:aws:license-manager::123456789012:grant:g-1cf9fba4ba2f42dcab11c686c4b4d329
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.licensemanager.LicenseGrantAccepter` using the grant arn. For example:
///
/// ```sh
/// $ pulumi import aws:licensemanager/licenseGrantAccepter:LicenseGrantAccepter test arn:aws:license-manager::123456789012:grant:g-1cf9fba4ba2f42dcab11c686c4b4d329
/// ```
class LicenseGrantAccepter extends pulumi.CustomResource {
  /// A list of the allowed operations for the grant.
  late final pulumi.Output<List<String>> allowedOperations;
  /// The ARN of the grant to accept.
  late final pulumi.Output<String> grantArn;
  /// The home region for the license.
  late final pulumi.Output<String> homeRegion;
  /// The ARN of the license for the grant.
  late final pulumi.Output<String> licenseArn;
  /// The Name of the grant.
  late final pulumi.Output<String> name;
  /// The parent ARN.
  late final pulumi.Output<String> parentArn;
  /// The target account for the grant.
  late final pulumi.Output<String> principal;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The grant status.
  late final pulumi.Output<String> status;
  /// The grant version.
  late final pulumi.Output<String> version;

  /// Creates a new [LicenseGrantAccepter].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LicenseGrantAccepter]. {@macro pulumi_licensemanager_license_grant_accepter_license_grant_accepter_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LicenseGrantAccepter(
    String name, {
    LicenseGrantAccepterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:licensemanager/licenseGrantAccepter:LicenseGrantAccepter',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    allowedOperations = registerOutput<List<String>>('allowedOperations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    grantArn = registerOutput<String>('grantArn');
    homeRegion = registerOutput<String>('homeRegion');
    licenseArn = registerOutput<String>('licenseArn');
    this.name = registerOutput<String>('name');
    parentArn = registerOutput<String>('parentArn');
    principal = registerOutput<String>('principal');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    version = registerOutput<String>('version');
  }

  /// Gets an existing [LicenseGrantAccepter] resource's state with the given [name] and [id].
  static LicenseGrantAccepter get(
    String name,
    pulumi.Input<String> id, {
    LicenseGrantAccepterState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return LicenseGrantAccepter._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  LicenseGrantAccepter._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:licensemanager/licenseGrantAccepter:LicenseGrantAccepter',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowedOperations = registerOutput<List<String>>('allowedOperations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    grantArn = registerOutput<String>('grantArn');
    homeRegion = registerOutput<String>('homeRegion');
    licenseArn = registerOutput<String>('licenseArn');
    this.name = registerOutput<String>('name');
    parentArn = registerOutput<String>('parentArn');
    principal = registerOutput<String>('principal');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    version = registerOutput<String>('version');
  }

  /// Creates a typed reference to an existing [LicenseGrantAccepter] resource.
  LicenseGrantAccepter.reference(String urn)
    : super(
        'aws:licensemanager/licenseGrantAccepter:LicenseGrantAccepter',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    allowedOperations = registerOutput<List<String>>('allowedOperations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    grantArn = registerOutput<String>('grantArn');
    homeRegion = registerOutput<String>('homeRegion');
    licenseArn = registerOutput<String>('licenseArn');
    this.name = registerOutput<String>('name');
    parentArn = registerOutput<String>('parentArn');
    principal = registerOutput<String>('principal');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    version = registerOutput<String>('version');
  }
}
