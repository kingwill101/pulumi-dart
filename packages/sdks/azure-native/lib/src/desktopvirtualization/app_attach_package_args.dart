// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_attach_package_properties.dart';

/// {@template pulumi_desktopvirtualization_app_attach_package_args_doc}
/// The set of arguments for AppAttachPackage.
/// {@endtemplate}
/// {@macro pulumi_desktopvirtualization_app_attach_package_args_doc}
class AppAttachPackageArgs {
  /// The name of the App Attach package
  final pulumi.Input<String>? appAttachPackageName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Detailed properties for App Attach Package
  final pulumi.Input<AppAttachPackageProperties> properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AppAttachPackageArgs].
  /// [appAttachPackageName] The name of the App Attach package
  /// [location] The geo-location where the resource lives
  /// [properties] Detailed properties for App Attach Package
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  AppAttachPackageArgs({
    this.appAttachPackageName,
    this.location,
    required this.properties,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appAttachPackageName': ?appAttachPackageName,
      'location': ?location,
      'properties': pulumi.Input.mapInputValue<AppAttachPackageProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory AppAttachPackageArgs.fromMap(Map<String, dynamic> map) {
    return AppAttachPackageArgs(
      appAttachPackageName: map['appAttachPackageName'] == null ? null : (map['appAttachPackageName']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      properties: (AppAttachPackageProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

