// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CatalogTableViewDefinitionRepresentation {
  /// Parameter that specifies the engine type of a specific representation. Valid values are `REDSHIFT`, `ATHENA`, and `SPARK`.
  final pulumi.Input<String?>? dialect;
  /// Parameter that specifies the version of the engine of a specific representation.
  final pulumi.Input<String?>? dialectVersion;
  /// Name of the connection to be used to validate the specific representation of the view.
  final pulumi.Input<String?>? validationConnection;
  /// String that represents the SQL query that describes the view with expanded resource ARNs.
  final pulumi.Input<String?>? viewExpandedText;
  /// String that represents the original SQL query that describes the view.
  final pulumi.Input<String?>? viewOriginalText;

  /// Creates a new [CatalogTableViewDefinitionRepresentation].
  /// [dialect] Parameter that specifies the engine type of a specific representation. Valid values are `REDSHIFT`, `ATHENA`, and `SPARK`.
  /// [dialectVersion] Parameter that specifies the version of the engine of a specific representation.
  /// [validationConnection] Name of the connection to be used to validate the specific representation of the view.
  /// [viewExpandedText] String that represents the SQL query that describes the view with expanded resource ARNs.
  /// [viewOriginalText] String that represents the original SQL query that describes the view.
  const CatalogTableViewDefinitionRepresentation({
    this.dialect,
    this.dialectVersion,
    this.validationConnection,
    this.viewExpandedText,
    this.viewOriginalText,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dialect': ?dialect,
      'dialectVersion': ?dialectVersion,
      'validationConnection': ?validationConnection,
      'viewExpandedText': ?viewExpandedText,
      'viewOriginalText': ?viewOriginalText,
    };
  }

  factory CatalogTableViewDefinitionRepresentation.fromMap(Map<String, dynamic> map) {
    return CatalogTableViewDefinitionRepresentation(
      dialect: (() { final guardedValue = map['dialect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dialectVersion: (() { final guardedValue = map['dialectVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validationConnection: (() { final guardedValue = map['validationConnection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      viewExpandedText: (() { final guardedValue = map['viewExpandedText']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      viewOriginalText: (() { final guardedValue = map['viewOriginalText']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
