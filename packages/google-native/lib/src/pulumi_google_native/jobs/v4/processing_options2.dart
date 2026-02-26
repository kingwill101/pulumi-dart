// ignore_for_file: unused_element, unnecessary_cast

import 'processing_options_html_sanitization2.dart';

/// Options for job processing.
class ProcessingOptions2 {
  /// If set to `true`, the service does not attempt to resolve a more precise address for the job.
  final bool? disableStreetAddressResolution;

  /// Option for job HTML content sanitization. Applied fields are: * description * applicationInfo.instruction * incentives * qualifications * responsibilities HTML tags in these fields may be stripped if sanitiazation isn't disabled. Defaults to HtmlSanitization.SIMPLE_FORMATTING_ONLY.
  final ProcessingOptionsHtmlSanitization2? htmlSanitization;

  ProcessingOptions2({
    this.disableStreetAddressResolution,
    this.htmlSanitization,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final disableStreetAddressResolutionValue = disableStreetAddressResolution;
    if (disableStreetAddressResolutionValue != null) {
      map['disableStreetAddressResolution'] =
          disableStreetAddressResolutionValue;
    }
    final htmlSanitizationValue = htmlSanitization;
    if (htmlSanitizationValue != null) {
      map['htmlSanitization'] = htmlSanitizationValue.value;
    }
    return map;
  }

  factory ProcessingOptions2.fromMap(Map<String, dynamic> map) {
    return ProcessingOptions2(
      disableStreetAddressResolution:
          map['disableStreetAddressResolution'] == null
              ? null
              : map['disableStreetAddressResolution'] as bool,
      htmlSanitization: map['htmlSanitization'] == null
          ? null
          : ProcessingOptionsHtmlSanitization2.fromValue(
              map['htmlSanitization'] as String),
    );
  }
}
