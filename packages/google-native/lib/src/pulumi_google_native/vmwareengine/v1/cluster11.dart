import 'package:pulumi/pulumi.dart' hide Config;
import 'cluster_args11.dart';
import 'stretched_cluster_config_response.dart';

/// Creates a new cluster in a given private cloud. Creating a new cluster provides additional nodes for use in the parent private cloud and requires sufficient [node quota](https://cloud.google.com/vmware-engine/quotas).
/// Auto-naming is currently not supported for this resource.
class Cluster11 extends CustomResource {
  /// Required. The user-provided identifier of the new `Cluster`. This identifier must be unique among clusters within the parent and becomes the final token in the name URI. The identifier must meet the following requirements: * Only contains 1-63 alphanumeric characters and hyphens * Begins with an alphabetical character * Ends with a non-hyphen character * Not formatted as a UUID * Complies with [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
  late final Output<String> clusterId;

  /// Creation time of this resource.
  late final Output<String> createTime;
  late final Output<String> location;

  /// True if the cluster is a management cluster; false otherwise. There can only be one management cluster in a private cloud and it has to be the first one.
  late final Output<bool> management;

  /// The resource name of this cluster. Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names. For example: `projects/my-project/locations/us-central1-a/privateClouds/my-cloud/clusters/my-cluster`
  late final Output<String> name;

  /// The map of cluster node types in this cluster, where the key is canonical identifier of the node type (corresponds to the `NodeType`).
  late final Output<Map<String, String>> nodeTypeConfigs;
  late final Output<String> privateCloudId;
  late final Output<String> project;

  /// Optional. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// State of the resource.
  late final Output<String> state;

  /// Optional. Configuration of a stretched cluster. Required for clusters that belong to a STRETCHED private cloud.
  late final Output<StretchedClusterConfigResponse> stretchedClusterConfig;

  /// System-generated unique identifier for the resource.
  late final Output<String> uid;

  /// Last update time of this resource.
  late final Output<String> updateTime;

  Cluster11(
    String name, {
    ClusterArgs11? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:vmwareengine/v1:Cluster',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.clusterId = registerOutput<String>('clusterId');
    this.createTime = registerOutput<String>('createTime');
    this.location = registerOutput<String>('location');
    this.management = registerOutput<bool>('management');
    this.name = registerOutput<String>('name');
    this.nodeTypeConfigs =
        registerOutput<Map<String, String>>('nodeTypeConfigs');
    this.privateCloudId = registerOutput<String>('privateCloudId');
    this.project = registerOutput<String>('project');
    this.requestId = registerOutput<String?>('requestId');
    this.state = registerOutput<String>('state');
    this.stretchedClusterConfig =
        registerOutput<StretchedClusterConfigResponse>(
            'stretchedClusterConfig');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
