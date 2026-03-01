// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_network_settings_network_settings.dart';

/// {@template pulumi_appengine_service_network_settings_service_network_settings_args_doc}
/// The set of arguments for ServiceNetworkSettings.
/// {@endtemplate}
/// {@macro pulumi_appengine_service_network_settings_service_network_settings_args_doc}
class ServiceNetworkSettingsArgs {
  /// Ingress settings for this service. Will apply to all versions.
  /// Structure is documented below.
  final pulumi.Input<ServiceNetworkSettingsNetworkSettings> networkSettings;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The name of the service these settings apply to.
  final pulumi.Input<String> service;

  /// Creates a new [ServiceNetworkSettingsArgs].
  /// [networkSettings] Ingress settings for this service. Will apply to all versions.
  /// [project] The ID of the project in which the resource belongs.
  /// [service] The name of the service these settings apply to.
  ServiceNetworkSettingsArgs({
    required ServiceNetworkSettingsNetworkSettings networkSettings,
    String? project,
    required String service,
  }) : networkSettings =
           pulumi.Input.asInput<ServiceNetworkSettingsNetworkSettings>(
             networkSettings,
           ),
       project = pulumi.Input.asOptionalInput<String>(project),
       service = pulumi.Input.asInput<String>(service);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkSettings':
          pulumi.Input.mapInputValue<
            ServiceNetworkSettingsNetworkSettings,
            Map<String, dynamic>
          >(networkSettings, (value) => value.toMap()),
      'project': ?project,
      'service': service,
    };
  }

  factory ServiceNetworkSettingsArgs.fromMap(Map<String, dynamic> map) {
    return ServiceNetworkSettingsArgs(
      networkSettings: ServiceNetworkSettingsNetworkSettings.fromMap(
        (map['networkSettings'] as Map).cast<String, dynamic>(),
      ),
      project: map['project'] == null ? null : map['project'] as String,
      service: map['service'] as String,
    );
  }
}
