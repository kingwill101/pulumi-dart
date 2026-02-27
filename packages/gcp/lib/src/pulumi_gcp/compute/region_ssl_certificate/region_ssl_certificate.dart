import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_ssl_certificate_args.dart';

/// A RegionSslCertificate resource, used for HTTPS load balancing. This resource
/// provides a mechanism to upload an SSL key and certificate to
/// the load balancer to serve secure connections from the user.
///
///
/// To get more information about RegionSslCertificate, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/regionSslCertificates)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/load-balancing/docs/ssl-certificates)
///
///
///
/// ## Example Usage
///
/// ## Import
///
/// RegionSslCertificate can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/sslCertificates/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, RegionSslCertificate can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/regionSslCertificate:RegionSslCertificate default projects/{{project}}/regions/{{region}}/sslCertificates/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionSslCertificate:RegionSslCertificate default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionSslCertificate:RegionSslCertificate default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionSslCertificate:RegionSslCertificate default {{name}}
/// ```
class RegionSslCertificate extends pulumi.CustomResource {
  /// The certificate in PEM format.
  /// The certificate chain must be no greater than 5 certs long.
  /// The chain must include at least one intermediate cert.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  late final pulumi.Output<String> certificate;

  /// The unique identifier for the resource.
  late final pulumi.Output<int> certificateId;

  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// An optional description of this resource.
  late final pulumi.Output<String?> description;

  /// Expire time of the certificate in RFC3339 text format.
  late final pulumi.Output<String> expireTime;

  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  /// These are in the same namespace as the managed SSL certificates.
  late final pulumi.Output<String> name;

  /// Creates a unique name beginning with the
  /// specified prefix. Conflicts with `name`. Max length is 54 characters.
  /// Prefixes with lengths longer than 37 characters will use a shortened
  /// UUID that will be more prone to collisions.
  /// Resulting name for a `name_prefix` <= 37 characters:
  /// `name_prefix` + YYYYmmddHHSSssss + 8 digit incremental counter
  /// Resulting name for a `name_prefix` 38 - 54 characters:
  /// `name_prefix` + YYmmdd + 3 digit incremental counter
  late final pulumi.Output<String> namePrefix;

  /// The write-only private key in PEM format.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  late final pulumi.Output<String> privateKey;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The Region in which the created regional ssl certificate should reside.
  /// If it is not provided, the provider region is used.
  late final pulumi.Output<String> region;

  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  RegionSslCertificate(
    String name, {
    RegionSslCertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionSslCertificate:RegionSslCertificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.certificate = registerOutput<String>('certificate');
    this.certificateId = registerOutput<int>('certificateId');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.expireTime = registerOutput<String>('expireTime');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.privateKey = registerOutput<String>('privateKey');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.selfLink = registerOutput<String>('selfLink');
  }
}
