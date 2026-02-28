import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_api_association_args.dart';
import 'source_api_association_source_api_association_config.dart';
import 'source_api_association_timeouts.dart';

/// Resource for managing an AWS AppSync Source API Association.
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
/// const test = new aws.appsync.SourceApiAssociation("test", {
///     description: "My source API Merged",
///     mergedApiId: "gzos6bteufdunffzzifiowisoe",
///     sourceApiId: "fzzifiowisoegzos6bteufdunf",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.appsync.SourceApiAssociation("test",
///     description="My source API Merged",
///     merged_api_id="gzos6bteufdunffzzifiowisoe",
///     source_api_id="fzzifiowisoegzos6bteufdunf")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.AppSync.SourceApiAssociation("test", new()
///     {
///         Description = "My source API Merged",
///         MergedApiId = "gzos6bteufdunffzzifiowisoe",
///         SourceApiId = "fzzifiowisoegzos6bteufdunf",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appsync"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appsync.NewSourceApiAssociation(ctx, "test", &appsync.SourceApiAssociationArgs{
/// 			Description: pulumi.String("My source API Merged"),
/// 			MergedApiId: pulumi.String("gzos6bteufdunffzzifiowisoe"),
/// 			SourceApiId: pulumi.String("fzzifiowisoegzos6bteufdunf"),
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
/// import com.pulumi.aws.appsync.SourceApiAssociation;
/// import com.pulumi.aws.appsync.SourceApiAssociationArgs;
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
///         var test = new SourceApiAssociation("test", SourceApiAssociationArgs.builder()
///             .description("My source API Merged")
///             .mergedApiId("gzos6bteufdunffzzifiowisoe")
///             .sourceApiId("fzzifiowisoegzos6bteufdunf")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:appsync:SourceApiAssociation
///     properties:
///       description: My source API Merged
///       mergedApiId: gzos6bteufdunffzzifiowisoe
///       sourceApiId: fzzifiowisoegzos6bteufdunf
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import AppSync Source API Association using the `association_id` and `merged_api_id` separated by `,`. For example:
///
/// ```sh
/// $ pulumi import aws:appsync/sourceApiAssociation:SourceApiAssociation example gzos6bteufdunffzzifiowisoe,243685a0-9347-4a1a-89c1-9b57dea01e31
/// ```
class SourceApiAssociation extends pulumi.CustomResource {
  /// ARN of the Source API Association.
  late final pulumi.Output<String> arn;
  /// ID of the Source API Association.
  late final pulumi.Output<String> associationId;
  /// Description of the source API being merged.
  late final pulumi.Output<String?> description;
  /// ARN of the merged API. One of `merged_api_arn` or `merged_api_id` must be specified.
  late final pulumi.Output<String> mergedApiArn;
  /// ID of the merged API. One of `merged_api_arn` or `merged_api_id` must be specified.
  late final pulumi.Output<String> mergedApiId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN of the source API. One of `source_api_arn` or `source_api_id` must be specified.
  late final pulumi.Output<String> sourceApiArn;
  late final pulumi.Output<List<SourceApiAssociationSourceApiAssociationConfig>> sourceApiAssociationConfigs;
  /// ID of the source API. One of `source_api_arn` or `source_api_id` must be specified.
  late final pulumi.Output<String> sourceApiId;
  late final pulumi.Output<SourceApiAssociationTimeouts?> timeouts;

  /// Creates a new [SourceApiAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SourceApiAssociation]. {@macro pulumi_appsync_source_api_association_source_api_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SourceApiAssociation(
    String name, {
    SourceApiAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appsync/sourceApiAssociation:SourceApiAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.associationId = registerOutput<String>('associationId');
    this.description = registerOutput<String?>('description');
    this.mergedApiArn = registerOutput<String>('mergedApiArn');
    this.mergedApiId = registerOutput<String>('mergedApiId');
    this.region = registerOutput<String>('region');
    this.sourceApiArn = registerOutput<String>('sourceApiArn');
    this.sourceApiAssociationConfigs = registerOutput<List<SourceApiAssociationSourceApiAssociationConfig>>('sourceApiAssociationConfigs');
    this.sourceApiId = registerOutput<String>('sourceApiId');
    this.timeouts = registerOutput<SourceApiAssociationTimeouts?>('timeouts');
  }
}
