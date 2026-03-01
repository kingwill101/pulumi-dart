// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_digitaltwins_endpoint_event_grid_endpoint_event_grid_args_doc}
/// The set of arguments for EndpointEventGrid.
/// {@endtemplate}
/// {@macro pulumi_digitaltwins_endpoint_event_grid_endpoint_event_grid_args_doc}
class EndpointEventGridArgs {
  /// The storage secret of the dead-lettering, whose format is `https://<storageAccountname>.blob.core.windows.net/<containerName>?<SASToken>`. When an endpoint can't deliver an event within a certain time period or after trying to deliver the event a certain number of times, it can send the undelivered event to a storage account.
  final pulumi.Input<String>? deadLetterStorageSecret;
  /// The resource ID of the Digital Twins Instance. Changing this forces a new Digital Twins Eventgrid Endpoint to be created.
  final pulumi.Input<String> digitalTwinsId;
  /// The endpoint of the Event Grid Topic.
  final pulumi.Input<String> eventgridTopicEndpoint;
  /// The primary access key of the Event Grid Topic.
  final pulumi.Input<String> eventgridTopicPrimaryAccessKey;
  /// The secondary access key of the Event Grid Topic.
  final pulumi.Input<String> eventgridTopicSecondaryAccessKey;
  /// The name which should be used for this Digital Twins Eventgrid Endpoint. Changing this forces a new Digital Twins Eventgrid Endpoint to be created.
  final pulumi.Input<String>? name;

  /// Creates a new [EndpointEventGridArgs].
  /// [deadLetterStorageSecret] The storage secret of the dead-lettering, whose format is `https://<storageAccountname>.blob.core.windows.net/<containerName>?<SASToken>`. When an endpoint can't deliver an event within a certain time period or after trying to deliver the event a certain number of times, it can send the undelivered event to a storage account.
  /// [digitalTwinsId] The resource ID of the Digital Twins Instance. Changing this forces a new Digital Twins Eventgrid Endpoint to be created.
  /// [eventgridTopicEndpoint] The endpoint of the Event Grid Topic.
  /// [eventgridTopicPrimaryAccessKey] The primary access key of the Event Grid Topic.
  /// [eventgridTopicSecondaryAccessKey] The secondary access key of the Event Grid Topic.
  /// [name] The name which should be used for this Digital Twins Eventgrid Endpoint. Changing this forces a new Digital Twins Eventgrid Endpoint to be created.
  EndpointEventGridArgs({
    String? deadLetterStorageSecret,
    required String digitalTwinsId,
    required String eventgridTopicEndpoint,
    required String eventgridTopicPrimaryAccessKey,
    required String eventgridTopicSecondaryAccessKey,
    String? name,
  }) :
      deadLetterStorageSecret = pulumi.Input.asOptionalInput<String>(deadLetterStorageSecret),
      digitalTwinsId = pulumi.Input.asInput<String>(digitalTwinsId),
      eventgridTopicEndpoint = pulumi.Input.asInput<String>(eventgridTopicEndpoint),
      eventgridTopicPrimaryAccessKey = pulumi.Input.asInput<String>(eventgridTopicPrimaryAccessKey),
      eventgridTopicSecondaryAccessKey = pulumi.Input.asInput<String>(eventgridTopicSecondaryAccessKey),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deadLetterStorageSecret': ?deadLetterStorageSecret,
      'digitalTwinsId': digitalTwinsId,
      'eventgridTopicEndpoint': eventgridTopicEndpoint,
      'eventgridTopicPrimaryAccessKey': eventgridTopicPrimaryAccessKey,
      'eventgridTopicSecondaryAccessKey': eventgridTopicSecondaryAccessKey,
      'name': ?name,
    };
  }

  factory EndpointEventGridArgs.fromMap(Map<String, dynamic> map) {
    return EndpointEventGridArgs(
      deadLetterStorageSecret: map['deadLetterStorageSecret'] == null ? null : map['deadLetterStorageSecret'] as String,
      digitalTwinsId: map['digitalTwinsId'] as String,
      eventgridTopicEndpoint: map['eventgridTopicEndpoint'] as String,
      eventgridTopicPrimaryAccessKey: map['eventgridTopicPrimaryAccessKey'] as String,
      eventgridTopicSecondaryAccessKey: map['eventgridTopicSecondaryAccessKey'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

