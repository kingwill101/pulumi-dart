// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointConfigurationDataCaptureConfigCaptureContentTypeHeader {
  /// CSV content type headers to capture. One of `csvContentTypes` or `jsonContentTypes` is required.
  final pulumi.Input<List<String>>? csvContentTypes;
  /// The JSON content type headers to capture. One of `jsonContentTypes` or `csvContentTypes` is required.
  final pulumi.Input<List<String>>? jsonContentTypes;

  /// Creates a new [EndpointConfigurationDataCaptureConfigCaptureContentTypeHeader].
  /// [csvContentTypes] CSV content type headers to capture. One of `csvContentTypes` or `jsonContentTypes` is required.
  /// [jsonContentTypes] The JSON content type headers to capture. One of `jsonContentTypes` or `csvContentTypes` is required.
  const EndpointConfigurationDataCaptureConfigCaptureContentTypeHeader({
    this.csvContentTypes,
    this.jsonContentTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'csvContentTypes': ?csvContentTypes,
      'jsonContentTypes': ?jsonContentTypes,
    };
  }

  factory EndpointConfigurationDataCaptureConfigCaptureContentTypeHeader.fromMap(Map<String, dynamic> map) {
    return EndpointConfigurationDataCaptureConfigCaptureContentTypeHeader(
      csvContentTypes: (() { final guardedValue = map['csvContentTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      jsonContentTypes: (() { final guardedValue = map['jsonContentTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
