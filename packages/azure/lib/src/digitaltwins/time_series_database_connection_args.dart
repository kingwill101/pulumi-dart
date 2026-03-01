// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_digitaltwins_time_series_database_connection_time_series_database_connection_args_doc}
/// The set of arguments for TimeSeriesDatabaseConnection.
/// {@endtemplate}
/// {@macro pulumi_digitaltwins_time_series_database_connection_time_series_database_connection_args_doc}
class TimeSeriesDatabaseConnectionArgs {
  /// The ID of the Digital Twins. Changing this forces a new resource to be created.
  final pulumi.Input<String> digitalTwinsId;
  /// Name of the Event Hub Consumer Group. Changing this forces a new resource to be created. Defaults to `$Default`.
  final pulumi.Input<String>? eventhubConsumerGroupName;
  /// Name of the Event Hub. Changing this forces a new resource to be created.
  final pulumi.Input<String> eventhubName;
  /// URI of the Event Hub Namespace. Changing this forces a new resource to be created.
  final pulumi.Input<String> eventhubNamespaceEndpointUri;
  /// The ID of the Event Hub Namespace. Changing this forces a new resource to be created.
  final pulumi.Input<String> eventhubNamespaceId;
  /// The ID of the Kusto Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String> kustoClusterId;
  /// URI of the Kusto Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String> kustoClusterUri;
  /// Name of the Kusto Database. Changing this forces a new resource to be created.
  final pulumi.Input<String> kustoDatabaseName;
  /// Name of the Kusto Table. Defaults to `AdtPropertyEvents`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? kustoTableName;
  /// The name which should be used for this Digital Twins Time Series Database Connection. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// Creates a new [TimeSeriesDatabaseConnectionArgs].
  /// [digitalTwinsId] The ID of the Digital Twins. Changing this forces a new resource to be created.
  /// [eventhubConsumerGroupName] Name of the Event Hub Consumer Group. Changing this forces a new resource to be created. Defaults to `$Default`.
  /// [eventhubName] Name of the Event Hub. Changing this forces a new resource to be created.
  /// [eventhubNamespaceEndpointUri] URI of the Event Hub Namespace. Changing this forces a new resource to be created.
  /// [eventhubNamespaceId] The ID of the Event Hub Namespace. Changing this forces a new resource to be created.
  /// [kustoClusterId] The ID of the Kusto Cluster. Changing this forces a new resource to be created.
  /// [kustoClusterUri] URI of the Kusto Cluster. Changing this forces a new resource to be created.
  /// [kustoDatabaseName] Name of the Kusto Database. Changing this forces a new resource to be created.
  /// [kustoTableName] Name of the Kusto Table. Defaults to `AdtPropertyEvents`. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Digital Twins Time Series Database Connection. Changing this forces a new resource to be created.
  TimeSeriesDatabaseConnectionArgs({
    required String digitalTwinsId,
    String? eventhubConsumerGroupName,
    required String eventhubName,
    required String eventhubNamespaceEndpointUri,
    required String eventhubNamespaceId,
    required String kustoClusterId,
    required String kustoClusterUri,
    required String kustoDatabaseName,
    String? kustoTableName,
    String? name,
  }) :
      digitalTwinsId = pulumi.Input.asInput<String>(digitalTwinsId),
      eventhubConsumerGroupName = pulumi.Input.asOptionalInput<String>(eventhubConsumerGroupName),
      eventhubName = pulumi.Input.asInput<String>(eventhubName),
      eventhubNamespaceEndpointUri = pulumi.Input.asInput<String>(eventhubNamespaceEndpointUri),
      eventhubNamespaceId = pulumi.Input.asInput<String>(eventhubNamespaceId),
      kustoClusterId = pulumi.Input.asInput<String>(kustoClusterId),
      kustoClusterUri = pulumi.Input.asInput<String>(kustoClusterUri),
      kustoDatabaseName = pulumi.Input.asInput<String>(kustoDatabaseName),
      kustoTableName = pulumi.Input.asOptionalInput<String>(kustoTableName),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'digitalTwinsId': digitalTwinsId,
      'eventhubConsumerGroupName': ?eventhubConsumerGroupName,
      'eventhubName': eventhubName,
      'eventhubNamespaceEndpointUri': eventhubNamespaceEndpointUri,
      'eventhubNamespaceId': eventhubNamespaceId,
      'kustoClusterId': kustoClusterId,
      'kustoClusterUri': kustoClusterUri,
      'kustoDatabaseName': kustoDatabaseName,
      'kustoTableName': ?kustoTableName,
      'name': ?name,
    };
  }

  factory TimeSeriesDatabaseConnectionArgs.fromMap(Map<String, dynamic> map) {
    return TimeSeriesDatabaseConnectionArgs(
      digitalTwinsId: map['digitalTwinsId'] as String,
      eventhubConsumerGroupName: map['eventhubConsumerGroupName'] == null ? null : map['eventhubConsumerGroupName'] as String,
      eventhubName: map['eventhubName'] as String,
      eventhubNamespaceEndpointUri: map['eventhubNamespaceEndpointUri'] as String,
      eventhubNamespaceId: map['eventhubNamespaceId'] as String,
      kustoClusterId: map['kustoClusterId'] as String,
      kustoClusterUri: map['kustoClusterUri'] as String,
      kustoDatabaseName: map['kustoDatabaseName'] as String,
      kustoTableName: map['kustoTableName'] == null ? null : map['kustoTableName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

