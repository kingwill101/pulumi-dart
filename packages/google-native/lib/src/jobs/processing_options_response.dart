// ignore_for_file: unused_element, unnecessary_cast

/// Input only. Options for job processing.
class ProcessingOptionsResponse {
  /// Optional. If set to `true`, the service does not attempt to resolve a more precise address for the job.
  final bool disableStreetAddressResolution;

  /// Optional. Option for job HTML content sanitization. Applied fields are: * description * applicationInfo.instruction * incentives * qualifications * responsibilities HTML tags in these fields may be stripped if sanitiazation is not disabled. Defaults to HtmlSanitization.SIMPLE_FORMATTING_ONLY.
  final String htmlSanitization;

  /// Creates a new [ProcessingOptionsResponse].
  /// [disableStreetAddressResolution] Optional. If set to `true`, the service does not attempt to resolve a more precise address for the job.
  /// [htmlSanitization] Optional. Option for job HTML content sanitization. Applied fields are: * description * applicationInfo.instruction * incentives * qualifications * responsibilities HTML tags in these fields may be stripped if sanitiazation is not disabled. Defaults to HtmlSanitization.SIMPLE_FORMATTING_ONLY.
  ProcessingOptionsResponse({
    required this.disableStreetAddressResolution,
    required this.htmlSanitization,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableStreetAddressResolution': disableStreetAddressResolution,
      'htmlSanitization': htmlSanitization,
    };
  }

  factory ProcessingOptionsResponse.fromMap(Map<String, dynamic> map) {
    return ProcessingOptionsResponse(
      disableStreetAddressResolution:
          map['disableStreetAddressResolution'] as bool,
      htmlSanitization: map['htmlSanitization'] as String,
    );
  }
}
