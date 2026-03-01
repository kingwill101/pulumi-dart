// ignore_for_file: unused_element, unnecessary_cast


/// Azure Databricks Delta Lake export command settings.
class AzureDatabricksDeltaLakeExportCommand {
  /// Specify the date format for the csv in Azure Databricks Delta Lake Copy. Type: string (or Expression with resultType string).
  final dynamic dateFormat;
  /// Specify the timestamp format for the csv in Azure Databricks Delta Lake Copy. Type: string (or Expression with resultType string).
  final dynamic timestampFormat;
  /// The export setting type.
  /// Expected value is 'AzureDatabricksDeltaLakeExportCommand'.
  final String type;

  /// Creates a new [AzureDatabricksDeltaLakeExportCommand].
  /// [dateFormat] Specify the date format for the csv in Azure Databricks Delta Lake Copy. Type: string (or Expression with resultType string).
  /// [timestampFormat] Specify the timestamp format for the csv in Azure Databricks Delta Lake Copy. Type: string (or Expression with resultType string).
  /// [type] The export setting type.
  AzureDatabricksDeltaLakeExportCommand({
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

  factory AzureDatabricksDeltaLakeExportCommand.fromMap(Map<String, dynamic> map) {
    return AzureDatabricksDeltaLakeExportCommand(
      dateFormat: map['dateFormat'] == null ? null : map['dateFormat'],
      timestampFormat: map['timestampFormat'] == null ? null : map['timestampFormat'],
      type: map['type'] as String,
    );
  }
}

