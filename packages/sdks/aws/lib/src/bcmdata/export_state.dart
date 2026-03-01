// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'export_export.dart';
import 'export_timeouts.dart';

/// Input properties used for looking up and filtering Export resources.
class ExportState {
  /// Amazon Resource Name (ARN) for this export.
  /// * `export[0].export_arn` - Amazon Resource Name (ARN) for this export.
  final pulumi.Input<String>? arn;
  /// The details of the export, including data query, name, description, and destination configuration.  See the `export` argument reference below.
  final pulumi.Input<ExportExport>? export;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<ExportTimeouts>? timeouts;

  /// Creates a new [ExportState].
  /// [arn] Amazon Resource Name (ARN) for this export.
  /// [export] The details of the export, including data query, name, description, and destination configuration.  See the `export` argument reference below.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Optional.
  /// [timeouts] Optional.
  ExportState({
    pulumi.Output<String>? arn,
    pulumi.Output<ExportExport>? export,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<ExportTimeouts>? timeouts,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      export = pulumi.Input.asOptionalInput<ExportExport>(export),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<ExportTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'export': ?pulumi.Input.mapOptionalInputValue<ExportExport, Map<String, dynamic>>(export, (value) => value.toMap()),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ExportTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory ExportState.fromMap(Map<String, dynamic> map) {
    return ExportState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      export: map['export'] == null ? null : pulumi.Output.create<ExportExport>(ExportExport.fromMap((map['export'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<ExportTimeouts>(ExportTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

