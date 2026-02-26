// ignore_for_file: unused_element, unnecessary_cast

import '../pipeline_destination_authentication_config/pipeline_destination_authentication_config.dart';
import '../pipeline_destination_http_endpoint/pipeline_destination_http_endpoint.dart';
import '../pipeline_destination_network_config/pipeline_destination_network_config.dart';
import '../pipeline_destination_output_payload_format/pipeline_destination_output_payload_format.dart';

class PipelineDestination {
  /// Represents a config used to authenticate message requests.
  /// Structure is documented below.
  final PipelineDestinationAuthenticationConfig? authenticationConfig;

  /// Represents a HTTP endpoint destination.
  /// Structure is documented below.
  final PipelineDestinationHttpEndpoint? httpEndpoint;

  /// The resource name of the Message Bus to which events should be
  /// published. The Message Bus resource should exist in the same project as
  /// the Pipeline. Format:
  /// `projects/{project}/locations/{location}/messageBuses/{message_bus}`
  final String? messageBus;

  /// Represents a network config to be used for destination resolution and
  /// connectivity.
  /// Structure is documented below.
  final PipelineDestinationNetworkConfig? networkConfig;

  /// Represents the format of message data.
  /// Structure is documented below.
  final PipelineDestinationOutputPayloadFormat? outputPayloadFormat;

  /// The resource name of the Pub/Sub topic to which events should be
  /// published. Format:
  /// `projects/{project}/locations/{location}/topics/{topic}`
  final String? topic;

  /// The resource name of the Workflow whose Executions are triggered by
  /// the events. The Workflow resource should be deployed in the same
  /// project as the Pipeline. Format:
  /// `projects/{project}/locations/{location}/workflows/{workflow}`
  final String? workflow;

  PipelineDestination({
    this.authenticationConfig,
    this.httpEndpoint,
    this.messageBus,
    this.networkConfig,
    this.outputPayloadFormat,
    this.topic,
    this.workflow,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final authenticationConfigValue = authenticationConfig;
    if (authenticationConfigValue != null) {
      map['authenticationConfig'] = authenticationConfigValue.toMap();
    }
    final httpEndpointValue = httpEndpoint;
    if (httpEndpointValue != null) {
      map['httpEndpoint'] = httpEndpointValue.toMap();
    }
    final messageBusValue = messageBus;
    if (messageBusValue != null) {
      map['messageBus'] = messageBusValue;
    }
    final networkConfigValue = networkConfig;
    if (networkConfigValue != null) {
      map['networkConfig'] = networkConfigValue.toMap();
    }
    final outputPayloadFormatValue = outputPayloadFormat;
    if (outputPayloadFormatValue != null) {
      map['outputPayloadFormat'] = outputPayloadFormatValue.toMap();
    }
    final topicValue = topic;
    if (topicValue != null) {
      map['topic'] = topicValue;
    }
    final workflowValue = workflow;
    if (workflowValue != null) {
      map['workflow'] = workflowValue;
    }
    return map;
  }

  factory PipelineDestination.fromMap(Map<String, dynamic> map) {
    return PipelineDestination(
      authenticationConfig: map['authenticationConfig'] == null
          ? null
          : PipelineDestinationAuthenticationConfig.fromMap(
              (map['authenticationConfig'] as Map).cast<String, dynamic>()),
      httpEndpoint: map['httpEndpoint'] == null
          ? null
          : PipelineDestinationHttpEndpoint.fromMap(
              (map['httpEndpoint'] as Map).cast<String, dynamic>()),
      messageBus:
          map['messageBus'] == null ? null : map['messageBus'] as String,
      networkConfig: map['networkConfig'] == null
          ? null
          : PipelineDestinationNetworkConfig.fromMap(
              (map['networkConfig'] as Map).cast<String, dynamic>()),
      outputPayloadFormat: map['outputPayloadFormat'] == null
          ? null
          : PipelineDestinationOutputPayloadFormat.fromMap(
              (map['outputPayloadFormat'] as Map).cast<String, dynamic>()),
      topic: map['topic'] == null ? null : map['topic'] as String,
      workflow: map['workflow'] == null ? null : map['workflow'] as String,
    );
  }
}
