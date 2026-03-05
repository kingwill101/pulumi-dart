// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_domain_configuration.dart';
import 'extended_location.dart';

/// {@template pulumi_app_connected_environment_args_doc}
/// The set of arguments for ConnectedEnvironment.
/// {@endtemplate}
/// {@macro pulumi_app_connected_environment_args_doc}
class ConnectedEnvironmentArgs {
  /// Name of the connectedEnvironment.
  final pulumi.Input<String>? connectedEnvironmentName;
  /// Custom domain configuration for the environment
  final pulumi.Input<CustomDomainConfiguration>? customDomainConfiguration;
  /// Application Insights connection string used by Dapr to export Service to Service communication telemetry
  final pulumi.Input<String>? daprAIConnectionString;
  /// The complex type of the extended location.
  final pulumi.Input<ExtendedLocation>? extendedLocation;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Static IP of the connectedEnvironment
  final pulumi.Input<String>? staticIp;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ConnectedEnvironmentArgs].
  /// [connectedEnvironmentName] Name of the connectedEnvironment.
  /// [customDomainConfiguration] Custom domain configuration for the environment
  /// [daprAIConnectionString] Application Insights connection string used by Dapr to export Service to Service communication telemetry
  /// [extendedLocation] The complex type of the extended location.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [staticIp] Static IP of the connectedEnvironment
  /// [tags] Resource tags.
  ConnectedEnvironmentArgs({
    this.connectedEnvironmentName,
    this.customDomainConfiguration,
    this.daprAIConnectionString,
    this.extendedLocation,
    this.location,
    required this.resourceGroupName,
    this.staticIp,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectedEnvironmentName': ?connectedEnvironmentName,
      'customDomainConfiguration': ?pulumi.Input.mapOptionalInputValue<CustomDomainConfiguration, Map<String, dynamic>>(customDomainConfiguration, (value) => value.toMap()),
      'daprAIConnectionString': ?daprAIConnectionString,
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'staticIp': ?staticIp,
      'tags': ?tags,
    };
  }

  factory ConnectedEnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return ConnectedEnvironmentArgs(
      connectedEnvironmentName: (() { final guardedValue = map['connectedEnvironmentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customDomainConfiguration: (() { final guardedValue = map['customDomainConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomDomainConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      daprAIConnectionString: (() { final guardedValue = map['daprAIConnectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExtendedLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      staticIp: (() { final guardedValue = map['staticIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

