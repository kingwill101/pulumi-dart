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
    required this.engine,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'engine': engine,
      'outputFile': ?outputFile,
    };
  }

  factory GetCharacterSetNamesArgs.fromMap(Map<String, dynamic> map) {
    return GetCharacterSetNamesArgs(
      engine: (map['engine'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
    );
  }
}

