// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity.dart';
import 'sensor_integration.dart';

/// {@template pulumi_agfoodplatform_data_manager_for_agriculture_resource_args_doc}
/// The set of arguments for DataManagerForAgricultureResource.
/// {@endtemplate}
/// {@macro pulumi_agfoodplatform_data_manager_for_agriculture_resource_args_doc}
class DataManagerForAgricultureResourceArgs {
  /// DataManagerForAgriculture resource name.
  final pulumi.Input<String>? dataManagerForAgricultureResourceName;
  /// Identity for the resource.
  final pulumi.Input<Identity>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Property to allow or block public traffic for an Azure Data Manager For Agriculture resource.
  final pulumi.Input<String>? publicNetworkAccess;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Sensor integration request model.
  final pulumi.Input<SensorIntegration>? sensorIntegration;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DataManagerForAgricultureResourceArgs].
  /// [dataManagerForAgricultureResourceName] DataManagerForAgriculture resource name.
  /// [identity] Identity for the resource.
  /// [location] The geo-location where the resource lives
  /// [publicNetworkAccess] Property to allow or block public traffic for an Azure Data Manager For Agriculture resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sensorIntegration] Sensor integration request model.
  /// [tags] Resource tags.
  DataManagerForAgricultureResourceArgs({
    pulumi.Output<String>? dataManagerForAgricultureResourceName,
    pulumi.Output<Identity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<String>? publicNetworkAccess,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<SensorIntegration>? sensorIntegration,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      dataManagerForAgricultureResourceName = pulumi.Input.asOptionalInput<String>(dataManagerForAgricultureResourceName),
      identity = pulumi.Input.asOptionalInput<Identity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      publicNetworkAccess = pulumi.Input.asOptionalInput<String>(publicNetworkAccess),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sensorIntegration = pulumi.Input.asOptionalInput<SensorIntegration>(sensorIntegration),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataManagerForAgricultureResourceName': ?dataManagerForAgricultureResourceName,
      'identity': ?pulumi.Input.mapOptionalInputValue<Identity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'publicNetworkAccess': ?publicNetworkAccess,
      'resourceGroupName': resourceGroupName,
      'sensorIntegration': ?pulumi.Input.mapOptionalInputValue<SensorIntegration, Map<String, dynamic>>(sensorIntegration, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory DataManagerForAgricultureResourceArgs.fromMap(Map<String, dynamic> map) {
    return DataManagerForAgricultureResourceArgs(
      dataManagerForAgricultureResourceName: map['dataManagerForAgricultureResourceName'] == null ? null : pulumi.Output.create<String>(map['dataManagerForAgricultureResourceName'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<Identity>(Identity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : pulumi.Output.create<String>(map['publicNetworkAccess'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sensorIntegration: map['sensorIntegration'] == null ? null : pulumi.Output.create<SensorIntegration>(SensorIntegration.fromMap((map['sensorIntegration'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

