// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tracking_data_store.dart';

/// {@template pulumi_integrationspaces_application_args_doc}
/// The set of arguments for Application.
/// {@endtemplate}
/// {@macro pulumi_integrationspaces_application_args_doc}
class ApplicationArgs {
  /// The name of the Application
  final pulumi.Input<String>? applicationName;
  /// The description of the resource.
  final pulumi.Input<String>? description;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the space
  final pulumi.Input<String> spaceName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The tracking data stores.
  final pulumi.Input<Map<String, TrackingDataStore>>? trackingDataStores;

  /// Creates a new [ApplicationArgs].
  /// [applicationName] The name of the Application
  /// [description] The description of the resource.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [spaceName] The name of the space
  /// [tags] Resource tags.
  /// [trackingDataStores] The tracking data stores.
  ApplicationArgs({
    pulumi.Output<String>? applicationName,
    pulumi.Output<String>? description,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> spaceName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, TrackingDataStore>>? trackingDataStores,
  }) :
      applicationName = pulumi.Input.asOptionalInput<String>(applicationName),
      description = pulumi.Input.asOptionalInput<String>(description),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      spaceName = pulumi.Input.asInput<String>(spaceName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      trackingDataStores = pulumi.Input.asOptionalInput<Map<String, TrackingDataStore>>(trackingDataStores);

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
      applicationName: map['applicationName'] == null ? null : pulumi.Output.create<String>(map['applicationName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      spaceName: pulumi.Output.create<String>(map['spaceName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      trackingDataStores: map['trackingDataStores'] == null ? null : pulumi.Output.create<Map<String, TrackingDataStore>>(pulumi.Input.decodeMapValues<TrackingDataStore>(map['trackingDataStores'], (value) => TrackingDataStore.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

