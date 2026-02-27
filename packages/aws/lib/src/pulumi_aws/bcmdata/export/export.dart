import 'package:pulumi/pulumi.dart' as pulumi;
import '../export_export/export_export.dart';
import '../export_timeouts/export_timeouts.dart';
import 'export_args.dart';

/// Resource for managing an AWS BCM Data Exports Export.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the BCM Data Exports export.
///
///
/// Using `pulumi import`, import BCM Data Exports Export using the export ARN. For example:
///
/// ```sh
/// $ pulumi import aws:bcmdata/export:Export example arn:aws:bcm-data-exports:us-east-1:123456789012:export/CostUsageReport-9f1c75f3-f982-4d9a-b936-1e7ecab814b7
/// ```
class Export extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) for this export.
  /// * `export[0].export_arn` - Amazon Resource Name (ARN) for this export.
  late final pulumi.Output<String> arn;

  /// The details of the export, including data query, name, description, and destination configuration.  See the `export` argument reference below.
  late final pulumi.Output<ExportExport?> export;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<ExportTimeouts?> timeouts;

  Export(
    String name, {
    ExportArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bcmdata/export:Export',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.export = registerOutput<ExportExport?>('export');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<ExportTimeouts?>('timeouts');
  }
}
