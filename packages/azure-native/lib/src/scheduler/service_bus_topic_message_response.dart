// ignore_for_file: unused_element, unnecessary_cast

import 'service_bus_authentication_response.dart';
import 'service_bus_brokered_message_properties_response.dart';

class ServiceBusTopicMessageResponse {
  /// Gets or sets the Service Bus authentication.
  final ServiceBusAuthenticationResponse? authentication;
  /// Gets or sets the brokered message properties.
  final ServiceBusBrokeredMessagePropertiesResponse? brokeredMessageProperties;
  /// Gets or sets the custom message properties.
  final Map<String, String>? customMessageProperties;
  /// Gets or sets the message.
  final String? message;
  /// Gets or sets the namespace.
  final String? namespace;
  /// Gets or sets the topic path.
  final String? topicPath;
  /// Gets or sets the transport type.
  final String? transportType;

  /// Creates a new [ServiceBusTopicMessageResponse].
  /// [authentication] Gets or sets the Service Bus authentication.
  /// [brokeredMessageProperties] Gets or sets the brokered message properties.
  /// [customMessageProperties] Gets or sets the custom message properties.
  /// [message] Gets or sets the message.
  /// [namespace] Gets or sets the namespace.
  /// [topicPath] Gets or sets the topic path.
  /// [transportType] Gets or sets the transport type.
  ServiceBusTopicMessageResponse({
    this.authentication,
    this.brokeredMessageProperties,
    this.customMessageProperties,
    this.message,
    this.namespace,
    this.topicPath,
    this.transportType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?authentication == null ? null : authentication!.toMap(),
      'brokeredMessageProperties': ?brokeredMessageProperties == null ? null : brokeredMessageProperties!.toMap(),
      'customMessageProperties': ?customMessageProperties,
      'message': ?message,
      'namespace': ?namespace,
      'topicPath': ?topicPath,
      'transportType': ?transportType,
    };
  }

  factory ServiceBusTopicMessageResponse.fromMap(Map<String, dynamic> map) {
    return ServiceBusTopicMessageResponse(
      authentication: map['authentication'] == null ? null : ServiceBusAuthenticationResponse.fromMap((map['authentication'] as Map).cast<String, dynamic>()),
      brokeredMessageProperties: map['brokeredMessageProperties'] == null ? null : ServiceBusBrokeredMessagePropertiesResponse.fromMap((map['brokeredMessageProperties'] as Map).cast<String, dynamic>()),
      customMessageProperties: map['customMessageProperties'] == null ? null : (map['customMessageProperties'] as Map).cast<String, String>(),
      message: map['message'] == null ? null : map['message'] as String,
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
      topicPath: map['topicPath'] == null ? null : map['topicPath'] as String,
      transportType: map['transportType'] == null ? null : map['transportType'] as String,
    );
  }
}

