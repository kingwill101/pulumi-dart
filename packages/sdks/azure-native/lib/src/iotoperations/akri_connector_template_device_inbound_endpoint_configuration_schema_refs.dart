// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AkriConnectorTemplateDeviceInboundEndpointConfigurationSchemaRefs properties.
class AkriConnectorTemplateDeviceInboundEndpointConfigurationSchemaRefs {
  /// The additional configuration schema reference.
  final pulumi.Input<String?>? additionalConfigSchemaRef;
  /// The default configuration schema reference for datasets.
  final pulumi.Input<String?>? defaultDatasetConfigSchemaRef;
  /// The default configuration schema reference for events.
  final pulumi.Input<String?>? defaultEventsConfigSchemaRef;
  /// The default configuration schema reference for process control.
  final pulumi.Input<String?>? defaultProcessControlConfigSchemaRef;
  /// The default configuration schema reference for streams.
  final pulumi.Input<String?>? defaultStreamsConfigSchemaRef;

  /// Creates a new [AkriConnectorTemplateDeviceInboundEndpointConfigurationSchemaRefs].
  /// [additionalConfigSchemaRef] The additional configuration schema reference.
  /// [defaultDatasetConfigSchemaRef] The default configuration schema reference for datasets.
  /// [defaultEventsConfigSchemaRef] The default configuration schema reference for events.
  /// [defaultProcessControlConfigSchemaRef] The default configuration schema reference for process control.
  /// [defaultStreamsConfigSchemaRef] The default configuration schema reference for streams.
  const AkriConnectorTemplateDeviceInboundEndpointConfigurationSchemaRefs({
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

  factory AkriConnectorTemplateDeviceInboundEndpointConfigurationSchemaRefs.fromMap(Map<String, dynamic> map) {
    return AkriConnectorTemplateDeviceInboundEndpointConfigurationSchemaRefs(
      additionalConfigSchemaRef: (() { final guardedValue = map['additionalConfigSchemaRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultDatasetConfigSchemaRef: (() { final guardedValue = map['defaultDatasetConfigSchemaRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultEventsConfigSchemaRef: (() { final guardedValue = map['defaultEventsConfigSchemaRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultProcessControlConfigSchemaRef: (() { final guardedValue = map['defaultProcessControlConfigSchemaRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultStreamsConfigSchemaRef: (() { final guardedValue = map['defaultStreamsConfigSchemaRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
