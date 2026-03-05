// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AkriConnectorTemplateDeviceInboundEndpointConfigurationSchemaRefs properties.
class AkriConnectorTemplateDeviceInboundEndpointConfigurationSchemaRefsResponse {
  /// The additional configuration schema reference.
  final pulumi.Input<String>? additionalConfigSchemaRef;
  /// The default configuration schema reference for datasets.
  final pulumi.Input<String>? defaultDatasetConfigSchemaRef;
  /// The default configuration schema reference for events.
  final pulumi.Input<String>? defaultEventsConfigSchemaRef;
  /// The default configuration schema reference for process control.
  final pulumi.Input<String>? defaultProcessControlConfigSchemaRef;
  /// The default configuration schema reference for streams.
  final pulumi.Input<String>? defaultStreamsConfigSchemaRef;

  /// Creates a new [AkriConnectorTemplateDeviceInboundEndpointConfigurationSchemaRefsResponse].
  /// [additionalConfigSchemaRef] The additional configuration schema reference.
  /// [defaultDatasetConfigSchemaRef] The default configuration schema reference for datasets.
  /// [defaultEventsConfigSchemaRef] The default configuration schema reference for events.
  /// [defaultProcessControlConfigSchemaRef] The default configuration schema reference for process control.
  /// [defaultStreamsConfigSchemaRef] The default configuration schema reference for streams.
  AkriConnectorTemplateDeviceInboundEndpointConfigurationSchemaRefsResponse({
    this.additionalConfigSchemaRef,
    this.defaultDatasetConfigSchemaRef,
    this.defaultEventsConfigSchemaRef,
    this.defaultProcessControlConfigSchemaRef,
    this.defaultStreamsConfigSchemaRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalConfigSchemaRef': ?additionalConfigSchemaRef,
      'defaultDatasetConfigSchemaRef': ?defaultDatasetConfigSchemaRef,
      'defaultEventsConfigSchemaRef': ?defaultEventsConfigSchemaRef,
      'defaultProcessControlConfigSchemaRef': ?defaultProcessControlConfigSchemaRef,
      'defaultStreamsConfigSchemaRef': ?defaultStreamsConfigSchemaRef,
    };
  }

  factory AkriConnectorTemplateDeviceInboundEndpointConfigurationSchemaRefsResponse.fromMap(Map<String, dynamic> map) {
    return AkriConnectorTemplateDeviceInboundEndpointConfigurationSchemaRefsResponse(
      additionalConfigSchemaRef: (() { final guardedValue = map['additionalConfigSchemaRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultDatasetConfigSchemaRef: (() { final guardedValue = map['defaultDatasetConfigSchemaRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultEventsConfigSchemaRef: (() { final guardedValue = map['defaultEventsConfigSchemaRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultProcessControlConfigSchemaRef: (() { final guardedValue = map['defaultProcessControlConfigSchemaRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultStreamsConfigSchemaRef: (() { final guardedValue = map['defaultStreamsConfigSchemaRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

