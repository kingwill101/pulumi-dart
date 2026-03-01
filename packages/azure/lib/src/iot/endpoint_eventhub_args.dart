// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iot_endpoint_eventhub_endpoint_eventhub_args_doc}
/// The set of arguments for EndpointEventhub.
/// {@endtemplate}
/// {@macro pulumi_iot_endpoint_eventhub_endpoint_eventhub_args_doc}
class EndpointEventhubArgs {
  /// Type used to authenticate against the Event Hub endpoint. Possible values are `keyBased` and `identityBased`. Defaults to `keyBased`.
  final pulumi.Input<String>? authenticationType;
  /// The connection string for the endpoint. This attribute can only be specified and is mandatory when `authentication_type` is `keyBased`.
  final pulumi.Input<String>? connectionString;
  /// URI of the Event Hubs Namespace endpoint. This attribute can only be specified and is mandatory when `authentication_type` is `identityBased`.
  final pulumi.Input<String>? endpointUri;
  /// Name of the Event Hub. This attribute can only be specified and is mandatory when `authentication_type` is `identityBased`.
  final pulumi.Input<String>? entityPath;
  /// ID of the User Managed Identity used to authenticate against the Event Hub endpoint.
  ///
  /// > **Note:** `identity_id` can only be specified when `authentication_type` is `identityBased`. It must be one of the `identity_ids` of the Iot Hub. If not specified when `authentication_type` is `identityBased`, System Assigned Managed Identity of the Iot Hub will be used.
  final pulumi.Input<String>? identityId;
  /// The IoTHub ID for the endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String> iothubId;
  /// The name of the endpoint. The name must be unique across endpoint types. The following names are reserved: `events`, `operationsMonitoringEvents`, `fileNotifications` and `$default`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group under which the Event Hub has been created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The subscription ID for the endpoint.
  ///
  /// > **Note:** When `subscription_id` isn't specified it will be set to the subscription ID of the IoT Hub resource.
  final pulumi.Input<String>? subscriptionId;

  /// Creates a new [EndpointEventhubArgs].
  /// [authenticationType] Type used to authenticate against the Event Hub endpoint. Possible values are `keyBased` and `identityBased`. Defaults to `keyBased`.
  /// [connectionString] The connection string for the endpoint. This attribute can only be specified and is mandatory when `authentication_type` is `keyBased`.
  /// [endpointUri] URI of the Event Hubs Namespace endpoint. This attribute can only be specified and is mandatory when `authentication_type` is `identityBased`.
  /// [entityPath] Name of the Event Hub. This attribute can only be specified and is mandatory when `authentication_type` is `identityBased`.
  /// [identityId] ID of the User Managed Identity used to authenticate against the Event Hub endpoint.
  /// [iothubId] The IoTHub ID for the endpoint. Changing this forces a new resource to be created.
  /// [name] The name of the endpoint. The name must be unique across endpoint types. The following names are reserved: `events`, `operationsMonitoringEvents`, `fileNotifications` and `$default`. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group under which the Event Hub has been created. Changing this forces a new resource to be created.
  /// [subscriptionId] The subscription ID for the endpoint.
  EndpointEventhubArgs({
    String? authenticationType,
    String? connectionString,
    String? endpointUri,
    String? entityPath,
    String? identityId,
    required String iothubId,
    String? name,
    required String resourceGroupName,
    String? subscriptionId,
  }) :
      authenticationType = pulumi.Input.asOptionalInput<String>(authenticationType),
      connectionString = pulumi.Input.asOptionalInput<String>(connectionString),
      endpointUri = pulumi.Input.asOptionalInput<String>(endpointUri),
      entityPath = pulumi.Input.asOptionalInput<String>(entityPath),
      identityId = pulumi.Input.asOptionalInput<String>(identityId),
      iothubId = pulumi.Input.asInput<String>(iothubId),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      subscriptionId = pulumi.Input.asOptionalInput<String>(subscriptionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationType': ?authenticationType,
      'connectionString': ?connectionString,
      'endpointUri': ?endpointUri,
      'entityPath': ?entityPath,
      'identityId': ?identityId,
      'iothubId': iothubId,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'subscriptionId': ?subscriptionId,
    };
  }

  factory EndpointEventhubArgs.fromMap(Map<String, dynamic> map) {
    return EndpointEventhubArgs(
      authenticationType: map['authenticationType'] == null ? null : map['authenticationType'] as String,
      connectionString: map['connectionString'] == null ? null : map['connectionString'] as String,
      endpointUri: map['endpointUri'] == null ? null : map['endpointUri'] as String,
      entityPath: map['entityPath'] == null ? null : map['entityPath'] as String,
      identityId: map['identityId'] == null ? null : map['identityId'] as String,
      iothubId: map['iothubId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      subscriptionId: map['subscriptionId'] == null ? null : map['subscriptionId'] as String,
    );
  }
}

