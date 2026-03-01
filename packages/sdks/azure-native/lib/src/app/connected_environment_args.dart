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
    pulumi.Output<String>? connectedEnvironmentName,
    pulumi.Output<CustomDomainConfiguration>? customDomainConfiguration,
    pulumi.Output<String>? daprAIConnectionString,
    pulumi.Output<ExtendedLocation>? extendedLocation,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? staticIp,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      connectedEnvironmentName = pulumi.Input.asOptionalInput<String>(connectedEnvironmentName),
      customDomainConfiguration = pulumi.Input.asOptionalInput<CustomDomainConfiguration>(customDomainConfiguration),
      daprAIConnectionString = pulumi.Input.asOptionalInput<String>(daprAIConnectionString),
      extendedLocation = pulumi.Input.asOptionalInput<ExtendedLocation>(extendedLocation),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      staticIp = pulumi.Input.asOptionalInput<String>(staticIp),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      connectedEnvironmentName: map['connectedEnvironmentName'] == null ? null : pulumi.Output.create<String>(map['connectedEnvironmentName'] as String),
      customDomainConfiguration: map['customDomainConfiguration'] == null ? null : pulumi.Output.create<CustomDomainConfiguration>(CustomDomainConfiguration.fromMap((map['customDomainConfiguration'] as Map).cast<String, dynamic>())),
      daprAIConnectionString: map['daprAIConnectionString'] == null ? null : pulumi.Output.create<String>(map['daprAIConnectionString'] as String),
      extendedLocation: map['extendedLocation'] == null ? null : pulumi.Output.create<ExtendedLocation>(ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      staticIp: map['staticIp'] == null ? null : pulumi.Output.create<String>(map['staticIp'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

