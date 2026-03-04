// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure Databricks Delta Lake import command settings.
class AzureDatabricksDeltaLakeImportCommandResponse {
  /// Specify the date format for csv in Azure Databricks Delta Lake Copy. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? dateFormat;

  /// Specify the timestamp format for csv in Azure Databricks Delta Lake Copy. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? timestampFormat;

  /// The import setting type.
  /// Expected value is 'AzureDatabricksDeltaLakeImportCommand'.
  final pulumi.Input<String> type;

  /// Creates a new [AzureDatabricksDeltaLakeImportCommandResponse].
  /// [dateFormat] Specify the date format for csv in Azure Databricks Delta Lake Copy. Type: string (or Expression with resultType string).
  /// [timestampFormat] Specify the timestamp format for csv in Azure Databricks Delta Lake Copy. Type: string (or Expression with resultType string).
  /// [type] The import setting type.
  AzureDatabricksDeltaLakeImportCommandResponse({
    this.dateFormat,
    this.timestampFormat,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dateFormat': ?dateFormat,
      'timestampFormat': ?timestampFormat,
      'type': type,
    };
  }

  factory AzureDatabricksDeltaLakeImportCommandResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return AzureDatabricksDeltaLakeImportCommandResponse(
      dateFormat: (() {
        final guardedValue = map['dateFormat'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      timestampFormat: (() {
        final guardedValue = map['timestampFormat'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
