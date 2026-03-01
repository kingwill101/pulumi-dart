// ignore_for_file: unused_element, unnecessary_cast

import 'service_status.dart';

/// Reports the state and behavior of dependent services.
class ServiceStatuses {
  /// The state of the extension service on the Arc-enabled machine.
  final ServiceStatus? extensionService;
  /// The state of the guest configuration service on the Arc-enabled machine.
  final ServiceStatus? guestConfigurationService;

  /// Creates a new [ServiceStatuses].
  /// [extensionService] The state of the extension service on the Arc-enabled machine.
  /// [guestConfigurationService] The state of the guest configuration service on the Arc-enabled machine.
  ServiceStatuses({
    this.extensionService,
    this.guestConfigurationService,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extensionService': ?extensionService == null ? null : extensionService!.toMap(),
      'guestConfigurationService': ?guestConfigurationService == null ? null : guestConfigurationService!.toMap(),
    };
  }

  factory ServiceStatuses.fromMap(Map<String, dynamic> map) {
    return ServiceStatuses(
      extensionService: map['extensionService'] == null ? null : ServiceStatus.fromMap((map['extensionService'] as Map).cast<String, dynamic>()),
      guestConfigurationService: map['guestConfigurationService'] == null ? null : ServiceStatus.fromMap((map['guestConfigurationService'] as Map).cast<String, dynamic>()),
    );
  }
}

