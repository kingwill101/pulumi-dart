// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_controller_properties.dart';
import 'extended_location.dart';

/// {@template pulumi_azurearcdata_data_controller_args_doc}
/// The set of arguments for DataController.
/// {@endtemplate}
/// {@macro pulumi_azurearcdata_data_controller_args_doc}
class DataControllerArgs {
  /// The name of the data controller
  final pulumi.Input<String>? dataControllerName;
  /// The extendedLocation of the resource.
  final pulumi.Input<ExtendedLocation>? extendedLocation;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The data controller's properties
  final pulumi.Input<DataControllerProperties> properties;
  /// The name of the Azure resource group
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DataControllerArgs].
  /// [dataControllerName] The name of the data controller
  /// [extendedLocation] The extendedLocation of the resource.
  /// [location] The geo-location where the resource lives
  /// [properties] The data controller's properties
  /// [resourceGroupName] The name of the Azure resource group
  /// [tags] Resource tags.
  DataControllerArgs({
    String? dataControllerName,
    ExtendedLocation? extendedLocation,
    String? location,
    required DataControllerProperties properties,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      dataControllerName = pulumi.Input.asOptionalInput<String>(dataControllerName),
      extendedLocation = pulumi.Input.asOptionalInput<ExtendedLocation>(extendedLocation),
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asInput<DataControllerProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataControllerName': ?dataControllerName,
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'location': ?location,
      'properties': pulumi.Input.mapInputValue<DataControllerProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory DataControllerArgs.fromMap(Map<String, dynamic> map) {
    return DataControllerArgs(
      dataControllerName: map['dataControllerName'] == null ? null : map['dataControllerName'] as String,
      extendedLocation: map['extendedLocation'] == null ? null : ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      properties: DataControllerProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

