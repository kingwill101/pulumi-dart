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
  final pulumi.Input<ExportExport?>? export;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  final pulumi.Input<ExportTimeouts?>? timeouts;

  /// Creates a new [ExportArgs].
  /// [export] The details of the export, including data query, name, description, and destination configuration.  See the `export` argument reference below.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  const ExportArgs({
    this.export,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'export': ?pulumi.Input.mapOptionalInputValue<ExportExport, Map<String, dynamic>>(export, (value) => value.toMap()),
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ExportTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory ExportArgs.fromMap(Map<String, dynamic> map) {
    return ExportArgs(
      export: (() { final guardedValue = map['export']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExportExport.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExportTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
