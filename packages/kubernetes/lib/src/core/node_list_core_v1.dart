import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'node_core_v1.dart';
import 'node_list_args.dart';

/// NodeList is the whole list of all Nodes which have been registered with master.
class NodeListCoreV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// List of nodes
  late final pulumi.Output<List<NodeCoreV1>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [NodeListCoreV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NodeListCoreV1]. {@macro pulumi_core_v1_node_list_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NodeListCoreV1(
    String name, {
    NodeListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:core/v1:NodeList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiVersion = registerOutput<String>('apiVersion');
    this.items = registerOutput<List<NodeCoreV1>>('items');
    this.kind = registerOutput<String>('kind');
    this.metadata = registerOutput<ListMeta>('metadata');
  }
}
