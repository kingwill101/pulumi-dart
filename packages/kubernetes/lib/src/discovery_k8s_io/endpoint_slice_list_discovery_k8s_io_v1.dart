import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'endpoint_slice_discovery_k8s_io_v1.dart';
import 'endpoint_slice_list_args.dart';

/// EndpointSliceList represents a list of endpoint slices
class EndpointSliceListDiscoveryK8sIoV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// items is the list of endpoint slices
  late final pulumi.Output<List<EndpointSliceDiscoveryK8sIoV1>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard list metadata.
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [EndpointSliceListDiscoveryK8sIoV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EndpointSliceListDiscoveryK8sIoV1]. {@macro pulumi_discovery_k8s_io_v1_endpoint_slice_list_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EndpointSliceListDiscoveryK8sIoV1(
    String name, {
    EndpointSliceListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:discovery.k8s.io/v1:EndpointSliceList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiVersion = registerOutput<String>('apiVersion');
    this.items = registerOutput<List<EndpointSliceDiscoveryK8sIoV1>>('items');
    this.kind = registerOutput<String>('kind');
    this.metadata = registerOutput<ListMeta>('metadata');
  }
}
