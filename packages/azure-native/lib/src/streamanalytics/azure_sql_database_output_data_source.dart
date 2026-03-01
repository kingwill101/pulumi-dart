// ignore_for_file: unused_element, unnecessary_cast


/// Describes an Azure SQL database output data source.
class AzureSqlDatabaseOutputDataSource {
  /// Authentication Mode.
  final String? authenticationMode;
  /// The name of the Azure SQL database. Required on PUT (CreateOrReplace) requests.
  final String? database;
  /// Max Batch count for write to Sql database, the default value is 10,000. Optional on PUT requests.
  final double? maxBatchCount;
  /// Max Writer count, currently only 1(single writer) and 0(based on query partition) are available. Optional on PUT requests.
  final double? maxWriterCount;
  /// The password that will be used to connect to the Azure SQL database. Required on PUT (CreateOrReplace) requests.
  final String? password;
  /// The name of the SQL server containing the Azure SQL database. Required on PUT (CreateOrReplace) requests.
  final String? server;
  /// The name of the table in the Azure SQL database. Required on PUT (CreateOrReplace) requests.
  final String? table;
  /// Indicates the type of data source output will be written to. Required on PUT (CreateOrReplace) requests.
  /// Expected value is 'Microsoft.Sql/Server/Database'.
  final String type;
  /// The user name that will be used to connect to the Azure SQL database. Required on PUT (CreateOrReplace) requests.
  final String? user;

  /// Creates a new [AzureSqlDatabaseOutputDataSource].
  /// [authenticationMode] Authentication Mode.
  /// [database] The name of the Azure SQL database. Required on PUT (CreateOrReplace) requests.
  /// [maxBatchCount] Max Batch count for write to Sql database, the default value is 10,000. Optional on PUT requests.
  /// [maxWriterCount] Max Writer count, currently only 1(single writer) and 0(based on query partition) are available. Optional on PUT requests.
  /// [password] The password that will be used to connect to the Azure SQL database. Required on PUT (CreateOrReplace) requests.
  /// [server] The name of the SQL server containing the Azure SQL database. Required on PUT (CreateOrReplace) requests.
  /// [table] The name of the table in the Azure SQL database. Required on PUT (CreateOrReplace) requests.
  /// [type] Indicates the type of data source output will be written to. Required on PUT (CreateOrReplace) requests.
  /// [user] The user name that will be used to connect to the Azure SQL database. Required on PUT (CreateOrReplace) requests.
  AzureSqlDatabaseOutputDataSource({
    this.authenticationMode,
    this.database,
    this.maxBatchCount,
    this.maxWriterCount,
    this.password,
    this.server,
    this.table,
    required this.type,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationMode': ?authenticationMode,
      'database': ?database,
      'maxBatchCount': ?maxBatchCount,
      'maxWriterCount': ?maxWriterCount,
      'password': ?password,
      'server': ?server,
      'table': ?table,
      'type': type,
      'user': ?user,
    };
  }

  factory AzureSqlDatabaseOutputDataSource.fromMap(Map<String, dynamic> map) {
    return AzureSqlDatabaseOutputDataSource(
      authenticationMode: map['authenticationMode'] == null ? null : map['authenticationMode'] as String,
      database: map['database'] == null ? null : map['database'] as String,
      maxBatchCount: map['maxBatchCount'] == null ? null : map['maxBatchCount'] as double,
      maxWriterCount: map['maxWriterCount'] == null ? null : map['maxWriterCount'] as double,
      password: map['password'] == null ? null : map['password'] as String,
      server: map['server'] == null ? null : map['server'] as String,
      table: map['table'] == null ? null : map['table'] as String,
      type: map['type'] as String,
      user: map['user'] == null ? null : map['user'] as String,
    );
  }
}

