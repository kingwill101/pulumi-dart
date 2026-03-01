import 'package:pulumi/pulumi.dart' as pulumi;
import 'ingestion_args.dart';
import 'ingestion_state.dart';

/// Resource for managing an AWS AppFabric Ingestion.
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
/// const example = new aws.appfabric.Ingestion("example", {
///     app: "OKTA",
///     appBundleArn: exampleAwsAppfabricAppBundle.arn,
///     tenantId: "example.okta.com",
///     ingestionType: "auditLog",
///     tags: {
///         Environment: "test",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.appfabric.Ingestion("example",
///     app="OKTA",
///     app_bundle_arn=example_aws_appfabric_app_bundle["arn"],
///     tenant_id="example.okta.com",
///     ingestion_type="auditLog",
///     tags={
///         "Environment": "test",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.AppFabric.Ingestion("example", new()
///     {
///         App = "OKTA",
///         AppBundleArn = exampleAwsAppfabricAppBundle.Arn,
///         TenantId = "example.okta.com",
///         IngestionType = "auditLog",
///         Tags =
///         {
///             { "Environment", "test" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appfabric"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appfabric.NewIngestion(ctx, "example", &appfabric.IngestionArgs{
/// 			App:           pulumi.String("OKTA"),
/// 			AppBundleArn:  pulumi.Any(exampleAwsAppfabricAppBundle.Arn),
/// 			TenantId:      pulumi.String("example.okta.com"),
/// 			IngestionType: pulumi.String("auditLog"),
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("test"),
/// 			},
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new Ingestion("example", IngestionArgs.builder()
///             .app("OKTA")
///             .appBundleArn(exampleAwsAppfabricAppBundle.arn())
///             .tenantId("example.okta.com")
///             .ingestionType("auditLog")
///             .tags(Map.of("Environment", "test"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:appfabric:Ingestion
///     properties:
///       app: OKTA
///       appBundleArn: ${exampleAwsAppfabricAppBundle.arn}
///       tenantId: example.okta.com
///       ingestionType: auditLog
///       tags:
///         Environment: test
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import AppFabric Ingestion using the `app_bundle_identifier` and `arn` separated by `,`. For example:
///
/// ```sh
/// $ pulumi import aws:appfabric/ingestion:Ingestion example arn:aws:appfabric:[region]:[account]:appbundle/a9b91477-8831-43c0-970c-xxxxxxxxxx,arn:aws:appfabric:[region]:[account]:appbundle/a9b91477-8831-43c0-970c-xxxxxxxxxx/ingestion/32251416-710b-4425-96ca-xxxxxxxxxx
/// ```
class Ingestion extends pulumi.CustomResource {
  /// Name of the application.
  /// Refer to the AWS Documentation for the [list of valid values](https://docs.aws.amazon.com/appfabric/latest/api/API_CreateIngestion.html#appfabric-CreateIngestion-request-app)
  late final pulumi.Output<String> app;
  /// Amazon Resource Name (ARN) of the app bundle to use for the request.
  late final pulumi.Output<String> appBundleArn;
  /// ARN of the Ingestion.
  late final pulumi.Output<String> arn;
  /// Ingestion type. Valid values are `auditLog`.
  late final pulumi.Output<String> ingestionType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// ID of the application tenant.
  late final pulumi.Output<String> tenantId;

  /// Creates a new [Ingestion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Ingestion]. {@macro pulumi_appfabric_ingestion_ingestion_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Ingestion(
    String name, {
    IngestionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appfabric/ingestion:Ingestion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
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

  /// Gets an existing [Ingestion] resource's state with the given [name] and [id].
  static Ingestion get(
    String name,
    pulumi.Input<String> id, {
    IngestionState? state,
  }) {
    return Ingestion._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Ingestion._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appfabric/ingestion:Ingestion',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
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
