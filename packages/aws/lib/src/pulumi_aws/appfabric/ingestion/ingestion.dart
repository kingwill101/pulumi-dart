import 'package:pulumi/pulumi.dart';
import 'ingestion_args.dart';

/// Resource for managing an AWS AppFabric Ingestion.
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
/// const example = new aws.appfabric.Ingestion("example", {
/// app: "OKTA",
/// appBundleArn: exampleAwsAppfabricAppBundle.arn,
/// tenantId: "example.okta.com",
/// ingestionType: "auditLog",
/// tags: {
/// Environment: "test",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.appfabric.Ingestion("example",
/// app="OKTA",
/// app_bundle_arn=example_aws_appfabric_app_bundle["arn"],
/// tenant_id="example.okta.com",
/// ingestion_type="auditLog",
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
/// var example = new Aws.AppFabric.Ingestion("example", new()
/// {
/// App = "OKTA",
/// AppBundleArn = exampleAwsAppfabricAppBundle.Arn,
/// TenantId = "example.okta.com",
/// IngestionType = "auditLog",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appfabric"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := appfabric.NewIngestion(ctx, "example", &appfabric.IngestionArgs{
/// App:           pulumi.String("OKTA"),
/// AppBundleArn:  pulumi.Any(exampleAwsAppfabricAppBundle.Arn),
/// TenantId:      pulumi.String("example.okta.com"),
/// IngestionType: pulumi.String("auditLog"),
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
/// import com.pulumi.aws.appfabric.Ingestion;
/// import com.pulumi.aws.appfabric.IngestionArgs;
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
/// var example = new Ingestion("example", IngestionArgs.builder()
/// .app("OKTA")
/// .appBundleArn(exampleAwsAppfabricAppBundle.arn())
/// .tenantId("example.okta.com")
/// .ingestionType("auditLog")
/// .tags(Map.of("Environment", "test"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:appfabric:Ingestion
/// properties:
/// app: OKTA
/// appBundleArn: ${exampleAwsAppfabricAppBundle.arn}
/// tenantId: example.okta.com
/// ingestionType: auditLog
/// tags:
/// Environment: test
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import AppFabric Ingestion using the <span pulumi-lang-nodejs="`appBundleIdentifier`" pulumi-lang-dotnet="`AppBundleIdentifier`" pulumi-lang-go="`appBundleIdentifier`" pulumi-lang-python="`app_bundle_identifier`" pulumi-lang-yaml="`appBundleIdentifier`" pulumi-lang-java="`appBundleIdentifier`">`app_bundle_identifier`</span> and <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> separated by `,`. For example:
///
/// ```sh
/// $ pulumi import aws:appfabric/ingestion:Ingestion example arn:aws:appfabric:[region]:[account]:appbundle/a9b91477-8831-43c0-970c-xxxxxxxxxx,arn:aws:appfabric:[region]:[account]:appbundle/a9b91477-8831-43c0-970c-xxxxxxxxxx/ingestion/32251416-710b-4425-96ca-xxxxxxxxxx
/// ```
class Ingestion extends CustomResource {
  /// Name of the application.
  /// Refer to the AWS Documentation for the [list of valid values](https://docs.aws.amazon.com/appfabric/latest/api/API_CreateIngestion.html#appfabric-CreateIngestion-request-app)
  late final Output<String> app;

  /// Amazon Resource Name (ARN) of the app bundle to use for the request.
  late final Output<String> appBundleArn;

  /// ARN of the Ingestion.
  late final Output<String> arn;

  /// Ingestion type. Valid values are `auditLog`.
  late final Output<String> ingestionType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// ID of the application tenant.
  late final Output<String> tenantId;

  Ingestion(
    String name, {
    IngestionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:appfabric/ingestion:Ingestion',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.app = registerOutput<String>('app');
    this.appBundleArn = registerOutput<String>('appBundleArn');
    this.arn = registerOutput<String>('arn');
    this.ingestionType = registerOutput<String>('ingestionType');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.tenantId = registerOutput<String>('tenantId');
  }
}
