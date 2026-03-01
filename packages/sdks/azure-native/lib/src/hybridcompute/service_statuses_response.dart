// ignore_for_file: unused_element, unnecessary_cast

import 'service_status_response.dart';

/// Reports the state and behavior of dependent services.
class ServiceStatusesResponse {
  /// The state of the extension service on the Arc-enabled machine.
  final ServiceStatusResponse? extensionService;
  /// The state of the guest configuration service on the Arc-enabled machine.
  final ServiceStatusResponse? guestConfigurationService;

  /// Creates a new [ServiceStatusesResponse].
  /// [extensionService] The state of the extension service on the Arc-enabled machine.
  /// [guestConfigurationService] The state of the guest configuration service on the Arc-enabled machine.
  ServiceStatusesResponse({
    this.extensionService,
    this.guestConfigurationService,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extensionService': ?extensionService == null ? null : extensionService!.toMap(),
      'guestConfigurationService': ?guestConfigurationService == null ? null : guestConfigurationService!.toMap(),
    };
  }

  factory ServiceStatusesResponse.fromMap(Map<String, dynamic> map) {
    return ServiceStatusesResponse(
      extensionService: map['extensionService'] == null ? null : ServiceStatusResponse.fromMap((map['extensionService'] as Map).cast<String, dynamic>()),
      guestConfigurationService: map['guestConfigurationService'] == null ? null : ServiceStatusResponse.fromMap((map['guestConfigurationService'] as Map).cast<String, dynamic>()),
    );
  }
}

