// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rds_get_character_set_names_get_character_set_names_args_doc}
/// Arguments for getCharacterSetNames.
/// {@endtemplate}
/// {@macro pulumi_rds_get_character_set_names_get_character_set_names_args_doc}
class GetCharacterSetNamesArgs {
  /// Database type. Options are `MySQL`, `SQLServer`, `PostgreSQL`, `MariaDB`.
  final pulumi.Input<String> engine;
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetCharacterSetNamesArgs].
  /// [engine] Database type. Options are `MySQL`, `SQLServer`, `PostgreSQL`, `MariaDB`.
  /// [outputFile] Optional.
  GetCharacterSetNamesArgs({
    required pulumi.Output<String> engine,
    pulumi.Output<String>? outputFile,
  }) :
      engine = pulumi.Input.asInput<String>(engine),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'engine': engine,
      'outputFile': ?outputFile,
    };
  }

  factory GetCharacterSetNamesArgs.fromMap(Map<String, dynamic> map) {
    return GetCharacterSetNamesArgs(
      engine: pulumi.Output.create<String>(map['engine'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

