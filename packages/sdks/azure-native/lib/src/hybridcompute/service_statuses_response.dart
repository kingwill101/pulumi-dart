// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_status_response.dart';

/// Reports the state and behavior of dependent services.
class ServiceStatusesResponse {
  /// The state of the extension service on the Arc-enabled machine.
  final pulumi.Input<ServiceStatusResponse>? extensionService;
  /// The state of the guest configuration service on the Arc-enabled machine.
  final pulumi.Input<ServiceStatusResponse>? guestConfigurationService;

  /// Creates a new [ServiceStatusesResponse].
  /// [extensionService] The state of the extension service on the Arc-enabled machine.
  /// [guestConfigurationService] The state of the guest configuration service on the Arc-enabled machine.
  const ServiceStatusesResponse({
    this.extensionService,
    this.guestConfigurationService,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extensionService': ?pulumi.Input.mapOptionalInputValue<ServiceStatusResponse, Map<String, dynamic>>(extensionService, (value) => value.toMap()),
      'guestConfigurationService': ?pulumi.Input.mapOptionalInputValue<ServiceStatusResponse, Map<String, dynamic>>(guestConfigurationService, (value) => value.toMap()),
    };
  }

  factory ServiceStatusesResponse.fromMap(Map<String, dynamic> map) {
    return ServiceStatusesResponse(
      extensionService: (() { final guardedValue = map['extensionService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      guestConfigurationService: (() { final guardedValue = map['guestConfigurationService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
