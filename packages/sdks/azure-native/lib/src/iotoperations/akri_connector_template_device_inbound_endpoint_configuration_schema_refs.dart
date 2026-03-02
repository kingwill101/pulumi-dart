// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AkriConnectorTemplateDeviceInboundEndpointConfigurationSchemaRefs properties.
class AkriConnectorTemplateDeviceInboundEndpointConfigurationSchemaRefs {
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

  /// Creates a new [AkriConnectorTemplateDeviceInboundEndpointConfigurationSchemaRefs].
  /// [additionalConfigSchemaRef] The additional configuration schema reference.
  /// [defaultDatasetConfigSchemaRef] The default configuration schema reference for datasets.
  /// [defaultEventsConfigSchemaRef] The default configuration schema reference for events.
  /// [defaultProcessControlConfigSchemaRef] The default configuration schema reference for process control.
  /// [defaultStreamsConfigSchemaRef] The default configuration schema reference for streams.
  AkriConnectorTemplateDeviceInboundEndpointConfigurationSchemaRefs({
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
      additionalConfigSchemaRef: map['additionalConfigSchemaRef'] == null ? null : (map['additionalConfigSchemaRef']! as String).input(),
      defaultDatasetConfigSchemaRef: map['defaultDatasetConfigSchemaRef'] == null ? null : (map['defaultDatasetConfigSchemaRef']! as String).input(),
      defaultEventsConfigSchemaRef: map['defaultEventsConfigSchemaRef'] == null ? null : (map['defaultEventsConfigSchemaRef']! as String).input(),
      defaultProcessControlConfigSchemaRef: map['defaultProcessControlConfigSchemaRef'] == null ? null : (map['defaultProcessControlConfigSchemaRef']! as String).input(),
      defaultStreamsConfigSchemaRef: map['defaultStreamsConfigSchemaRef'] == null ? null : (map['defaultStreamsConfigSchemaRef']! as String).input(),
    );
  }
}

