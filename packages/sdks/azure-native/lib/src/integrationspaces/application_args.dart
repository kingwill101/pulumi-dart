// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tracking_data_store.dart';

/// {@template pulumi_integrationspaces_application_args_doc}
/// The set of arguments for Application.
/// {@endtemplate}
/// {@macro pulumi_integrationspaces_application_args_doc}
class ApplicationArgs {
  /// The name of the Application
  final pulumi.Input<String?>? applicationName;
  /// The description of the resource.
  final pulumi.Input<String?>? description;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the space
  final pulumi.Input<String> spaceName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;
  /// The tracking data stores.
  final pulumi.Input<Map<String, TrackingDataStore>?>? trackingDataStores;

  /// Creates a new [ApplicationArgs].
  /// [applicationName] The name of the Application
  /// [description] The description of the resource.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [spaceName] The name of the space
  /// [tags] Resource tags.
  /// [trackingDataStores] The tracking data stores.
  const ApplicationArgs({
    this.applicationName,
    this.description,
    this.location,
    required this.resourceGroupName,
    required this.spaceName,
    this.tags,
    this.trackingDataStores,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationName': ?applicationName,
      'description': ?description,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'spaceName': spaceName,
      'tags': ?tags,
      'trackingDataStores': ?pulumi.Input.mapOptionalInputValue<Map<String, TrackingDataStore>, Map<String, Map<String, dynamic>>>(trackingDataStores, (value) => pulumi.Input.encodeMapValues<TrackingDataStore, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ApplicationArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationArgs(
      applicationName: (() { final guardedValue = map['applicationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      spaceName: pulumi.Input.fromValue(map['spaceName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      trackingDataStores: (() { final guardedValue = map['trackingDataStores']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<TrackingDataStore>(guardedValue, (value) => TrackingDataStore.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
