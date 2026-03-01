// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_status_extension_service.dart';
import 'get_service_status_guest_configuration_service.dart';

class GetServiceStatus {
  /// A `extension_service` block as defined above.
  final List<GetServiceStatusExtensionService> extensionServices;
  /// A `guest_configuration_service` block as defined above.
  final List<GetServiceStatusGuestConfigurationService> guestConfigurationServices;

  /// Creates a new [GetServiceStatus].
  /// [extensionServices] A `extension_service` block as defined above.
  /// [guestConfigurationServices] A `guest_configuration_service` block as defined above.
  GetServiceStatus({
    required this.extensionServices,
    required this.guestConfigurationServices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extensionServices': pulumi.Input.encodeList<GetServiceStatusExtensionService, Map<String, dynamic>>(extensionServices, (value) => value.toMap()),
      'guestConfigurationServices': pulumi.Input.encodeList<GetServiceStatusGuestConfigurationService, Map<String, dynamic>>(guestConfigurationServices, (value) => value.toMap()),
    };
  }

  factory GetServiceStatus.fromMap(Map<String, dynamic> map) {
    return GetServiceStatus(
      extensionServices: pulumi.Input.decodeList<GetServiceStatusExtensionService>(map['extensionServices'], (value) => GetServiceStatusExtensionService.fromMap((value as Map).cast<String, dynamic>())),
      guestConfigurationServices: pulumi.Input.decodeList<GetServiceStatusGuestConfigurationService>(map['guestConfigurationServices'], (value) => GetServiceStatusGuestConfigurationService.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

