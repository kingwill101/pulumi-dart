// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_yundun_get_dbaudit_instance_get_dbaudit_instance_args_doc}
/// Arguments for getDBAuditInstance.
/// {@endtemplate}
/// {@macro pulumi_yundun_get_dbaudit_instance_get_dbaudit_instance_args_doc}
class GetDBAuditInstanceArgs {
  final pulumi.Input<String>? descriptionRegex;
  final pulumi.Input<List<String>>? ids;
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetDBAuditInstanceArgs].
  /// [descriptionRegex] Optional.
  /// [ids] Optional.
  /// [outputFile] Optional.
  /// [tags] Optional.
  GetDBAuditInstanceArgs({
    pulumi.Output<String>? descriptionRegex,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? outputFile,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      descriptionRegex = pulumi.Input.asOptionalInput<String>(descriptionRegex),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'descriptionRegex': ?descriptionRegex,
      'ids': ?ids,
      'outputFile': ?outputFile,
      'tags': ?tags,
    };
  }

  factory GetDBAuditInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetDBAuditInstanceArgs(
      descriptionRegex: map['descriptionRegex'] == null ? null : pulumi.Output.create<String>(map['descriptionRegex'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

