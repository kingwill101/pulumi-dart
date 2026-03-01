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
  MySQLSiteArgs({
    required ExtendedLocation extendedLocation,
    String? location,
    required String masterSiteId,
    required String migrateProjectId,
    String? provisioningState,
    required String resourceGroupName,
    String? siteName,
    Map<String, String>? tags,
  }) :
      extendedLocation = pulumi.Input.asInput<ExtendedLocation>(extendedLocation),
      location = pulumi.Input.asOptionalInput<String>(location),
      masterSiteId = pulumi.Input.asInput<String>(masterSiteId),
      migrateProjectId = pulumi.Input.asInput<String>(migrateProjectId),
      provisioningState = pulumi.Input.asOptionalInput<String>(provisioningState),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      siteName = pulumi.Input.asOptionalInput<String>(siteName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      extendedLocation: ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      masterSiteId: map['masterSiteId'] as String,
      migrateProjectId: map['migrateProjectId'] as String,
      provisioningState: map['provisioningState'] == null ? null : map['provisioningState'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      siteName: map['siteName'] == null ? null : map['siteName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

