// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_query_connection_property.dart';
import 'job_query_default_dataset.dart';
import 'job_query_destination_encryption_configuration.dart';
import 'job_query_destination_table.dart';
import 'job_query_script_options.dart';
import 'job_query_user_defined_function_resource.dart';

class JobQuery {
  /// If true and query uses legacy SQL dialect, allows the query to produce arbitrarily large result tables at a slight cost in performance.
  /// Requires destinationTable to be set. For standard SQL queries, this flag is ignored and large results are always allowed.
  /// However, you must still set destinationTable when result size exceeds the allowed maximum response size.
  final bool? allowLargeResults;
  /// Connection properties to customize query behavior. Under JDBC, these correspond
  /// directly to connection properties passed to the DriverManager. Under ODBC, these
  /// correspond to properties in the connection string.
  /// Structure is documented below.
  final List<JobQueryConnectionProperty>? connectionProperties;
  /// Whether to run the query as continuous or a regular query.
  final bool? continuous;
  /// Specifies whether the job is allowed to create new tables. The following values are supported:
  /// CREATE_IF_NEEDED: If the table does not exist, BigQuery creates the table.
  /// CREATE_NEVER: The table must already exist. If it does not, a 'notFound' error is returned in the job result.
  /// Creation, truncation and append actions occur as one atomic update upon job completion
  /// Default value is `CREATE_IF_NEEDED`.
  /// Possible values are: `CREATE_IF_NEEDED`, `CREATE_NEVER`.
  final String? createDisposition;
  /// Specifies the default dataset to use for unqualified table names in the query. Note that this does not alter behavior of unqualified dataset names.
  /// Structure is documented below.
  final JobQueryDefaultDataset? defaultDataset;
  /// Custom encryption configuration (e.g., Cloud KMS keys)
  /// Structure is documented below.
  final JobQueryDestinationEncryptionConfiguration? destinationEncryptionConfiguration;
  /// Describes the table where the query results should be stored.
  /// This property must be set for large results that exceed the maximum response size.
  /// For queries that produce anonymous (cached) results, this field will be populated by BigQuery.
  /// Structure is documented below.
  final JobQueryDestinationTable? destinationTable;
  /// If true and query uses legacy SQL dialect, flattens all nested and repeated fields in the query results.
  /// allowLargeResults must be true if this is set to false. For standard SQL queries, this flag is ignored and results are never flattened.
  final bool? flattenResults;
  /// Limits the billing tier for this job. Queries that have resource usage beyond this tier will fail (without incurring a charge).
  /// If unspecified, this will be set to your project default.
  final int? maximumBillingTier;
  /// Limits the bytes billed for this job. Queries that will have bytes billed beyond this limit will fail (without incurring a charge).
  /// If unspecified, this will be set to your project default.
  final String? maximumBytesBilled;
  /// Standard SQL only. Set to POSITIONAL to use positional (?) query parameters or to NAMED to use named (@myparam) query parameters in this query.
  final String? parameterMode;
  /// Specifies a priority for the query.
  /// Default value is `INTERACTIVE`.
  /// Possible values are: `INTERACTIVE`, `BATCH`.
  final String? priority;
  /// SQL query text to execute. The useLegacySql field can be used to indicate whether the query uses legacy SQL or standard SQL.
  /// *NOTE*: queries containing [DML language](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-manipulation-language)
  /// (`DELETE`, `UPDATE`, `MERGE`, `INSERT`) must specify `create_disposition = ""` and `write_disposition = ""`.
  final String query;
  /// Allows the schema of the destination table to be updated as a side effect of the query job.
  /// Schema update options are supported in two cases: when writeDisposition is WRITE_APPEND;
  /// when writeDisposition is WRITE_TRUNCATE and the destination table is a partition of a table,
  /// specified by partition decorators. For normal tables, WRITE_TRUNCATE will always overwrite the schema.
  /// One or more of the following values are specified:
  /// ALLOW_FIELD_ADDITION: allow adding a nullable field to the schema.
  /// ALLOW_FIELD_RELAXATION: allow relaxing a required field in the original schema to nullable.
  final List<String>? schemaUpdateOptions;
  /// Options controlling the execution of scripts.
  /// Structure is documented below.
  final JobQueryScriptOptions? scriptOptions;
  /// Specifies whether to use BigQuery's legacy SQL dialect for this query. The default value is true.
  /// If set to false, the query will use BigQuery's standard SQL.
  final bool? useLegacySql;
  /// Whether to look for the result in the query cache. The query cache is a best-effort cache that will be flushed whenever
  /// tables in the query are modified. Moreover, the query cache is only available when a query does not have a destination table specified.
  /// The default value is true.
  final bool? useQueryCache;
  /// Describes user-defined function resources used in the query.
  /// Structure is documented below.
  final List<JobQueryUserDefinedFunctionResource>? userDefinedFunctionResources;
  /// Specifies the action that occurs if the destination table already exists. The following values are supported:
  /// WRITE_TRUNCATE: If the table already exists, BigQuery overwrites the table data and uses the schema from the query result.
  /// WRITE_APPEND: If the table already exists, BigQuery appends the data to the table.
  /// WRITE_EMPTY: If the table already exists and contains data, a 'duplicate' error is returned in the job result.
  /// Each action is atomic and only occurs if BigQuery is able to complete the job successfully.
  /// Creation, truncation and append actions occur as one atomic update upon job completion.
  /// Default value is `WRITE_EMPTY`.
  /// Possible values are: `WRITE_TRUNCATE`, `WRITE_APPEND`, `WRITE_EMPTY`.
  final String? writeDisposition;

  /// Creates a new [JobQuery].
  /// [allowLargeResults] If true and query uses legacy SQL dialect, allows the query to produce arbitrarily large result tables at a slight cost in performance.
  /// [connectionProperties] Connection properties to customize query behavior. Under JDBC, these correspond
  /// [continuous] Whether to run the query as continuous or a regular query.
  /// [createDisposition] Specifies whether the job is allowed to create new tables. The following values are supported:
  /// [defaultDataset] Specifies the default dataset to use for unqualified table names in the query. Note that this does not alter behavior of unqualified dataset names.
  /// [destinationEncryptionConfiguration] Custom encryption configuration (e.g., Cloud KMS keys)
  /// [destinationTable] Describes the table where the query results should be stored.
  /// [flattenResults] If true and query uses legacy SQL dialect, flattens all nested and repeated fields in the query results.
  /// [maximumBillingTier] Limits the billing tier for this job. Queries that have resource usage beyond this tier will fail (without incurring a charge).
  /// [maximumBytesBilled] Limits the bytes billed for this job. Queries that will have bytes billed beyond this limit will fail (without incurring a charge).
  /// [parameterMode] Standard SQL only. Set to POSITIONAL to use positional (?) query parameters or to NAMED to use named (@myparam) query parameters in this query.
  /// [priority] Specifies a priority for the query.
  /// [query] SQL query text to execute. The useLegacySql field can be used to indicate whether the query uses legacy SQL or standard SQL.
  /// [schemaUpdateOptions] Allows the schema of the destination table to be updated as a side effect of the query job.
  /// [scriptOptions] Options controlling the execution of scripts.
  /// [useLegacySql] Specifies whether to use BigQuery's legacy SQL dialect for this query. The default value is true.
  /// [useQueryCache] Whether to look for the result in the query cache. The query cache is a best-effort cache that will be flushed whenever
  /// [userDefinedFunctionResources] Describes user-defined function resources used in the query.
  /// [writeDisposition] Specifies the action that occurs if the destination table already exists. The following values are supported:
  JobQuery({
    this.allowLargeResults,
    this.connectionProperties,
    this.continuous,
    this.createDisposition,
    this.defaultDataset,
    this.destinationEncryptionConfiguration,
    this.destinationTable,
    this.flattenResults,
    this.maximumBillingTier,
    this.maximumBytesBilled,
    this.parameterMode,
    this.priority,
    required this.query,
    this.schemaUpdateOptions,
    this.scriptOptions,
    this.useLegacySql,
    this.useQueryCache,
    this.userDefinedFunctionResources,
    this.writeDisposition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowLargeResults': ?allowLargeResults,
      'connectionProperties': ?connectionProperties == null ? null : pulumi.Input.encodeList<JobQueryConnectionProperty, Map<String, dynamic>>(connectionProperties!, (value) => value.toMap()),
      'continuous': ?continuous,
      'createDisposition': ?createDisposition,
      'defaultDataset': ?defaultDataset == null ? null : defaultDataset!.toMap(),
      'destinationEncryptionConfiguration': ?destinationEncryptionConfiguration == null ? null : destinationEncryptionConfiguration!.toMap(),
      'destinationTable': ?destinationTable == null ? null : destinationTable!.toMap(),
      'flattenResults': ?flattenResults,
      'maximumBillingTier': ?maximumBillingTier,
      'maximumBytesBilled': ?maximumBytesBilled,
      'parameterMode': ?parameterMode,
      'priority': ?priority,
      'query': query,
      'schemaUpdateOptions': ?schemaUpdateOptions,
      'scriptOptions': ?scriptOptions == null ? null : scriptOptions!.toMap(),
      'useLegacySql': ?useLegacySql,
      'useQueryCache': ?useQueryCache,
      'userDefinedFunctionResources': ?userDefinedFunctionResources == null ? null : pulumi.Input.encodeList<JobQueryUserDefinedFunctionResource, Map<String, dynamic>>(userDefinedFunctionResources!, (value) => value.toMap()),
      'writeDisposition': ?writeDisposition,
    };
  }

  factory JobQuery.fromMap(Map<String, dynamic> map) {
    return JobQuery(
      allowLargeResults: map['allowLargeResults'] == null ? null : map['allowLargeResults'] as bool,
      connectionProperties: map['connectionProperties'] == null ? null : pulumi.Input.decodeList<JobQueryConnectionProperty>(map['connectionProperties'], (value) => JobQueryConnectionProperty.fromMap((value as Map).cast<String, dynamic>())),
      continuous: map['continuous'] == null ? null : map['continuous'] as bool,
      createDisposition: map['createDisposition'] == null ? null : map['createDisposition'] as String,
      defaultDataset: map['defaultDataset'] == null ? null : JobQueryDefaultDataset.fromMap((map['defaultDataset'] as Map).cast<String, dynamic>()),
      destinationEncryptionConfiguration: map['destinationEncryptionConfiguration'] == null ? null : JobQueryDestinationEncryptionConfiguration.fromMap((map['destinationEncryptionConfiguration'] as Map).cast<String, dynamic>()),
      destinationTable: map['destinationTable'] == null ? null : JobQueryDestinationTable.fromMap((map['destinationTable'] as Map).cast<String, dynamic>()),
      flattenResults: map['flattenResults'] == null ? null : map['flattenResults'] as bool,
      maximumBillingTier: map['maximumBillingTier'] == null ? null : map['maximumBillingTier'] as int,
      maximumBytesBilled: map['maximumBytesBilled'] == null ? null : map['maximumBytesBilled'] as String,
      parameterMode: map['parameterMode'] == null ? null : map['parameterMode'] as String,
      priority: map['priority'] == null ? null : map['priority'] as String,
      query: map['query'] as String,
      schemaUpdateOptions: map['schemaUpdateOptions'] == null ? null : (map['schemaUpdateOptions'] as List).cast<String>(),
      scriptOptions: map['scriptOptions'] == null ? null : JobQueryScriptOptions.fromMap((map['scriptOptions'] as Map).cast<String, dynamic>()),
      useLegacySql: map['useLegacySql'] == null ? null : map['useLegacySql'] as bool,
      useQueryCache: map['useQueryCache'] == null ? null : map['useQueryCache'] as bool,
      userDefinedFunctionResources: map['userDefinedFunctionResources'] == null ? null : pulumi.Input.decodeList<JobQueryUserDefinedFunctionResource>(map['userDefinedFunctionResources'], (value) => JobQueryUserDefinedFunctionResource.fromMap((value as Map).cast<String, dynamic>())),
      writeDisposition: map['writeDisposition'] == null ? null : map['writeDisposition'] as String,
    );
  }
}

