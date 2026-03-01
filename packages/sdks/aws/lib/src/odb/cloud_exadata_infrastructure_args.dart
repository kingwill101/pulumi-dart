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
    pulumi.Output<String>? availabilityZone,
    required pulumi.Output<String> availabilityZoneId,
    pulumi.Output<int>? computeCount,
    pulumi.Output<List<CloudExadataInfrastructureCustomerContactsToSendToOci>>? customerContactsToSendToOcis,
    pulumi.Output<String>? databaseServerType,
    required pulumi.Output<String> displayName,
    required pulumi.Output<CloudExadataInfrastructureMaintenanceWindow> maintenanceWindow,
    pulumi.Output<String>? region,
    required pulumi.Output<String> shape,
    pulumi.Output<int>? storageCount,
    pulumi.Output<String>? storageServerType,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<CloudExadataInfrastructureTimeouts>? timeouts,
  }) :
      availabilityZone = pulumi.Input.asOptionalInput<String>(availabilityZone),
      availabilityZoneId = pulumi.Input.asInput<String>(availabilityZoneId),
      computeCount = pulumi.Input.asOptionalInput<int>(computeCount),
      customerContactsToSendToOcis = pulumi.Input.asOptionalInput<List<CloudExadataInfrastructureCustomerContactsToSendToOci>>(customerContactsToSendToOcis),
      databaseServerType = pulumi.Input.asOptionalInput<String>(databaseServerType),
      displayName = pulumi.Input.asInput<String>(displayName),
      maintenanceWindow = pulumi.Input.asInput<CloudExadataInfrastructureMaintenanceWindow>(maintenanceWindow),
      region = pulumi.Input.asOptionalInput<String>(region),
      shape = pulumi.Input.asInput<String>(shape),
      storageCount = pulumi.Input.asOptionalInput<int>(storageCount),
      storageServerType = pulumi.Input.asOptionalInput<String>(storageServerType),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      timeouts = pulumi.Input.asOptionalInput<CloudExadataInfrastructureTimeouts>(timeouts);

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
      availabilityZone: map['availabilityZone'] == null ? null : pulumi.Output.create<String>(map['availabilityZone'] as String),
      availabilityZoneId: pulumi.Output.create<String>(map['availabilityZoneId'] as String),
      computeCount: map['computeCount'] == null ? null : pulumi.Output.create<int>(map['computeCount'] as int),
      customerContactsToSendToOcis: map['customerContactsToSendToOcis'] == null ? null : pulumi.Output.create<List<CloudExadataInfrastructureCustomerContactsToSendToOci>>(pulumi.Input.decodeList<CloudExadataInfrastructureCustomerContactsToSendToOci>(map['customerContactsToSendToOcis'], (value) => CloudExadataInfrastructureCustomerContactsToSendToOci.fromMap((value as Map).cast<String, dynamic>()))),
      databaseServerType: map['databaseServerType'] == null ? null : pulumi.Output.create<String>(map['databaseServerType'] as String),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      maintenanceWindow: pulumi.Output.create<CloudExadataInfrastructureMaintenanceWindow>(CloudExadataInfrastructureMaintenanceWindow.fromMap((map['maintenanceWindow'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      shape: pulumi.Output.create<String>(map['shape'] as String),
      storageCount: map['storageCount'] == null ? null : pulumi.Output.create<int>(map['storageCount'] as int),
      storageServerType: map['storageServerType'] == null ? null : pulumi.Output.create<String>(map['storageServerType'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<CloudExadataInfrastructureTimeouts>(CloudExadataInfrastructureTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

