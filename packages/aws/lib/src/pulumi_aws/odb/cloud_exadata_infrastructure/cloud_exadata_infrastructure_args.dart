// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../cloud_exadata_infrastructure_customer_contacts_to_send_to_oci/cloud_exadata_infrastructure_customer_contacts_to_send_to_oci.dart';
import '../cloud_exadata_infrastructure_maintenance_window/cloud_exadata_infrastructure_maintenance_window.dart';
import '../cloud_exadata_infrastructure_timeouts/cloud_exadata_infrastructure_timeouts.dart';

/// The set of arguments for CloudExadataInfrastructure.
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
  final pulumi
      .Input<List<CloudExadataInfrastructureCustomerContactsToSendToOci>>?
      customerContactsToSendToOcis;

  /// The database server model type of the Exadata infrastructure. For the list of valid model names, use the ListDbSystemShapes operation. This is a mandatory parameter for Exadata.X11M system shape. Changing this will force terraform to create new resource.
  final pulumi.Input<String>? databaseServerType;

  /// The user-friendly name for the Exadata infrastructure. Changing this will force terraform to create a new resource.
  final pulumi.Input<String> displayName;

  /// The scheduling details for the maintenance window. Patching and system updates take place during the maintenance window
  final pulumi.Input<CloudExadataInfrastructureMaintenanceWindow>
      maintenanceWindow;

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
    final map = <String, dynamic>{};
    final availabilityZoneValue = availabilityZone;
    if (availabilityZoneValue != null) {
      map['availabilityZone'] = availabilityZoneValue;
    }
    map['availabilityZoneId'] = availabilityZoneId;
    final computeCountValue = computeCount;
    if (computeCountValue != null) {
      map['computeCount'] = computeCountValue;
    }
    final customerContactsToSendToOcisValue = customerContactsToSendToOcis;
    if (customerContactsToSendToOcisValue != null) {
      map['customerContactsToSendToOcis'] = pulumi.Input.mapOptionalInputValue<
              List<CloudExadataInfrastructureCustomerContactsToSendToOci>,
              List<Map<String, dynamic>>>(
          customerContactsToSendToOcisValue,
          (value) => pulumi.Input.encodeList<
              CloudExadataInfrastructureCustomerContactsToSendToOci,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final databaseServerTypeValue = databaseServerType;
    if (databaseServerTypeValue != null) {
      map['databaseServerType'] = databaseServerTypeValue;
    }
    map['displayName'] = displayName;
    map['maintenanceWindow'] = pulumi.Input.mapInputValue<
        CloudExadataInfrastructureMaintenanceWindow,
        Map<String, dynamic>>(maintenanceWindow, (value) => value.toMap());
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['shape'] = shape;
    final storageCountValue = storageCount;
    if (storageCountValue != null) {
      map['storageCount'] = storageCountValue;
    }
    final storageServerTypeValue = storageServerType;
    if (storageServerTypeValue != null) {
      map['storageServerType'] = storageServerTypeValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          CloudExadataInfrastructureTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory CloudExadataInfrastructureArgs.fromMap(Map<String, dynamic> map) {
    return CloudExadataInfrastructureArgs(
      availabilityZone:
          pulumi.Input.asOptionalInput<String>(map['availabilityZone']),
      availabilityZoneId:
          pulumi.Input.asInput<String>(map['availabilityZoneId']),
      computeCount: pulumi.Input.asOptionalInput<int>(map['computeCount']),
      customerContactsToSendToOcis: pulumi.Input.asOptionalInput<
              List<CloudExadataInfrastructureCustomerContactsToSendToOci>>(
          map['customerContactsToSendToOcis']),
      databaseServerType:
          pulumi.Input.asOptionalInput<String>(map['databaseServerType']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      maintenanceWindow:
          pulumi.Input.asInput<CloudExadataInfrastructureMaintenanceWindow>(
              map['maintenanceWindow']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      shape: pulumi.Input.asInput<String>(map['shape']),
      storageCount: pulumi.Input.asOptionalInput<int>(map['storageCount']),
      storageServerType:
          pulumi.Input.asOptionalInput<String>(map['storageServerType']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts:
          pulumi.Input.asOptionalInput<CloudExadataInfrastructureTimeouts>(
              map['timeouts']),
    );
  }
}
