// ignore_for_file: unused_element, unnecessary_cast

import 'cx_webhook_service_directory_generic_web_service.dart';

class CxWebhookServiceDirectory {
  /// Represents configuration for a generic web service.
  /// Structure is documented below.
  final CxWebhookServiceDirectoryGenericWebService? genericWebService;

  /// The name of Service Directory service.
  final String service;

  /// Creates a new [CxWebhookServiceDirectory].
  /// [genericWebService] Represents configuration for a generic web service.
  /// [service] The name of Service Directory service.
  CxWebhookServiceDirectory({this.genericWebService, required this.service});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'genericWebService': ?genericWebService == null
          ? null
          : genericWebService!.toMap(),
      'service': service,
    };
  }

  factory CxWebhookServiceDirectory.fromMap(Map<String, dynamic> map) {
    return CxWebhookServiceDirectory(
      genericWebService: map['genericWebService'] == null
          ? null
          : CxWebhookServiceDirectoryGenericWebService.fromMap(
              (map['genericWebService'] as Map).cast<String, dynamic>(),
            ),
      service: map['service'] as String,
    );
  }
}
