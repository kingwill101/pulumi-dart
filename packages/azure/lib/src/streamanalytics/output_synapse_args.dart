// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_streamanalytics_output_synapse_output_synapse_args_doc}
/// The set of arguments for OutputSynapse.
/// {@endtemplate}
/// {@macro pulumi_streamanalytics_output_synapse_output_synapse_args_doc}
class OutputSynapseArgs {
  /// The name of the Azure SQL database. Changing this forces a new resource to be created.
  final pulumi.Input<String> database;
  /// The name of the Stream Output. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The password that will be used to connect to the Azure SQL database.
  final pulumi.Input<String> password;
  /// The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the SQL server containing the Azure SQL database. Changing this forces a new resource to be created.
  final pulumi.Input<String> server;
  /// The name of the Stream Analytics Job. Changing this forces a new resource to be created.
  final pulumi.Input<String> streamAnalyticsJobName;
  /// The name of the table in the Azure SQL database. Changing this forces a new resource to be created.
  final pulumi.Input<String> table;
  /// The user name that will be used to connect to the Azure SQL database. Changing this forces a new resource to be created.
  final pulumi.Input<String> user;

  /// Creates a new [OutputSynapseArgs].
  /// [database] The name of the Azure SQL database. Changing this forces a new resource to be created.
  /// [name] The name of the Stream Output. Changing this forces a new resource to be created.
  /// [password] The password that will be used to connect to the Azure SQL database.
  /// [resourceGroupName] The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created.
  /// [server] The name of the SQL server containing the Azure SQL database. Changing this forces a new resource to be created.
  /// [streamAnalyticsJobName] The name of the Stream Analytics Job. Changing this forces a new resource to be created.
  /// [table] The name of the table in the Azure SQL database. Changing this forces a new resource to be created.
  /// [user] The user name that will be used to connect to the Azure SQL database. Changing this forces a new resource to be created.
  OutputSynapseArgs({
    required String database,
    String? name,
    required String password,
    required String resourceGroupName,
    required String server,
    required String streamAnalyticsJobName,
    required String table,
    required String user,
  }) :
      database = pulumi.Input.asInput<String>(database),
      name = pulumi.Input.asOptionalInput<String>(name),
      password = pulumi.Input.asInput<String>(password),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      server = pulumi.Input.asInput<String>(server),
      streamAnalyticsJobName = pulumi.Input.asInput<String>(streamAnalyticsJobName),
      table = pulumi.Input.asInput<String>(table),
      user = pulumi.Input.asInput<String>(user);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': database,
      'name': ?name,
      'password': password,
      'resourceGroupName': resourceGroupName,
      'server': server,
      'streamAnalyticsJobName': streamAnalyticsJobName,
      'table': table,
      'user': user,
    };
  }

  factory OutputSynapseArgs.fromMap(Map<String, dynamic> map) {
    return OutputSynapseArgs(
      database: map['database'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      password: map['password'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      server: map['server'] as String,
      streamAnalyticsJobName: map['streamAnalyticsJobName'] as String,
      table: map['table'] as String,
      user: map['user'] as String,
    );
  }
}

