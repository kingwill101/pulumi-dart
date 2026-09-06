// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_resource_properties.dart';
import 'managed_identity_properties.dart';

/// {@template pulumi_appplatform_app_args_doc}
/// The set of arguments for App.
/// {@endtemplate}
/// {@macro pulumi_appplatform_app_args_doc}
class AppArgs {
  /// The name of the App resource.
  final pulumi.Input<String?>? appName;
  /// The Managed Identity type of the app resource
  final pulumi.Input<ManagedIdentityProperties?>? identity;
  /// The GEO location of the application, always the same with its parent resource
  final pulumi.Input<String?>? location;
  /// Properties of the App resource
  final pulumi.Input<AppResourceProperties?>? properties;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Service resource.
  final pulumi.Input<String> serviceName;

  /// Creates a new [AppArgs].
  /// [appName] The name of the App resource.
  /// [identity] The Managed Identity type of the app resource
  /// [location] The GEO location of the application, always the same with its parent resource
  /// [properties] Properties of the App resource
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serviceName] The name of the Service resource.
  const AppArgs({
    this.appName,
    this.identity,
    this.location,
    this.properties,
    required this.resourceGroupName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appName': ?appName,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedIdentityProperties, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<AppResourceProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory AppArgs.fromMap(Map<String, dynamic> map) {
    return AppArgs(
      appName: (() { final guardedValue = map['appName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedIdentityProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppResourceProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}
