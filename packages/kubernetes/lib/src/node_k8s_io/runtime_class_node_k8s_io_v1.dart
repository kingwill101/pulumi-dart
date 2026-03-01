import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'overhead.dart';
import 'runtime_class_args.dart';
import 'scheduling.dart';

/// RuntimeClass defines a class of container runtime supported in the cluster. The RuntimeClass is used to determine which container runtime is used to run all containers in a pod. RuntimeClasses are manually defined by a user or cluster provisioner, and referenced in the PodSpec. The Kubelet is responsible for resolving the RuntimeClassName reference before running the pod.  For more details, see https://kubernetes.io/docs/concepts/containers/runtime-class/
class RuntimeClassNodeK8sIoV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// handler specifies the underlying runtime and configuration that the CRI implementation will use to handle pods of this class. The possible values are specific to the node & CRI configuration.  It is assumed that all handlers are available on every node, and handlers of the same name are equivalent on every node. For example, a handler called "runc" might specify that the runc OCI runtime (using native Linux containers) will be used to run the containers in a pod. The Handler must be lowercase, conform to the DNS Label (RFC 1123) requirements, and is immutable.
  late final pulumi.Output<String> handler;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMeta> metadata;
  /// overhead represents the resource overhead associated with running a pod for a given RuntimeClass. For more details, see
  /// https://kubernetes.io/docs/concepts/scheduling-eviction/pod-overhead/
  late final pulumi.Output<Overhead> overhead;
  /// scheduling holds the scheduling constraints to ensure that pods running with this RuntimeClass are scheduled to nodes that support it. If scheduling is nil, this RuntimeClass is assumed to be supported by all nodes.
  late final pulumi.Output<Scheduling> scheduling;

  /// Creates a new [RuntimeClassNodeK8sIoV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RuntimeClassNodeK8sIoV1]. {@macro pulumi_node_k8s_io_v1_runtime_class_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RuntimeClassNodeK8sIoV1(
    String name, {
    RuntimeClassArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:node.k8s.io/v1:RuntimeClass',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiVersion = registerOutput<String>('apiVersion');
    this.handler = registerOutput<String>('handler');
    this.kind = registerOutput<String>('kind');
    this.metadata = registerOutput<ObjectMeta>('metadata');
    this.overhead = registerOutput<Overhead>('overhead');
    this.scheduling = registerOutput<Scheduling>('scheduling');
  }
}
