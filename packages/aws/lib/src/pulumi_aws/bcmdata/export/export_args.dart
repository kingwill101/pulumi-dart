// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../export_export/export_export.dart';
import '../export_timeouts/export_timeouts.dart';

/// The set of arguments for Export.
class ExportArgs {
  /// The details of the export, including data query, name, description, and destination configuration.  See the `export` argument reference below.
  final pulumi.Input<ExportExport>? export;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<ExportTimeouts>? timeouts;

  ExportArgs({
    this.export,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final exportValue = export;
    if (exportValue != null) {
      map['export'] = pulumi.Input.mapOptionalInputValue<ExportExport,
          Map<String, dynamic>>(exportValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<ExportTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ExportArgs.fromMap(Map<String, dynamic> map) {
    return ExportArgs(
      export: pulumi.Input.asOptionalInput<ExportExport>(map['export']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: pulumi.Input.asOptionalInput<ExportTimeouts>(map['timeouts']),
    );
  }
}
