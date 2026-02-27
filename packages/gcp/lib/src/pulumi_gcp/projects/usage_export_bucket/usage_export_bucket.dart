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
///
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
    this.bucketName = registerOutput<String>('bucketName');
    this.prefix = registerOutput<String?>('prefix');
    this.project = registerOutput<String>('project');
  }
}
