// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure Databricks Delta Lake export command settings.
class AzureDatabricksDeltaLakeExportCommandResponse {
  /// Specify the date format for the csv in Azure Databricks Delta Lake Copy. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? dateFormat;
  /// Specify the timestamp format for the csv in Azure Databricks Delta Lake Copy. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? timestampFormat;
  /// The export setting type.
  /// Expected value is 'AzureDatabricksDeltaLakeExportCommand'.
  final pulumi.Input<String> type;

  /// Creates a new [AzureDatabricksDeltaLakeExportCommandResponse].
  /// [dateFormat] Specify the date format for the csv in Azure Databricks Delta Lake Copy. Type: string (or Expression with resultType string).
  /// [timestampFormat] Specify the timestamp format for the csv in Azure Databricks Delta Lake Copy. Type: string (or Expression with resultType string).
  /// [type] The export setting type.
  AzureDatabricksDeltaLakeExportCommandResponse({
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

  factory AzureDatabricksDeltaLakeExportCommandResponse.fromMap(Map<String, dynamic> map) {
    return AzureDatabricksDeltaLakeExportCommandResponse(
      dateFormat: map['dateFormat'] == null ? null : (map['dateFormat']).input(),
      timestampFormat: map['timestampFormat'] == null ? null : (map['timestampFormat']).input(),
      type: (map['type'] as String).input(),
    );
  }
}

