// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../report_group_export_config/report_group_export_config.dart';

/// The set of arguments for ReportGroup.
class ReportGroupArgs {
  /// If <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, deletes any reports that belong to a report group before deleting the report group. If <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>, you must delete any reports in the report group before deleting it. Default value is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? deleteReports;

  /// Information about the destination where the raw data of this Report Group is exported. see Export Config documented below.
  final Input<ReportGroupExportConfig> exportConfig;

  /// The name of a Report Group.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value mapping of resource tags. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The type of the Report Group. Valid value are `TEST` and `CODE_COVERAGE`.
  final Input<String> type;

  ReportGroupArgs({
    this.deleteReports,
    required this.exportConfig,
    this.name,
    this.region,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deleteReportsValue = deleteReports;
    if (deleteReportsValue != null) {
      map['deleteReports'] = deleteReportsValue;
    }
    map['exportConfig'] =
        Input.mapInputValue<ReportGroupExportConfig, Map<String, dynamic>>(
            exportConfig, (value) => value.toMap());
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['type'] = type;
    return map;
  }

  factory ReportGroupArgs.fromMap(Map<String, dynamic> map) {
    return ReportGroupArgs(
      deleteReports: Input.asOptionalInput<bool>(map['deleteReports']),
      exportConfig: Input.asInput<ReportGroupExportConfig>(map['exportConfig']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      type: Input.asInput<String>(map['type']),
    );
  }
}
