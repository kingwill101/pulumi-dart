// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_exadata_infrastructure_customer_contacts_to_send_to_oci.dart';
import 'cloud_exadata_infrastructure_maintenance_window.dart';
import 'cloud_exadata_infrastructure_timeouts.dart';

/// {@template pulumi_odb_cloud_exadata_infrastructure_cloud_exadata_infrastructure_args_doc}
/// The set of arguments for CloudExadataInfrastructure.
/// {@endtemplate}
/// {@macro pulumi_odb_cloud_exadata_infrastructure_cloud_exadata_infrastructure_args_doc}
class CloudExadataInfrastructureArgs {
  /// The name of the Availability Zone (AZ) where the Exadata infrastructure is located. Changing this will force terraform to create new resource.
  final pulumi.Input<String>? availabilityZone;
  /// The AZ ID of the AZ where the Exadata infrastructure is located. Changing this will force terraform to create new resource.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> availabilityZoneId;
  /// The number of compute instances that the Exadata infrastructure is located. Changing this will force terraform to create new resource.
  final pulumi.Input<int>? computeCount;
  /// The email addresses of contacts to receive notification from Oracle about maintenance updates for the Exadata infrastructure. Changing this will force terraform to create new resource.
  final pulumi.Input<List<CloudExadataInfrastructureCustomerContactsToSendToOci>>? customerContactsToSendToOcis;
  /// The database server model type of the Exadata infrastructure. For the list of valid model names, use the ListDbSystemShapes operation. This is a mandatory parameter for Exadata.X11M system shape. Changing this will force terraform to create new resource.
  final pulumi.Input<String>? databaseServerType;
  /// The user-friendly name for the Exadata infrastructure. Changing this will force terraform to create a new resource.
  final pulumi.Input<String> displayName;
  /// The scheduling details for the maintenance window. Patching and system updates take place during the maintenance window
  final pulumi.Input<CloudExadataInfrastructureMaintenanceWindow> maintenanceWindow;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The model name of the Exadata infrastructure. Changing this will force terraform to create new resource.
  final pulumi.Input<String> shape;
  /// The number of storage servers that are activated for the Exadata infrastructure. Changing this will force terraform to create new resource.
  final pulumi.Input<int>? storageCount;
  /// The storage server model type of the Exadata infrastructure. For the list of valid model names, use the ListDbSystemShapes operation. This is a mandatory parameter for Exadata.X11M system shape. Changing this will force terraform to create new resource.
  final pulumi.Input<String>? storageServerType;
  /// A map of tags to assign to the exadata infrastructure. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<CloudExadataInfrastructureTimeouts>? timeouts;

  /// Creates a new [CloudExadataInfrastructureArgs].
  /// [availabilityZone] The name of the Availability Zone (AZ) where the Exadata infrastructure is located. Changing this will force terraform to create new resource.
  /// [availabilityZoneId] The AZ ID of the AZ where the Exadata infrastructure is located. Changing this will force terraform to create new resource.
  /// [computeCount] The number of compute instances that the Exadata infrastructure is located. Changing this will force terraform to create new resource.
  /// [customerContactsToSendToOcis] The email addresses of contacts to receive notification from Oracle about maintenance updates for the Exadata infrastructure. Changing this will force terraform to create new resource.
  /// [databaseServerType] The database server model type of the Exadata infrastructure. For the list of valid model names, use the ListDbSystemShapes operation. This is a mandatory parameter for Exadata.X11M system shape. Changing this will force terraform to create new resource.
  /// [displayName] The user-friendly name for the Exadata infrastructure. Changing this will force terraform to create a new resource.
  /// [maintenanceWindow] The scheduling details for the maintenance window. Patching and system updates take place during the maintenance window
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [shape] The model name of the Exadata infrastructure. Changing this will force terraform to create new resource.
  /// [storageCount] The number of storage servers that are activated for the Exadata infrastructure. Changing this will force terraform to create new resource.
  /// [storageServerType] The storage server model type of the Exadata infrastructure. For the list of valid model names, use the ListDbSystemShapes operation. This is a mandatory parameter for Exadata.X11M system shape. Changing this will force terraform to create new resource.
  /// [tags] A map of tags to assign to the exadata infrastructure. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  CloudExadataInfrastructureArgs({
    this.availabilityZone,
    required this.availabilityZoneId,
    this.computeCount,
    this.customerContactsToSendToOcis,
    this.databaseServerType,
    required this.displayName,
    required this.maintenanceWindow,
    this.region,
    required this.shape,
    this.storageCount,
    this.storageServerType,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZone': ?availabilityZone,
      'availabilityZoneId': availabilityZoneId,
      'computeCount': ?computeCount,
      'customerContactsToSendToOcis': ?pulumi.Input.mapOptionalInputValue<List<CloudExadataInfrastructureCustomerContactsToSendToOci>, List<Map<String, dynamic>>>(customerContactsToSendToOcis, (value) => pulumi.Input.encodeList<CloudExadataInfrastructureCustomerContactsToSendToOci, Map<String, dynamic>>(value, (value) => value.toMap())),
      'databaseServerType': ?databaseServerType,
      'displayName': displayName,
      'maintenanceWindow': pulumi.Input.mapInputValue<CloudExadataInfrastructureMaintenanceWindow, Map<String, dynamic>>(maintenanceWindow, (value) => value.toMap()),
      'region': ?region,
      'shape': shape,
      'storageCount': ?storageCount,
      'storageServerType': ?storageServerType,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<CloudExadataInfrastructureTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory CloudExadataInfrastructureArgs.fromMap(Map<String, dynamic> map) {
    return CloudExadataInfrastructureArgs(
      availabilityZone: map['availabilityZone'] == null ? null : ((map['availabilityZone'] as String).input()).input(),
      availabilityZoneId: (map['availabilityZoneId'] as String).input(),
      computeCount: map['computeCount'] == null ? null : ((map['computeCount'] as int).input()).input(),
      customerContactsToSendToOcis: map['customerContactsToSendToOcis'] == null ? null : ((pulumi.Input.decodeList<CloudExadataInfrastructureCustomerContactsToSendToOci>(map['customerContactsToSendToOcis']!, (value) => CloudExadataInfrastructureCustomerContactsToSendToOci.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      databaseServerType: map['databaseServerType'] == null ? null : ((map['databaseServerType'] as String).input()).input(),
      displayName: (map['displayName'] as String).input(),
      maintenanceWindow: (CloudExadataInfrastructureMaintenanceWindow.fromMap((map['maintenanceWindow']! as Map).cast<String, dynamic>())).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      shape: (map['shape'] as String).input(),
      storageCount: map['storageCount'] == null ? null : ((map['storageCount'] as int).input()).input(),
      storageServerType: map['storageServerType'] == null ? null : ((map['storageServerType'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((CloudExadataInfrastructureTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

