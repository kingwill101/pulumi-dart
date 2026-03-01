import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'pod_certificate_request_certificates_k8s_io_v1beta1.dart';
import 'pod_certificate_request_list_args.dart';

/// PodCertificateRequestList is a collection of PodCertificateRequest objects
class PodCertificateRequestListCertificatesK8sIoV1beta1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// items is a collection of PodCertificateRequest objects
  late final pulumi.Output<List<PodCertificateRequestCertificatesK8sIoV1beta1>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// metadata contains the list metadata.
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [PodCertificateRequestListCertificatesK8sIoV1beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PodCertificateRequestListCertificatesK8sIoV1beta1]. {@macro pulumi_certificates_k8s_io_v1beta1_pod_certificate_request_list_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PodCertificateRequestListCertificatesK8sIoV1beta1(
    String name, {
    PodCertificateRequestListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:certificates.k8s.io/v1beta1:PodCertificateRequestList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiVersion = registerOutput<String>('apiVersion');
    this.items = registerOutput<List<PodCertificateRequestCertificatesK8sIoV1beta1>>('items');
    this.kind = registerOutput<String>('kind');
    this.metadata = registerOutput<ListMeta>('metadata');
  }
}
