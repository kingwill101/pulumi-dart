import 'package:pulumi/pulumi.dart';
import '../source_api_association_source_api_association_config/source_api_association_source_api_association_config.dart';
import '../source_api_association_timeouts/source_api_association_timeouts.dart';
import 'source_api_association_args.dart';

/// Resource for managing an AWS AppSync Source API Association.
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
/// const test = new aws.appsync.SourceApiAssociation("test", {
/// description: "My source API Merged",
/// mergedApiId: "gzos6bteufdunffzzifiowisoe",
/// sourceApiId: "fzzifiowisoegzos6bteufdunf",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.appsync.SourceApiAssociation("test",
/// description="My source API Merged",
/// merged_api_id="gzos6bteufdunffzzifiowisoe",
/// source_api_id="fzzifiowisoegzos6bteufdunf")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = new Aws.AppSync.SourceApiAssociation("test", new()
/// {
/// Description = "My source API Merged",
/// MergedApiId = "gzos6bteufdunffzzifiowisoe",
/// SourceApiId = "fzzifiowisoegzos6bteufdunf",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appsync"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := appsync.NewSourceApiAssociation(ctx, "test", &appsync.SourceApiAssociationArgs{
/// Description: pulumi.String("My source API Merged"),
/// MergedApiId: pulumi.String("gzos6bteufdunffzzifiowisoe"),
/// SourceApiId: pulumi.String("fzzifiowisoegzos6bteufdunf"),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var test = new SourceApiAssociation("test", SourceApiAssociationArgs.builder()
/// .description("My source API Merged")
/// .mergedApiId("gzos6bteufdunffzzifiowisoe")
/// .sourceApiId("fzzifiowisoegzos6bteufdunf")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:appsync:SourceApiAssociation
/// properties:
/// description: My source API Merged
/// mergedApiId: gzos6bteufdunffzzifiowisoe
/// sourceApiId: fzzifiowisoegzos6bteufdunf
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import AppSync Source API Association using the <span pulumi-lang-nodejs="`associationId`" pulumi-lang-dotnet="`AssociationId`" pulumi-lang-go="`associationId`" pulumi-lang-python="`association_id`" pulumi-lang-yaml="`associationId`" pulumi-lang-java="`associationId`">`association_id`</span> and <span pulumi-lang-nodejs="`mergedApiId`" pulumi-lang-dotnet="`MergedApiId`" pulumi-lang-go="`mergedApiId`" pulumi-lang-python="`merged_api_id`" pulumi-lang-yaml="`mergedApiId`" pulumi-lang-java="`mergedApiId`">`merged_api_id`</span> separated by `,`. For example:
///
/// ```sh
/// $ pulumi import aws:appsync/sourceApiAssociation:SourceApiAssociation example gzos6bteufdunffzzifiowisoe,243685a0-9347-4a1a-89c1-9b57dea01e31
/// ```
class SourceApiAssociation extends CustomResource {
  /// ARN of the Source API Association.
  late final Output<String> arn;

  /// ID of the Source API Association.
  late final Output<String> associationId;

  /// Description of the source API being merged.
  late final Output<String?> description;

  /// ARN of the merged API. One of <span pulumi-lang-nodejs="`mergedApiArn`" pulumi-lang-dotnet="`MergedApiArn`" pulumi-lang-go="`mergedApiArn`" pulumi-lang-python="`merged_api_arn`" pulumi-lang-yaml="`mergedApiArn`" pulumi-lang-java="`mergedApiArn`">`merged_api_arn`</span> or <span pulumi-lang-nodejs="`mergedApiId`" pulumi-lang-dotnet="`MergedApiId`" pulumi-lang-go="`mergedApiId`" pulumi-lang-python="`merged_api_id`" pulumi-lang-yaml="`mergedApiId`" pulumi-lang-java="`mergedApiId`">`merged_api_id`</span> must be specified.
  late final Output<String> mergedApiArn;

  /// ID of the merged API. One of <span pulumi-lang-nodejs="`mergedApiArn`" pulumi-lang-dotnet="`MergedApiArn`" pulumi-lang-go="`mergedApiArn`" pulumi-lang-python="`merged_api_arn`" pulumi-lang-yaml="`mergedApiArn`" pulumi-lang-java="`mergedApiArn`">`merged_api_arn`</span> or <span pulumi-lang-nodejs="`mergedApiId`" pulumi-lang-dotnet="`MergedApiId`" pulumi-lang-go="`mergedApiId`" pulumi-lang-python="`merged_api_id`" pulumi-lang-yaml="`mergedApiId`" pulumi-lang-java="`mergedApiId`">`merged_api_id`</span> must be specified.
  late final Output<String> mergedApiId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ARN of the source API. One of <span pulumi-lang-nodejs="`sourceApiArn`" pulumi-lang-dotnet="`SourceApiArn`" pulumi-lang-go="`sourceApiArn`" pulumi-lang-python="`source_api_arn`" pulumi-lang-yaml="`sourceApiArn`" pulumi-lang-java="`sourceApiArn`">`source_api_arn`</span> or <span pulumi-lang-nodejs="`sourceApiId`" pulumi-lang-dotnet="`SourceApiId`" pulumi-lang-go="`sourceApiId`" pulumi-lang-python="`source_api_id`" pulumi-lang-yaml="`sourceApiId`" pulumi-lang-java="`sourceApiId`">`source_api_id`</span> must be specified.
  late final Output<String> sourceApiArn;
  late final Output<List<SourceApiAssociationSourceApiAssociationConfig>>
      sourceApiAssociationConfigs;

  /// ID of the source API. One of <span pulumi-lang-nodejs="`sourceApiArn`" pulumi-lang-dotnet="`SourceApiArn`" pulumi-lang-go="`sourceApiArn`" pulumi-lang-python="`source_api_arn`" pulumi-lang-yaml="`sourceApiArn`" pulumi-lang-java="`sourceApiArn`">`source_api_arn`</span> or <span pulumi-lang-nodejs="`sourceApiId`" pulumi-lang-dotnet="`SourceApiId`" pulumi-lang-go="`sourceApiId`" pulumi-lang-python="`source_api_id`" pulumi-lang-yaml="`sourceApiId`" pulumi-lang-java="`sourceApiId`">`source_api_id`</span> must be specified.
  late final Output<String> sourceApiId;
  late final Output<SourceApiAssociationTimeouts?> timeouts;

  SourceApiAssociation(
    String name, {
    SourceApiAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:appsync/sourceApiAssociation:SourceApiAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.associationId = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.mergedApiArn = Output.createUnknown<String>();
    this.mergedApiId = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.sourceApiArn = Output.createUnknown<String>();
    this.sourceApiAssociationConfigs = Output.createUnknown<
        List<SourceApiAssociationSourceApiAssociationConfig>>();
    this.sourceApiId = Output.createUnknown<String>();
    this.timeouts = Output.createUnknown<SourceApiAssociationTimeouts?>();
  }
}
