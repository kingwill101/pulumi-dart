// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../export_export/export_export.dart';
import '../export_timeouts/export_timeouts.dart';

/// The set of arguments for Export.
class ExportArgs {
  /// The details of the export, including data query, name, description, and destination configuration.  See the `export` argument reference below.
  final Input<ExportExport>? export;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;
  final Input<ExportTimeouts>? timeouts;

  ExportArgs({
    this.export,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final exportValue = export;
    if (exportValue != null) {
      map['export'] =
          Input.mapOptionalInputValue<ExportExport, Map<String, dynamic>>(
              exportValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] =
          Input.mapOptionalInputValue<ExportTimeouts, Map<String, dynamic>>(
              timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ExportArgs.fromMap(Map<String, dynamic> map) {
    return ExportArgs(
      export: Input.asOptionalInput<ExportExport>(map['export']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: Input.asOptionalInput<ExportTimeouts>(map['timeouts']),
    );
  }
}
