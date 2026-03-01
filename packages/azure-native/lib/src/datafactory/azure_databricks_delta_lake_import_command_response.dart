// ignore_for_file: unused_element, unnecessary_cast


/// Azure Databricks Delta Lake import command settings.
class AzureDatabricksDeltaLakeImportCommandResponse {
  /// Specify the date format for csv in Azure Databricks Delta Lake Copy. Type: string (or Expression with resultType string).
  final dynamic dateFormat;
  /// Specify the timestamp format for csv in Azure Databricks Delta Lake Copy. Type: string (or Expression with resultType string).
  final dynamic timestampFormat;
  /// The import setting type.
  /// Expected value is 'AzureDatabricksDeltaLakeImportCommand'.
  final String type;

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

  factory AzureDatabricksDeltaLakeImportCommandResponse.fromMap(Map<String, dynamic> map) {
    return AzureDatabricksDeltaLakeImportCommandResponse(
      dateFormat: map['dateFormat'] == null ? null : map['dateFormat'],
      timestampFormat: map['timestampFormat'] == null ? null : map['timestampFormat'],
      type: map['type'] as String,
    );
  }
}

