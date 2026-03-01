// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_cluster.dart';
import 'network_config.dart';
import 'private_cloud_type.dart';

/// {@template pulumi_vmwareengine_v1_private_cloud_args_doc}
/// The set of arguments for PrivateCloud.
/// {@endtemplate}
/// {@macro pulumi_vmwareengine_v1_private_cloud_args_doc}
class PrivateCloudArgs {
  /// User-provided description for this private cloud.
  final pulumi.Input<String>? description;
  final pulumi.Input<String>? location;

  /// Input only. The management cluster for this private cloud. This field is required during creation of the private cloud to provide details for the default cluster. The following fields can't be changed after private cloud creation: `ManagementCluster.clusterId`, `ManagementCluster.nodeTypeId`.
  final pulumi.Input<ManagementCluster> managementCluster;

  /// Network configuration of the private cloud.
  final pulumi.Input<NetworkConfig> networkConfig;

  /// Required. The user-provided identifier of the private cloud to be created. This identifier must be unique among each `PrivateCloud` within the parent and becomes the final token in the name URI. The identifier must meet the following requirements: * Only contains 1-63 alphanumeric characters and hyphens * Begins with an alphabetical character * Ends with a non-hyphen character * Not formatted as a UUID * Complies with [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
  final pulumi.Input<String> privateCloudId;
  final pulumi.Input<String>? project;

  /// Optional. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Optional. Type of the private cloud. Defaults to STANDARD.
  final pulumi.Input<PrivateCloudType>? type;

  /// Creates a new [PrivateCloudArgs].
  /// [description] User-provided description for this private cloud.
  /// [location] Optional.
  /// [managementCluster] Input only. The management cluster for this private cloud. This field is required during creation of the private cloud to provide details for the default cluster. The following fields can't be changed after private cloud creation: `ManagementCluster.clusterId`, `ManagementCluster.nodeTypeId`.
  /// [networkConfig] Network configuration of the private cloud.
  /// [privateCloudId] Required. The user-provided identifier of the private cloud to be created. This identifier must be unique among each `PrivateCloud` within the parent and becomes the final token in the name URI. The identifier must meet the following requirements: * Only contains 1-63 alphanumeric characters and hyphens * Begins with an alphabetical character * Ends with a non-hyphen character * Not formatted as a UUID * Complies with [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
  /// [project] Optional.
  /// [requestId] Optional. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [type] Optional. Type of the private cloud. Defaults to STANDARD.
  PrivateCloudArgs({
    String? description,
    String? location,
    required ManagementCluster managementCluster,
    required NetworkConfig networkConfig,
    required String privateCloudId,
    String? project,
    String? requestId,
    PrivateCloudType? type,
  }) : description = pulumi.Input.asOptionalInput<String>(description),
       location = pulumi.Input.asOptionalInput<String>(location),
       managementCluster = pulumi.Input.asInput<ManagementCluster>(
         managementCluster,
       ),
       networkConfig = pulumi.Input.asInput<NetworkConfig>(networkConfig),
       privateCloudId = pulumi.Input.asInput<String>(privateCloudId),
       project = pulumi.Input.asOptionalInput<String>(project),
       requestId = pulumi.Input.asOptionalInput<String>(requestId),
       type = pulumi.Input.asOptionalInput<PrivateCloudType>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'location': ?location,
      'managementCluster':
          pulumi.Input.mapInputValue<ManagementCluster, Map<String, dynamic>>(
            managementCluster,
            (value) => value.toMap(),
          ),
      'networkConfig':
          pulumi.Input.mapInputValue<NetworkConfig, Map<String, dynamic>>(
            networkConfig,
            (value) => value.toMap(),
          ),
      'privateCloudId': privateCloudId,
      'project': ?project,
      'requestId': ?requestId,
      'type': ?pulumi.Input.mapOptionalInputValue<PrivateCloudType, String>(
        type,
        (value) => value.value,
      ),
    };
  }

  factory PrivateCloudArgs.fromMap(Map<String, dynamic> map) {
    return PrivateCloudArgs(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      managementCluster: ManagementCluster.fromMap(
        (map['managementCluster'] as Map).cast<String, dynamic>(),
      ),
      networkConfig: NetworkConfig.fromMap(
        (map['networkConfig'] as Map).cast<String, dynamic>(),
      ),
      privateCloudId: map['privateCloudId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      type: map['type'] == null
          ? null
          : PrivateCloudType.fromValue(map['type'] as String),
    );
  }
}
