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
    pulumi.Output<String>? appAttachPackageName,
    pulumi.Output<String>? location,
    required pulumi.Output<AppAttachPackageProperties> properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      appAttachPackageName = pulumi.Input.asOptionalInput<String>(appAttachPackageName),
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asInput<AppAttachPackageProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      appAttachPackageName: map['appAttachPackageName'] == null ? null : pulumi.Output.create<String>(map['appAttachPackageName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      properties: pulumi.Output.create<AppAttachPackageProperties>(AppAttachPackageProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

