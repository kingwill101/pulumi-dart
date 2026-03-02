// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_status.dart';

/// Reports the state and behavior of dependent services.
class ServiceStatuses {
  /// The state of the extension service on the Arc-enabled machine.
  final pulumi.Input<ServiceStatus>? extensionService;
  /// The state of the guest configuration service on the Arc-enabled machine.
  final pulumi.Input<ServiceStatus>? guestConfigurationService;

  /// Creates a new [ServiceStatuses].
  /// [extensionService] The state of the extension service on the Arc-enabled machine.
  /// [guestConfigurationService] The state of the guest configuration service on the Arc-enabled machine.
  ServiceStatuses({
    this.extensionService,
    this.guestConfigurationService,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extensionService': ?pulumi.Input.mapOptionalInputValue<ServiceStatus, Map<String, dynamic>>(extensionService, (value) => value.toMap()),
      'guestConfigurationService': ?pulumi.Input.mapOptionalInputValue<ServiceStatus, Map<String, dynamic>>(guestConfigurationService, (value) => value.toMap()),
    };
  }

  factory ServiceStatuses.fromMap(Map<String, dynamic> map) {
    return ServiceStatuses(
      extensionService: map['extensionService'] == null ? null : (ServiceStatus.fromMap((map['extensionService'] as Map).cast<String, dynamic>())).input(),
      guestConfigurationService: map['guestConfigurationService'] == null ? null : (ServiceStatus.fromMap((map['guestConfigurationService'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

