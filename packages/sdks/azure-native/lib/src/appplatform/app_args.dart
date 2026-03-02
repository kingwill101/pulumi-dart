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
  final pulumi.Input<String>? appName;
  /// The Managed Identity type of the app resource
  final pulumi.Input<ManagedIdentityProperties>? identity;
  /// The GEO location of the application, always the same with its parent resource
  final pulumi.Input<String>? location;
  /// Properties of the App resource
  final pulumi.Input<AppResourceProperties>? properties;
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
  AppArgs({
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
      appName: map['appName'] == null ? null : (map['appName']! as String).input(),
      identity: map['identity'] == null ? null : (ManagedIdentityProperties.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      properties: map['properties'] == null ? null : (AppResourceProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
    );
  }
}

