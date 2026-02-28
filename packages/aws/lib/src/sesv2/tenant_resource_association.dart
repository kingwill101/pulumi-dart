import 'package:pulumi/pulumi.dart' as pulumi;
import 'tenant_resource_association_args.dart';

/// Manages an AWS SESv2 (Simple Email V2) Tenant Resource Association.
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
/// const example = new aws.sesv2.TenantResourceAssociation("example", {
///     tenantName: "example-tenant",
///     resourceArn: "arn:aws:ses:us-east-1:123456789012:configuration-set/example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sesv2.TenantResourceAssociation("example",
///     tenant_name="example-tenant",
///     resource_arn="arn:aws:ses:us-east-1:123456789012:configuration-set/example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.SesV2.TenantResourceAssociation("example", new()
///     {
///         TenantName = "example-tenant",
///         ResourceArn = "arn:aws:ses:us-east-1:123456789012:configuration-set/example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sesv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sesv2.NewTenantResourceAssociation(ctx, "example", &sesv2.TenantResourceAssociationArgs{
/// 			TenantName:  pulumi.String("example-tenant"),
/// 			ResourceArn: pulumi.String("arn:aws:ses:us-east-1:123456789012:configuration-set/example"),
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
/// import com.pulumi.aws.sesv2.TenantResourceAssociation;
/// import com.pulumi.aws.sesv2.TenantResourceAssociationArgs;
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
///         var example = new TenantResourceAssociation("example", TenantResourceAssociationArgs.builder()
///             .tenantName("example-tenant")
///             .resourceArn("arn:aws:ses:us-east-1:123456789012:configuration-set/example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:sesv2:TenantResourceAssociation
///     properties:
///       tenantName: example-tenant
///       resourceArn: arn:aws:ses:us-east-1:123456789012:configuration-set/example
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import SESv2 (Simple Email V2) Tenant Resource Association using the `tenant_name` and `resource_arn` separated by `|`. For example:
///
/// ```sh
/// $ pulumi import aws:sesv2/tenantResourceAssociation:TenantResourceAssociation example "example-tenant|arn:aws:ses:us-east-1:123456789012:configuration-set/example"
/// ```
class TenantResourceAssociation extends pulumi.CustomResource {
  /// AWS region for SESv2 operations. If not specified, the default provider region is used.
  late final pulumi.Output<String> region;

  /// ARN of the SES resource to associate with the tenant.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> resourceArn;

  /// Name of SES Tenant.
  late final pulumi.Output<String> tenantName;

  /// Creates a new [TenantResourceAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TenantResourceAssociation]. {@macro pulumi_sesv2_tenant_resource_association_tenant_resource_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TenantResourceAssociation(
    String name, {
    TenantResourceAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sesv2/tenantResourceAssociation:TenantResourceAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.resourceArn = registerOutput<String>('resourceArn');
    this.tenantName = registerOutput<String>('tenantName');
  }
}
