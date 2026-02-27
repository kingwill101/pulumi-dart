import 'package:pulumi/pulumi.dart' hide Config;
import 'instance_group_config_response.dart';
import 'node_group_args4.dart';

/// Creates a node group in a cluster. The returned Operation.metadata is NodeGroupOperationMetadata (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#nodegroupoperationmetadata).
/// Auto-naming is currently not supported for this resource.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class NodeGroup5 extends CustomResource {
  late final Output<String> clusterId;

  /// Optional. Node group labels. Label keys must consist of from 1 to 63 characters and conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values can be empty. If specified, they must consist of from 1 to 63 characters and conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). The node group must have no more than 32 labelsn.
  late final Output<Map<String, String>> labels;

  /// The Node group resource name (https://aip.dev/122).
  late final Output<String> name;

  /// Optional. The node group instance group configuration.
  late final Output<InstanceGroupConfigResponse> nodeGroupConfig;

  /// Optional. An optional node group ID. Generated if not specified.The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of from 3 to 33 characters.
  late final Output<String?> nodeGroupId;

  /// Optional. operation id of the parent operation sending the create request
  late final Output<String?> parentOperationId;
  late final Output<String> project;
  late final Output<String> regionId;

  /// Optional. A unique ID used to identify the request. If the server receives two CreateNodeGroupRequest (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#google.cloud.dataproc.v1.CreateNodeGroupRequests) with the same ID, the second request is ignored and the first google.longrunning.Operation created and stored in the backend is returned.Recommendation: Set this value to a UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier).The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  late final Output<String?> requestId;

  /// Node group roles.
  late final Output<List<String>> roles;

  NodeGroup5(
    String name, {
    NodeGroupArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:dataproc/v1:NodeGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.clusterId = registerOutput<String>('clusterId');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.name = registerOutput<String>('name');
    this.nodeGroupConfig =
        registerOutput<InstanceGroupConfigResponse>('nodeGroupConfig');
    this.nodeGroupId = registerOutput<String?>('nodeGroupId');
    this.parentOperationId = registerOutput<String?>('parentOperationId');
    this.project = registerOutput<String>('project');
    this.regionId = registerOutput<String>('regionId');
    this.requestId = registerOutput<String?>('requestId');
    this.roles = registerOutput<List<String>>('roles');
  }
}
