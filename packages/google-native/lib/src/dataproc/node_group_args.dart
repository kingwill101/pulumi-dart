// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_group_config.dart';
import 'node_group_roles_item.dart';

/// {@template pulumi_dataproc_v1_node_group_args_doc}
/// The set of arguments for NodeGroup.
/// {@endtemplate}
/// {@macro pulumi_dataproc_v1_node_group_args_doc}
class NodeGroupArgs {
  final pulumi.Input<String> clusterId;

  /// Optional. Node group labels. Label keys must consist of from 1 to 63 characters and conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values can be empty. If specified, they must consist of from 1 to 63 characters and conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). The node group must have no more than 32 labelsn.
  final pulumi.Input<Map<String, String>>? labels;

  /// The Node group resource name (https://aip.dev/122).
  final pulumi.Input<String>? name;

  /// Optional. The node group instance group configuration.
  final pulumi.Input<InstanceGroupConfig>? nodeGroupConfig;

  /// Optional. An optional node group ID. Generated if not specified.The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of from 3 to 33 characters.
  final pulumi.Input<String>? nodeGroupId;

  /// Optional. operation id of the parent operation sending the create request
  final pulumi.Input<String>? parentOperationId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> regionId;

  /// Optional. A unique ID used to identify the request. If the server receives two CreateNodeGroupRequest (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#google.cloud.dataproc.v1.CreateNodeGroupRequests) with the same ID, the second request is ignored and the first google.longrunning.Operation created and stored in the backend is returned.Recommendation: Set this value to a UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier).The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  final pulumi.Input<String>? requestId;

  /// Node group roles.
  final pulumi.Input<List<NodeGroupRolesItem>> roles;

  /// Creates a new [NodeGroupArgs].
  /// [clusterId] Required.
  /// [labels] Optional. Node group labels. Label keys must consist of from 1 to 63 characters and conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values can be empty. If specified, they must consist of from 1 to 63 characters and conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). The node group must have no more than 32 labelsn.
  /// [name] The Node group resource name (https://aip.dev/122).
  /// [nodeGroupConfig] Optional. The node group instance group configuration.
  /// [nodeGroupId] Optional. An optional node group ID. Generated if not specified.The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of from 3 to 33 characters.
  /// [parentOperationId] Optional. operation id of the parent operation sending the create request
  /// [project] Optional.
  /// [regionId] Required.
  /// [requestId] Optional. A unique ID used to identify the request. If the server receives two CreateNodeGroupRequest (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#google.cloud.dataproc.v1.CreateNodeGroupRequests) with the same ID, the second request is ignored and the first google.longrunning.Operation created and stored in the backend is returned.Recommendation: Set this value to a UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier).The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  /// [roles] Node group roles.
  NodeGroupArgs({
    required String clusterId,
    Map<String, String>? labels,
    String? name,
    InstanceGroupConfig? nodeGroupConfig,
    String? nodeGroupId,
    String? parentOperationId,
    String? project,
    required String regionId,
    String? requestId,
    required List<NodeGroupRolesItem> roles,
  }) : clusterId = pulumi.Input.asInput<String>(clusterId),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       name = pulumi.Input.asOptionalInput<String>(name),
       nodeGroupConfig = pulumi.Input.asOptionalInput<InstanceGroupConfig>(
         nodeGroupConfig,
       ),
       nodeGroupId = pulumi.Input.asOptionalInput<String>(nodeGroupId),
       parentOperationId = pulumi.Input.asOptionalInput<String>(
         parentOperationId,
       ),
       project = pulumi.Input.asOptionalInput<String>(project),
       regionId = pulumi.Input.asInput<String>(regionId),
       requestId = pulumi.Input.asOptionalInput<String>(requestId),
       roles = pulumi.Input.asInput<List<NodeGroupRolesItem>>(roles);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'labels': ?labels,
      'name': ?name,
      'nodeGroupConfig':
          ?pulumi.Input.mapOptionalInputValue<
            InstanceGroupConfig,
            Map<String, dynamic>
          >(nodeGroupConfig, (value) => value.toMap()),
      'nodeGroupId': ?nodeGroupId,
      'parentOperationId': ?parentOperationId,
      'project': ?project,
      'regionId': regionId,
      'requestId': ?requestId,
      'roles':
          pulumi.Input.mapInputValue<List<NodeGroupRolesItem>, List<String>>(
            roles,
            (value) => pulumi.Input.encodeList<NodeGroupRolesItem, String>(
              value,
              (value) => value.value,
            ),
          ),
    };
  }

  factory NodeGroupArgs.fromMap(Map<String, dynamic> map) {
    return NodeGroupArgs(
      clusterId: map['clusterId'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      name: map['name'] == null ? null : map['name'] as String,
      nodeGroupConfig: map['nodeGroupConfig'] == null
          ? null
          : InstanceGroupConfig.fromMap(
              (map['nodeGroupConfig'] as Map).cast<String, dynamic>(),
            ),
      nodeGroupId: map['nodeGroupId'] == null
          ? null
          : map['nodeGroupId'] as String,
      parentOperationId: map['parentOperationId'] == null
          ? null
          : map['parentOperationId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      regionId: map['regionId'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      roles: pulumi.Input.decodeList<NodeGroupRolesItem>(
        map['roles'],
        (value) => NodeGroupRolesItem.fromValue(value as String),
      ),
    );
  }
}
