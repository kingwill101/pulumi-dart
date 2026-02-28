// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'export_export.dart';
import 'export_timeouts.dart';

/// {@template pulumi_bcmdata_export_export_args_doc}
/// The set of arguments for Export.
/// {@endtemplate}
/// {@macro pulumi_bcmdata_export_export_args_doc}
class ExportArgs {
  /// The details of the export, including data query, name, description, and destination configuration.  See the `export` argument reference below.
  final pulumi.Input<ExportExport>? export;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<ExportTimeouts>? timeouts;

  /// Creates a new [ExportArgs].
  /// [export] The details of the export, including data query, name, description, and destination configuration.  See the `export` argument reference below.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  ExportArgs({
    ExportExport? export,
    Map<String, String>? tags,
    ExportTimeouts? timeouts,
  })  : export = pulumi.Input.asOptionalInput<ExportExport>(export),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        timeouts = pulumi.Input.asOptionalInput<ExportTimeouts>(timeouts);

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
      export: map['export'] == null
          ? null
          : ExportExport.fromMap(
              (map['export'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      timeouts: map['timeouts'] == null
          ? null
          : ExportTimeouts.fromMap(
              (map['timeouts'] as Map).cast<String, dynamic>()),
    );
  }
}
