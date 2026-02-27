import 'package:pulumi/pulumi.dart' as pulumi;
import '../app_hosting_domain_custom_domain_status/app_hosting_domain_custom_domain_status.dart';
import '../app_hosting_domain_serve/app_hosting_domain_serve.dart';
import 'app_hosting_domain_args.dart';

/// A domain name that is associated with a backend.
///
///
///
/// ## Example Usage
///
/// ### Firebase App Hosting Domain Minimal
///
///
///
/// ### Firebase App Hosting Domain Full
///
///
///
///
/// ## Import
///
/// Domain can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/backends/{{backend}}/domains/{{domain_id}}`
///
/// * `{{project}}/{{location}}/{{backend}}/{{domain_id}}`
///
/// * `{{location}}/{{backend}}/{{domain_id}}`
///
/// When using the `pulumi import` command, Domain can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firebase/appHostingDomain:AppHostingDomain default projects/{{project}}/locations/{{location}}/backends/{{backend}}/domains/{{domain_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/appHostingDomain:AppHostingDomain default {{project}}/{{location}}/{{backend}}/{{domain_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/appHostingDomain:AppHostingDomain default {{location}}/{{backend}}/{{domain_id}}
/// ```
class AppHostingDomain extends pulumi.CustomResource {
  /// The ID of the Backend that this Domain is associated with
  late final pulumi.Output<String> backend;

  /// Time at which the domain was created.
  late final pulumi.Output<String> createTime;

  /// The status of a custom domain's linkage to the Backend.
  /// Structure is documented below.
  late final pulumi.Output<List<AppHostingDomainCustomDomainStatus>>
      customDomainStatuses;

  /// Time at which the domain was deleted.
  late final pulumi.Output<String> deleteTime;

  /// Id of the domain to create.
  /// Must be a valid domain name, such as "foo.com"
  late final pulumi.Output<String> domainId;

  /// Server-computed checksum based on other values; may be sent
  /// on update or delete to ensure operation is done on expected resource.
  late final pulumi.Output<String> etag;

  /// The location of the Backend that this Domain is associated with
  late final pulumi.Output<String> location;

  /// Identifier. The resource name of the domain, e.g.
  /// `projects/{project}/locations/{locationId}/backends/{backendId}/domains/{domainId}`
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Time at which a soft-deleted domain will be purged, rendering in
  /// permanently deleted.
  late final pulumi.Output<String> purgeTime;

  /// The serving behavior of the domain. If specified, the domain will
  /// serve content other than its Backend's live content.
  /// Structure is documented below.
  late final pulumi.Output<AppHostingDomainServe?> serve;

  /// System-assigned, unique identifier.
  late final pulumi.Output<String> uid;

  /// Time at which the domain was last updated.
  late final pulumi.Output<String> updateTime;

  AppHostingDomain(
    String name, {
    AppHostingDomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/appHostingDomain:AppHostingDomain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backend = registerOutput<String>('backend');
    this.createTime = registerOutput<String>('createTime');
    this.customDomainStatuses =
        registerOutput<List<AppHostingDomainCustomDomainStatus>>(
            'customDomainStatuses');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.domainId = registerOutput<String>('domainId');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.purgeTime = registerOutput<String>('purgeTime');
    this.serve = registerOutput<AppHostingDomainServe?>('serve');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
