// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../service_network_settings_network_settings/service_network_settings_network_settings.dart';

/// The set of arguments for ServiceNetworkSettings.
class ServiceNetworkSettingsArgs {
  /// Ingress settings for this service. Will apply to all versions.
  /// Structure is documented below.
  final Input<ServiceNetworkSettingsNetworkSettings> networkSettings;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The name of the service these settings apply to.
  final Input<String> service;

  ServiceNetworkSettingsArgs({
    required this.networkSettings,
    this.project,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['networkSettings'] = Input.mapInputValue<
        ServiceNetworkSettingsNetworkSettings,
        Map<String, dynamic>>(networkSettings, (value) => value.toMap());
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['service'] = service;
    return map;
  }

  factory ServiceNetworkSettingsArgs.fromMap(Map<String, dynamic> map) {
    return ServiceNetworkSettingsArgs(
      networkSettings: Input.asInput<ServiceNetworkSettingsNetworkSettings>(
          map['networkSettings']),
      project: Input.asOptionalInput<String>(map['project']),
      service: Input.asInput<String>(map['service']),
    );
  }
}
