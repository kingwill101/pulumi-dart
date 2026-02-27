// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_cluster.dart';
import 'network_config_vmwareengine_v1.dart';
import 'private_cloud_type.dart';

/// The set of arguments for PrivateCloud.
class PrivateCloudArgs {
  /// User-provided description for this private cloud.
  final pulumi.Input<String>? description;
  final pulumi.Input<String>? location;

  /// Input only. The management cluster for this private cloud. This field is required during creation of the private cloud to provide details for the default cluster. The following fields can't be changed after private cloud creation: `ManagementCluster.clusterId`, `ManagementCluster.nodeTypeId`.
  final pulumi.Input<ManagementCluster> managementCluster;

  /// Network configuration of the private cloud.
  final pulumi.Input<NetworkConfigVmwareengineV1> networkConfig;

  /// Required. The user-provided identifier of the private cloud to be created. This identifier must be unique among each `PrivateCloud` within the parent and becomes the final token in the name URI. The identifier must meet the following requirements: * Only contains 1-63 alphanumeric characters and hyphens * Begins with an alphabetical character * Ends with a non-hyphen character * Not formatted as a UUID * Complies with [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
  final pulumi.Input<String> privateCloudId;
  final pulumi.Input<String>? project;

  /// Optional. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Optional. Type of the private cloud. Defaults to STANDARD.
  final pulumi.Input<PrivateCloudType>? type;

  PrivateCloudArgs({
    this.description,
    this.location,
    required this.managementCluster,
    required this.networkConfig,
    required this.privateCloudId,
    this.project,
    this.requestId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['managementCluster'] =
        pulumi.Input.mapInputValue<ManagementCluster, Map<String, dynamic>>(
            managementCluster, (value) => value.toMap());
    map['networkConfig'] = pulumi.Input.mapInputValue<
        NetworkConfigVmwareengineV1,
        Map<String, dynamic>>(networkConfig, (value) => value.toMap());
    map['privateCloudId'] = privateCloudId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] =
          pulumi.Input.mapOptionalInputValue<PrivateCloudType, String>(
              typeValue, (value) => value.value);
    }
    return map;
  }

  factory PrivateCloudArgs.fromMap(Map<String, dynamic> map) {
    return PrivateCloudArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      managementCluster:
          pulumi.Input.asInput<ManagementCluster>(map['managementCluster']),
      networkConfig: pulumi.Input.asInput<NetworkConfigVmwareengineV1>(
          map['networkConfig']),
      privateCloudId: pulumi.Input.asInput<String>(map['privateCloudId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      type: pulumi.Input.asOptionalInput<PrivateCloudType>(map['type']),
    );
  }
}
