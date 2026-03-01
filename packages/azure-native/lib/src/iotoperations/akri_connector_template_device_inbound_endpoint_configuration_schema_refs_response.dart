// ignore_for_file: unused_element, unnecessary_cast


/// AkriConnectorTemplateDeviceInboundEndpointConfigurationSchemaRefs properties.
class AkriConnectorTemplateDeviceInboundEndpointConfigurationSchemaRefsResponse {
  /// The additional configuration schema reference.
  final String? additionalConfigSchemaRef;
  /// The default configuration schema reference for datasets.
  final String? defaultDatasetConfigSchemaRef;
  /// The default configuration schema reference for events.
  final String? defaultEventsConfigSchemaRef;
  /// The default configuration schema reference for process control.
  final String? defaultProcessControlConfigSchemaRef;
  /// The default configuration schema reference for streams.
  final String? defaultStreamsConfigSchemaRef;

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
      additionalConfigSchemaRef: map['additionalConfigSchemaRef'] == null ? null : map['additionalConfigSchemaRef'] as String,
      defaultDatasetConfigSchemaRef: map['defaultDatasetConfigSchemaRef'] == null ? null : map['defaultDatasetConfigSchemaRef'] as String,
      defaultEventsConfigSchemaRef: map['defaultEventsConfigSchemaRef'] == null ? null : map['defaultEventsConfigSchemaRef'] as String,
      defaultProcessControlConfigSchemaRef: map['defaultProcessControlConfigSchemaRef'] == null ? null : map['defaultProcessControlConfigSchemaRef'] as String,
      defaultStreamsConfigSchemaRef: map['defaultStreamsConfigSchemaRef'] == null ? null : map['defaultStreamsConfigSchemaRef'] as String,
    );
  }
}

