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
  /// Name of the Availability Zone (AZ) where the Exadata infrastructure is located. Changing this will force terraform to create new resource.
  final pulumi.Input<String?>? availabilityZone;
  /// AZ ID of the AZ where the Exadata infrastructure is located. Changing this will force terraform to create new resource.
  final pulumi.Input<String> availabilityZoneId;
  /// Number of compute instances that the Exadata infrastructure is located. Changing this will force terraform to create new resource.
  final pulumi.Input<int?>? computeCount;
  /// Email addresses of contacts to receive notification from Oracle about maintenance updates for the Exadata infrastructure. Changing this will force terraform to create new resource. See `customerContactsToSendToOci` Block below.
  final pulumi.Input<List<CloudExadataInfrastructureCustomerContactsToSendToOci>?>? customerContactsToSendToOcis;
  /// Database server model type of the Exadata infrastructure. For the list of valid model names, use the ListDbSystemShapes operation. This is a mandatory parameter for Exadata.X11M system shape. Changing this will force terraform to create new resource.
  final pulumi.Input<String?>? databaseServerType;
  /// User-friendly name for the Exadata infrastructure. Changing this will force terraform to create a new resource.
  final pulumi.Input<String> displayName;
  /// The scheduling details for the maintenance window. Patching and system updates take place during the maintenance window
  final pulumi.Input<CloudExadataInfrastructureMaintenanceWindow> maintenanceWindow;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Model name of the Exadata infrastructure. Changing this will force terraform to create new resource.
  final pulumi.Input<String> shape;
  /// Number of storage servers that are activated for the Exadata infrastructure. Changing this will force terraform to create new resource.
  ///
  /// The following arguments are optional:
  final pulumi.Input<int?>? storageCount;
  /// Storage server model type of the Exadata infrastructure. For the list of valid model names, use the ListDbSystemShapes operation. This is a mandatory parameter for Exadata.X11M system shape. Changing this will force terraform to create new resource.
  final pulumi.Input<String?>? storageServerType;
  /// Map of tags to assign to the exadata infrastructure. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  final pulumi.Input<CloudExadataInfrastructureTimeouts?>? timeouts;

  /// Creates a new [CloudExadataInfrastructureArgs].
  /// [availabilityZone] Name of the Availability Zone (AZ) where the Exadata infrastructure is located. Changing this will force terraform to create new resource.
  /// [availabilityZoneId] AZ ID of the AZ where the Exadata infrastructure is located. Changing this will force terraform to create new resource.
  /// [computeCount] Number of compute instances that the Exadata infrastructure is located. Changing this will force terraform to create new resource.
  /// [customerContactsToSendToOcis] Email addresses of contacts to receive notification from Oracle about maintenance updates for the Exadata infrastructure. Changing this will force terraform to create new resource. See `customerContactsToSendToOci` Block below.
  /// [databaseServerType] Database server model type of the Exadata infrastructure. For the list of valid model names, use the ListDbSystemShapes operation. This is a mandatory parameter for Exadata.X11M system shape. Changing this will force terraform to create new resource.
  /// [displayName] User-friendly name for the Exadata infrastructure. Changing this will force terraform to create a new resource.
  /// [maintenanceWindow] The scheduling details for the maintenance window. Patching and system updates take place during the maintenance window
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [shape] Model name of the Exadata infrastructure. Changing this will force terraform to create new resource.
  /// [storageCount] Number of storage servers that are activated for the Exadata infrastructure. Changing this will force terraform to create new resource.
  /// [storageServerType] Storage server model type of the Exadata infrastructure. For the list of valid model names, use the ListDbSystemShapes operation. This is a mandatory parameter for Exadata.X11M system shape. Changing this will force terraform to create new resource.
  /// [tags] Map of tags to assign to the exadata infrastructure. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  const CloudExadataInfrastructureArgs({
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
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      availabilityZoneId: pulumi.Input.fromValue(map['availabilityZoneId'] as String),
      computeCount: (() { final guardedValue = map['computeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      customerContactsToSendToOcis: (() { final guardedValue = map['customerContactsToSendToOcis']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CloudExadataInfrastructureCustomerContactsToSendToOci>(guardedValue, (value) => CloudExadataInfrastructureCustomerContactsToSendToOci.fromMap((value as Map).cast<String, dynamic>()))); })(),
      databaseServerType: (() { final guardedValue = map['databaseServerType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      maintenanceWindow: pulumi.Input.fromValue(CloudExadataInfrastructureMaintenanceWindow.fromMap((map['maintenanceWindow']! as Map).cast<String, dynamic>())),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shape: pulumi.Input.fromValue(map['shape'] as String),
      storageCount: (() { final guardedValue = map['storageCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      storageServerType: (() { final guardedValue = map['storageServerType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudExadataInfrastructureTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
