import 'package:pulumi/pulumi.dart';
import 'usage_export_bucket_args.dart';

/// Sets up a usage export bucket for a particular project.  A usage export bucket
/// is a pre-configured GCS bucket which is set up to receive daily and monthly
/// reports of the GCE resources used.
///
/// For more information see the [Docs](https://cloud.google.com/compute/docs/usage-export)
/// and for further details, the
/// [API Documentation](https://cloud.google.com/compute/docs/reference/rest/beta/projects/setUsageExportBucket).
///
/// > **Note:** You should specify only one of these per project.  If there are two or more
/// they will fight over which bucket the reports should be stored in.  It is
/// safe to have multiple resources with the same backing bucket.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const usageExport = new gcp.projects.UsageExportBucket("usage_export", {
/// project: "development-project",
/// bucketName: "usage-tracking-bucket",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// usage_export = gcp.projects.UsageExportBucket("usage_export",
/// project="development-project",
/// bucket_name="usage-tracking-bucket")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var usageExport = new Gcp.Projects.UsageExportBucket("usage_export", new()
/// {
/// Project = "development-project",
/// BucketName = "usage-tracking-bucket",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := projects.NewUsageExportBucket(ctx, "usage_export", &projects.UsageExportBucketArgs{
/// Project:    pulumi.String("development-project"),
/// BucketName: pulumi.String("usage-tracking-bucket"),
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
/// import com.pulumi.gcp.projects.UsageExportBucket;
/// import com.pulumi.gcp.projects.UsageExportBucketArgs;
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
/// var usageExport = new UsageExportBucket("usageExport", UsageExportBucketArgs.builder()
/// .project("development-project")
/// .bucketName("usage-tracking-bucket")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// usageExport:
/// type: gcp:projects:UsageExportBucket
/// name: usage_export
/// properties:
/// project: development-project
/// bucketName: usage-tracking-bucket
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// A project's Usage Export Bucket can be imported using this format:
///
/// * `{{project_id}}`
///
/// When using the `pulumi import` command, NAME_HERE can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:projects/usageExportBucket:UsageExportBucket default {{project_id}}
/// ```
class UsageExportBucket extends CustomResource {
  /// The bucket to store reports in.
  ///
  /// - - -
  late final Output<String> bucketName;

  /// A prefix for the reports, for instance, the project name.
  late final Output<String?> prefix;

  /// The project to set the export bucket on. If it is not provided, the provider project is used.
  late final Output<String> project;

  UsageExportBucket(
    String name, {
    UsageExportBucketArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:projects/usageExportBucket:UsageExportBucket',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bucketName = Output.createUnknown<String>();
    this.prefix = Output.createUnknown<String?>();
    this.project = Output.createUnknown<String>();
  }
}
