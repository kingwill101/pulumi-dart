// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'output_event_hub_serialization.dart';

/// {@template pulumi_streamanalytics_output_event_hub_output_event_hub_args_doc}
/// The set of arguments for OutputEventHub.
/// {@endtemplate}
/// {@macro pulumi_streamanalytics_output_event_hub_output_event_hub_args_doc}
class OutputEventHubArgs {
  /// The authentication mode for the Stream Output. Possible values are `Msi` and `ConnectionString`. Defaults to `ConnectionString`.
  final pulumi.Input<String>? authenticationMode;
  /// The name of the Event Hub.
  final pulumi.Input<String> eventhubName;
  /// The name of the Stream Output. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The column that is used for the Event Hub partition key.
  final pulumi.Input<String>? partitionKey;
  /// A list of property columns to add to the Event Hub output.
  final pulumi.Input<List<String>>? propertyColumns;
  /// The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A `serialization` block as defined below.
  final pulumi.Input<OutputEventHubSerialization> serialization;
  /// The namespace that is associated with the desired Event Hub, Service Bus Queue, Service Bus Topic, etc.
  final pulumi.Input<String> servicebusNamespace;
  /// The shared access policy key for the specified shared access policy. Required when `authentication_mode` is set to `ConnectionString`.
  final pulumi.Input<String>? sharedAccessPolicyKey;
  /// The shared access policy name for the Event Hub, Service Bus Queue, Service Bus Topic, etc. Required when `authentication_mode` is set to `ConnectionString`.
  final pulumi.Input<String>? sharedAccessPolicyName;
  /// The name of the Stream Analytics Job. Changing this forces a new resource to be created.
  final pulumi.Input<String> streamAnalyticsJobName;

  /// Creates a new [OutputEventHubArgs].
  /// [authenticationMode] The authentication mode for the Stream Output. Possible values are `Msi` and `ConnectionString`. Defaults to `ConnectionString`.
  /// [eventhubName] The name of the Event Hub.
  /// [name] The name of the Stream Output. Changing this forces a new resource to be created.
  /// [partitionKey] The column that is used for the Event Hub partition key.
  /// [propertyColumns] A list of property columns to add to the Event Hub output.
  /// [resourceGroupName] The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created.
  /// [serialization] A `serialization` block as defined below.
  /// [servicebusNamespace] The namespace that is associated with the desired Event Hub, Service Bus Queue, Service Bus Topic, etc.
  /// [sharedAccessPolicyKey] The shared access policy key for the specified shared access policy. Required when `authentication_mode` is set to `ConnectionString`.
  /// [sharedAccessPolicyName] The shared access policy name for the Event Hub, Service Bus Queue, Service Bus Topic, etc. Required when `authentication_mode` is set to `ConnectionString`.
  /// [streamAnalyticsJobName] The name of the Stream Analytics Job. Changing this forces a new resource to be created.
  OutputEventHubArgs({
    String? authenticationMode,
    required String eventhubName,
    String? name,
    String? partitionKey,
    List<String>? propertyColumns,
    required String resourceGroupName,
    required OutputEventHubSerialization serialization,
    required String servicebusNamespace,
    String? sharedAccessPolicyKey,
    String? sharedAccessPolicyName,
    required String streamAnalyticsJobName,
  }) :
      authenticationMode = pulumi.Input.asOptionalInput<String>(authenticationMode),
      eventhubName = pulumi.Input.asInput<String>(eventhubName),
      name = pulumi.Input.asOptionalInput<String>(name),
      partitionKey = pulumi.Input.asOptionalInput<String>(partitionKey),
      propertyColumns = pulumi.Input.asOptionalInput<List<String>>(propertyColumns),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serialization = pulumi.Input.asInput<OutputEventHubSerialization>(serialization),
      servicebusNamespace = pulumi.Input.asInput<String>(servicebusNamespace),
      sharedAccessPolicyKey = pulumi.Input.asOptionalInput<String>(sharedAccessPolicyKey),
      sharedAccessPolicyName = pulumi.Input.asOptionalInput<String>(sharedAccessPolicyName),
      streamAnalyticsJobName = pulumi.Input.asInput<String>(streamAnalyticsJobName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationMode': ?authenticationMode,
      'eventhubName': eventhubName,
      'name': ?name,
      'partitionKey': ?partitionKey,
      'propertyColumns': ?propertyColumns,
      'resourceGroupName': resourceGroupName,
      'serialization': pulumi.Input.mapInputValue<OutputEventHubSerialization, Map<String, dynamic>>(serialization, (value) => value.toMap()),
      'servicebusNamespace': servicebusNamespace,
      'sharedAccessPolicyKey': ?sharedAccessPolicyKey,
      'sharedAccessPolicyName': ?sharedAccessPolicyName,
      'streamAnalyticsJobName': streamAnalyticsJobName,
    };
  }

  factory OutputEventHubArgs.fromMap(Map<String, dynamic> map) {
    return OutputEventHubArgs(
      authenticationMode: map['authenticationMode'] == null ? null : map['authenticationMode'] as String,
      eventhubName: map['eventhubName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      partitionKey: map['partitionKey'] == null ? null : map['partitionKey'] as String,
      propertyColumns: map['propertyColumns'] == null ? null : (map['propertyColumns'] as List).cast<String>(),
      resourceGroupName: map['resourceGroupName'] as String,
      serialization: OutputEventHubSerialization.fromMap((map['serialization'] as Map).cast<String, dynamic>()),
      servicebusNamespace: map['servicebusNamespace'] as String,
      sharedAccessPolicyKey: map['sharedAccessPolicyKey'] == null ? null : map['sharedAccessPolicyKey'] as String,
      sharedAccessPolicyName: map['sharedAccessPolicyName'] == null ? null : map['sharedAccessPolicyName'] as String,
      streamAnalyticsJobName: map['streamAnalyticsJobName'] as String,
    );
  }
}

