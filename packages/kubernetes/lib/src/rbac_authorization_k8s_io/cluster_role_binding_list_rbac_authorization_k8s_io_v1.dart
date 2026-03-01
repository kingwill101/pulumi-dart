import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'cluster_role_binding_list_args.dart';
import 'cluster_role_binding_rbac_authorization_k8s_io_v1.dart';

/// ClusterRoleBindingList is a collection of ClusterRoleBindings
class ClusterRoleBindingListRbacAuthorizationK8sIoV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Items is a list of ClusterRoleBindings
  late final pulumi.Output<List<ClusterRoleBindingRbacAuthorizationK8sIoV1>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard object's metadata.
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [ClusterRoleBindingListRbacAuthorizationK8sIoV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ClusterRoleBindingListRbacAuthorizationK8sIoV1]. {@macro pulumi_rbac_authorization_k8s_io_v1_cluster_role_binding_list_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ClusterRoleBindingListRbacAuthorizationK8sIoV1(
    String name, {
    ClusterRoleBindingListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:rbac.authorization.k8s.io/v1:ClusterRoleBindingList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiVersion = registerOutput<String>('apiVersion');
    this.items = registerOutput<List<ClusterRoleBindingRbacAuthorizationK8sIoV1>>('items');
    this.kind = registerOutput<String>('kind');
    this.metadata = registerOutput<ListMeta>('metadata');
  }
}
