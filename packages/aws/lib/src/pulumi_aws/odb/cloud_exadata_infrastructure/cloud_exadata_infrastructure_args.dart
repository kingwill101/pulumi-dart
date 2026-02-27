// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../cloud_exadata_infrastructure_customer_contacts_to_send_to_oci/cloud_exadata_infrastructure_customer_contacts_to_send_to_oci.dart';
import '../cloud_exadata_infrastructure_maintenance_window/cloud_exadata_infrastructure_maintenance_window.dart';
import '../cloud_exadata_infrastructure_timeouts/cloud_exadata_infrastructure_timeouts.dart';

/// The set of arguments for CloudExadataInfrastructure.
class CloudExadataInfrastructureArgs {
  /// The name of the Availability Zone (AZ) where the Exadata infrastructure is located. Changing this will force terraform to create new resource.
  final Input<String>? availabilityZone;

  /// The AZ ID of the AZ where the Exadata infrastructure is located. Changing this will force terraform to create new resource.
  ///
  /// The following arguments are optional:
  final Input<String> availabilityZoneId;

  /// The number of compute instances that the Exadata infrastructure is located. Changing this will force terraform to create new resource.
  final Input<int>? computeCount;

  /// The email addresses of contacts to receive notification from Oracle about maintenance updates for the Exadata infrastructure. Changing this will force terraform to create new resource.
  final Input<List<CloudExadataInfrastructureCustomerContactsToSendToOci>>?
      customerContactsToSendToOcis;

  /// The database server model type of the Exadata infrastructure. For the list of valid model names, use the ListDbSystemShapes operation. This is a mandatory parameter for Exadata.X11M system shape. Changing this will force terraform to create new resource.
  final Input<String>? databaseServerType;

  /// The user-friendly name for the Exadata infrastructure. Changing this will force terraform to create a new resource.
  final Input<String> displayName;

  /// The scheduling details for the maintenance window. Patching and system updates take place during the maintenance window
  final Input<CloudExadataInfrastructureMaintenanceWindow> maintenanceWindow;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The model name of the Exadata infrastructure. Changing this will force terraform to create new resource.
  final Input<String> shape;

  /// The number of storage servers that are activated for the Exadata infrastructure. Changing this will force terraform to create new resource.
  final Input<int>? storageCount;

  /// The storage server model type of the Exadata infrastructure. For the list of valid model names, use the ListDbSystemShapes operation. This is a mandatory parameter for Exadata.X11M system shape. Changing this will force terraform to create new resource.
  final Input<String>? storageServerType;

  /// A map of tags to assign to the exadata infrastructure. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;
  final Input<CloudExadataInfrastructureTimeouts>? timeouts;

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
      map['customerContactsToSendToOcis'] = Input.mapOptionalInputValue<
              List<CloudExadataInfrastructureCustomerContactsToSendToOci>,
              List<Map<String, dynamic>>>(
          customerContactsToSendToOcisValue,
          (value) => Input.encodeList<
              CloudExadataInfrastructureCustomerContactsToSendToOci,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final databaseServerTypeValue = databaseServerType;
    if (databaseServerTypeValue != null) {
      map['databaseServerType'] = databaseServerTypeValue;
    }
    map['displayName'] = displayName;
    map['maintenanceWindow'] = Input.mapInputValue<
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
      map['timeouts'] = Input.mapOptionalInputValue<
          CloudExadataInfrastructureTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory CloudExadataInfrastructureArgs.fromMap(Map<String, dynamic> map) {
    return CloudExadataInfrastructureArgs(
      availabilityZone: Input.asOptionalInput<String>(map['availabilityZone']),
      availabilityZoneId: Input.asInput<String>(map['availabilityZoneId']),
      computeCount: Input.asOptionalInput<int>(map['computeCount']),
      customerContactsToSendToOcis: Input.asOptionalInput<
              List<CloudExadataInfrastructureCustomerContactsToSendToOci>>(
          map['customerContactsToSendToOcis']),
      databaseServerType:
          Input.asOptionalInput<String>(map['databaseServerType']),
      displayName: Input.asInput<String>(map['displayName']),
      maintenanceWindow:
          Input.asInput<CloudExadataInfrastructureMaintenanceWindow>(
              map['maintenanceWindow']),
      region: Input.asOptionalInput<String>(map['region']),
      shape: Input.asInput<String>(map['shape']),
      storageCount: Input.asOptionalInput<int>(map['storageCount']),
      storageServerType:
          Input.asOptionalInput<String>(map['storageServerType']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: Input.asOptionalInput<CloudExadataInfrastructureTimeouts>(
          map['timeouts']),
    );
  }
}
