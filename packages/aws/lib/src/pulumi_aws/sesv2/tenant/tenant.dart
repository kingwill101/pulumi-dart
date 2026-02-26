import 'package:pulumi/pulumi.dart';
import 'tenant_args.dart';

/// Manages an AWS SESv2 (Simple Email V2) Tenant.
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
/// const example = new aws.sesv2.Tenant("example", {
/// tenantName: "example-tenant",
/// tags: {
/// Environment: "test",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sesv2.Tenant("example",
/// tenant_name="example-tenant",
/// tags={
/// "Environment": "test",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.SesV2.Tenant("example", new()
/// {
/// TenantName = "example-tenant",
/// Tags =
/// {
/// { "Environment", "test" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sesv2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := sesv2.NewTenant(ctx, "example", &sesv2.TenantArgs{
/// TenantName: pulumi.String("example-tenant"),
/// Tags: pulumi.StringMap{
/// "Environment": pulumi.String("test"),
/// },
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
/// import com.pulumi.aws.sesv2.Tenant;
/// import com.pulumi.aws.sesv2.TenantArgs;
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
/// var example = new Tenant("example", TenantArgs.builder()
/// .tenantName("example-tenant")
/// .tags(Map.of("Environment", "test"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:sesv2:Tenant
/// properties:
/// tenantName: example-tenant
/// tags:
/// Environment: test
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import an SESv2 Tenant using the <span pulumi-lang-nodejs="`tenantName`" pulumi-lang-dotnet="`TenantName`" pulumi-lang-go="`tenantName`" pulumi-lang-python="`tenant_name`" pulumi-lang-yaml="`tenantName`" pulumi-lang-java="`tenantName`">`tenant_name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:sesv2/tenant:Tenant example example-tenant
/// ```
class Tenant extends CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Current sending status of the tenant.
  late final Output<String> sendingStatus;

  /// Map of tags to assign to the tenant.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the tenant, including provider default tags.
  late final Output<Map<String, String>> tagsAll;

  /// ARN of the Tenant.
  late final Output<String> tenantArn;

  /// ID of the Tenant.
  late final Output<String> tenantId;

  /// Name of the SESV2 tenant.  The name must be unique within the AWS account and Region.  Changing the tenant name forces creation of a new tenant.
  ///
  /// The following arguments are optional:
  late final Output<String> tenantName;

  Tenant(
    String name, {
    TenantArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:sesv2/tenant:Tenant',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.region = Output.createUnknown<String>();
    this.sendingStatus = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.tenantArn = Output.createUnknown<String>();
    this.tenantId = Output.createUnknown<String>();
    this.tenantName = Output.createUnknown<String>();
  }
}
