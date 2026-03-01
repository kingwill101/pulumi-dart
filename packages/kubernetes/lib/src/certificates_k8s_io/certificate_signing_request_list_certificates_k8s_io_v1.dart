import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'certificate_signing_request_certificates_k8s_io_v1.dart';
import 'certificate_signing_request_list_args.dart';

/// CertificateSigningRequestList is a collection of CertificateSigningRequest objects
class CertificateSigningRequestListCertificatesK8sIoV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// items is a collection of CertificateSigningRequest objects
  late final pulumi.Output<List<CertificateSigningRequestCertificatesK8sIoV1>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [CertificateSigningRequestListCertificatesK8sIoV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CertificateSigningRequestListCertificatesK8sIoV1]. {@macro pulumi_certificates_k8s_io_v1_certificate_signing_request_list_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CertificateSigningRequestListCertificatesK8sIoV1(
    String name, {
    CertificateSigningRequestListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:certificates.k8s.io/v1:CertificateSigningRequestList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiVersion = registerOutput<String>('apiVersion');
    this.items = registerOutput<List<CertificateSigningRequestCertificatesK8sIoV1>>('items');
    this.kind = registerOutput<String>('kind');
    this.metadata = registerOutput<ListMeta>('metadata');
  }
}
