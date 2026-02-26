// ignore_for_file: unused_element, unnecessary_cast

import '../cx_webhook_service_directory_generic_web_service/cx_webhook_service_directory_generic_web_service.dart';

class CxWebhookServiceDirectory {
  /// Represents configuration for a generic web service.
  /// Structure is documented below.
  final CxWebhookServiceDirectoryGenericWebService? genericWebService;

  /// The name of Service Directory service.
  final String service;

  CxWebhookServiceDirectory({
    this.genericWebService,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final genericWebServiceValue = genericWebService;
    if (genericWebServiceValue != null) {
      map['genericWebService'] = genericWebServiceValue.toMap();
    }
    map['service'] = service;
    return map;
  }

  factory CxWebhookServiceDirectory.fromMap(Map<String, dynamic> map) {
    return CxWebhookServiceDirectory(
      genericWebService: map['genericWebService'] == null
          ? null
          : CxWebhookServiceDirectoryGenericWebService.fromMap(
              (map['genericWebService'] as Map).cast<String, dynamic>()),
      service: map['service'] as String,
    );
  }
}
