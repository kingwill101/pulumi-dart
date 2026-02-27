import 'package:pulumi/pulumi.dart' as pulumi;
import '../managed_ssl_certificate_managed/managed_ssl_certificate_managed.dart';
import 'managed_ssl_certificate_args.dart';

/// An SslCertificate resource, used for HTTPS load balancing.  This resource
/// represents a certificate for which the certificate secrets are created and
/// managed by Google.
///
/// For a resource where you provide the key, see the
/// SSL Certificate resource.
///
///
/// To get more information about ManagedSslCertificate, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/sslCertificates)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/load-balancing/docs/ssl-certificates)
///
/// > **Warning:** This resource should be used with extreme caution!  Provisioning an SSL
/// certificate is complex.  Ensure that you understand the lifecycle of a
/// certificate before attempting complex tasks like cert rotation automatically.
/// This resource will "return" as soon as the certificate object is created,
/// but post-creation the certificate object will go through a "provisioning"
/// process.  The provisioning process can complete only when the domain name
/// for which the certificate is created points to a target pool which, itself,
/// points at the certificate.  Depending on your DNS provider, this may take
/// some time, and migrating from self-managed certificates to Google-managed
/// certificates may entail some downtime while the certificate provisions.
///
/// In conclusion: Be extremely cautious.
///
/// ## Example Usage
///
/// ### Managed Ssl Certificate Basic
///
///
///
/// ## Import
///
/// ManagedSslCertificate can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/sslCertificates/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, ManagedSslCertificate can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/managedSslCertificate:ManagedSslCertificate default projects/{{project}}/global/sslCertificates/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/managedSslCertificate:ManagedSslCertificate default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/managedSslCertificate:ManagedSslCertificate default {{name}}
/// ```
class ManagedSslCertificate extends pulumi.CustomResource {
  /// The unique identifier for the resource.
  late final pulumi.Output<int> certificateId;

  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// An optional description of this resource.
  late final pulumi.Output<String?> description;

  /// Expire time of the certificate in RFC3339 text format.
  late final pulumi.Output<String> expireTime;

  /// Properties relevant to a managed certificate.  These will be used if the
  /// certificate is managed (as indicated by a value of `MANAGED` in `type`).
  /// Structure is documented below.
  late final pulumi.Output<ManagedSslCertificateManaged?> managed;

  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  /// These are in the same namespace as the managed SSL certificates.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  /// Domains associated with the certificate via Subject Alternative Name.
  late final pulumi.Output<List<String>> subjectAlternativeNames;

  /// Enum field whose value is always `MANAGED` - used to signal to the API
  /// which type this is.
  /// Default value is `MANAGED`.
  /// Possible values are: `MANAGED`.
  late final pulumi.Output<String?> type;

  ManagedSslCertificate(
    String name, {
    ManagedSslCertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/managedSslCertificate:ManagedSslCertificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.certificateId = registerOutput<int>('certificateId');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.expireTime = registerOutput<String>('expireTime');
    this.managed = registerOutput<ManagedSslCertificateManaged?>('managed');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.selfLink = registerOutput<String>('selfLink');
    this.subjectAlternativeNames =
        registerOutput<List<String>>('subjectAlternativeNames');
    this.type = registerOutput<String?>('type');
  }
}
