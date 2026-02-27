// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../private_cloud_management_cluster/private_cloud_management_cluster.dart';
import '../private_cloud_network_config/private_cloud_network_config.dart';

/// The set of arguments for PrivateCloud.
class PrivateCloudArgs {
  /// The number of hours to delay this request. You can set this value to an hour between 0 to 8, where setting it to 0 starts the deletion request immediately. If no value is set, a default value is set at the API Level.
  final pulumi.Input<int>? deletionDelayHours;

  /// User-provided description for this private cloud.
  final pulumi.Input<String>? description;

  /// The location where the PrivateCloud should reside.
  final pulumi.Input<String> location;

  /// The management cluster for this private cloud. This used for creating and managing the default cluster.
  /// Structure is documented below.
  final pulumi.Input<PrivateCloudManagementCluster> managementCluster;

  /// The ID of the PrivateCloud.
  final pulumi.Input<String>? name;

  /// Network configuration in the consumer project with which the peering has to be done.
  /// Structure is documented below.
  final pulumi.Input<PrivateCloudNetworkConfig> networkConfig;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// While set true, deletion_delay_hours value will be sent in the request even for zero value of the field. This field is only useful for setting 0 value to the deletion_delay_hours field. It can be used both alone and together with deletion_delay_hours.
  final pulumi.Input<bool>? sendDeletionDelayHoursIfZero;

  /// Initial type of the private cloud.
  /// Possible values are: `STANDARD`, `TIME_LIMITED`, `STRETCHED`.
  final pulumi.Input<String>? type;

  PrivateCloudArgs({
    this.deletionDelayHours,
    this.description,
    required this.location,
    required this.managementCluster,
    this.name,
    required this.networkConfig,
    this.project,
    this.sendDeletionDelayHoursIfZero,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deletionDelayHoursValue = deletionDelayHours;
    if (deletionDelayHoursValue != null) {
      map['deletionDelayHours'] = deletionDelayHoursValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['location'] = location;
    map['managementCluster'] = pulumi.Input.mapInputValue<
        PrivateCloudManagementCluster,
        Map<String, dynamic>>(managementCluster, (value) => value.toMap());
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['networkConfig'] = pulumi.Input.mapInputValue<PrivateCloudNetworkConfig,
        Map<String, dynamic>>(networkConfig, (value) => value.toMap());
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final sendDeletionDelayHoursIfZeroValue = sendDeletionDelayHoursIfZero;
    if (sendDeletionDelayHoursIfZeroValue != null) {
      map['sendDeletionDelayHoursIfZero'] = sendDeletionDelayHoursIfZeroValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory PrivateCloudArgs.fromMap(Map<String, dynamic> map) {
    return PrivateCloudArgs(
      deletionDelayHours:
          pulumi.Input.asOptionalInput<int>(map['deletionDelayHours']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      location: pulumi.Input.asInput<String>(map['location']),
      managementCluster: pulumi.Input.asInput<PrivateCloudManagementCluster>(
          map['managementCluster']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      networkConfig:
          pulumi.Input.asInput<PrivateCloudNetworkConfig>(map['networkConfig']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      sendDeletionDelayHoursIfZero: pulumi.Input.asOptionalInput<bool>(
          map['sendDeletionDelayHoursIfZero']),
      type: pulumi.Input.asOptionalInput<String>(map['type']),
    );
  }
}
