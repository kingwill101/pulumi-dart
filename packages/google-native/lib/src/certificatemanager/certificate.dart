import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_args.dart';
import 'managed_certificate_response.dart';
import 'self_managed_certificate_response.dart';

/// Creates a new Certificate in a given project and location.
class Certificate extends pulumi.CustomResource {
  /// Required. A user-provided name of the certificate.
  late final pulumi.Output<String> certificateId;

  /// The creation timestamp of a Certificate.
  late final pulumi.Output<String> createTime;

  /// One or more paragraphs of text description of a certificate.
  late final pulumi.Output<String> description;

  /// The expiry timestamp of a Certificate.
  late final pulumi.Output<String> expireTime;

  /// Set of labels associated with a Certificate.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// If set, contains configuration and state of a managed certificate.
  late final pulumi.Output<ManagedCertificateResponse> managed;

  /// A user-defined name of the certificate. Certificate names must be unique globally and match pattern `projects/*/locations/*/certificates/*`.
  late final pulumi.Output<String> name;

  /// The PEM-encoded certificate chain.
  late final pulumi.Output<String> pemCertificate;
  late final pulumi.Output<String> project;

  /// The list of Subject Alternative Names of dnsName type defined in the certificate (see RFC 5280 4.2.1.6). Managed certificates that haven't been provisioned yet have this field populated with a value of the managed.domains field.
  late final pulumi.Output<List<String>> sanDnsnames;

  /// Immutable. The scope of the certificate.
  late final pulumi.Output<String> scope;

  /// If set, defines data of a self-managed certificate.
  late final pulumi.Output<SelfManagedCertificateResponse> selfManaged;

  /// The last update timestamp of a Certificate.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Certificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Certificate]. {@macro pulumi_certificatemanager_v1_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Certificate(
    String name, {
    CertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:certificatemanager/v1:Certificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.certificateId = registerOutput<String>('certificateId');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.expireTime = registerOutput<String>('expireTime');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.managed = registerOutput<ManagedCertificateResponse>('managed');
    this.name = registerOutput<String>('name');
    this.pemCertificate = registerOutput<String>('pemCertificate');
    this.project = registerOutput<String>('project');
    this.sanDnsnames = registerOutput<List<String>>('sanDnsnames');
    this.scope = registerOutput<String>('scope');
    this.selfManaged =
        registerOutput<SelfManagedCertificateResponse>('selfManaged');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
