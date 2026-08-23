// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location.dart';

/// {@template pulumi_mysqldiscovery_my_sqlsite_args_doc}
/// The set of arguments for MySQLSite.
/// {@endtemplate}
/// {@macro pulumi_mysqldiscovery_my_sqlsite_args_doc}
class MySQLSiteArgs {
  /// The extended location.
  final pulumi.Input<ExtendedLocation> extendedLocation;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The mapped master Site Id.
  final pulumi.Input<String> masterSiteId;
  /// The mapped migrate project Id.
  final pulumi.Input<String> migrateProjectId;
  /// Gets or sets the provisioning state.
  final pulumi.Input<String>? provisioningState;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of Site
  final pulumi.Input<String>? siteName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [MySQLSiteArgs].
  /// [extendedLocation] The extended location.
  /// [location] The geo-location where the resource lives
  /// [masterSiteId] The mapped master Site Id.
  /// [migrateProjectId] The mapped migrate project Id.
  /// [provisioningState] Gets or sets the provisioning state.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [siteName] The name of Site
  /// [tags] Resource tags.
  const MySQLSiteArgs({
    required this.extendedLocation,
    this.location,
    required this.masterSiteId,
    required this.migrateProjectId,
    this.provisioningState,
    required this.resourceGroupName,
    this.siteName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extendedLocation': pulumi.Input.mapInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'location': ?location,
      'masterSiteId': masterSiteId,
      'migrateProjectId': migrateProjectId,
      'provisioningState': ?provisioningState,
      'resourceGroupName': resourceGroupName,
      'siteName': ?siteName,
      'tags': ?tags,
    };
  }

  factory MySQLSiteArgs.fromMap(Map<String, dynamic> map) {
    return MySQLSiteArgs(
      extendedLocation: pulumi.Input.fromValue(ExtendedLocation.fromMap((map['extendedLocation']! as Map).cast<String, dynamic>())),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      masterSiteId: pulumi.Input.fromValue(map['masterSiteId'] as String),
      migrateProjectId: pulumi.Input.fromValue(map['migrateProjectId'] as String),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      siteName: (() { final guardedValue = map['siteName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
