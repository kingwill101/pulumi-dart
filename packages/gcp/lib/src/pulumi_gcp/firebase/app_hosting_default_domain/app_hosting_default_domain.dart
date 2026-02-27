import 'package:pulumi/pulumi.dart';
import 'app_hosting_default_domain_args.dart';

/// A domain name that is associated with a backend.
///
///
///
/// ## Example Usage
///
/// ### Firebase App Hosting Default Domain Minimal
///
///
///
/// ### Firebase App Hosting Default Domain Full
///
///
///
/// ### Firebase App Hosting Default Domain Disabled
///
///
///
///
/// ## Import
///
/// DefaultDomain can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/backends/{{backend}}/domains/{{domain_id}}`
///
/// * `{{project}}/{{location}}/{{backend}}/{{domain_id}}`
///
/// * `{{location}}/{{backend}}/{{domain_id}}`
///
/// When using the `pulumi import` command, DefaultDomain can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firebase/appHostingDefaultDomain:AppHostingDefaultDomain default projects/{{project}}/locations/{{location}}/backends/{{backend}}/domains/{{domain_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/appHostingDefaultDomain:AppHostingDefaultDomain default {{project}}/{{location}}/{{backend}}/{{domain_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/appHostingDefaultDomain:AppHostingDefaultDomain default {{location}}/{{backend}}/{{domain_id}}
/// ```
class AppHostingDefaultDomain extends CustomResource {
  /// The ID of the Backend that this Domain is associated with
  late final Output<String> backend;

  /// Time at which the domain was created.
  late final Output<String> createTime;

  /// Whether the domain is disabled. Defaults to false.
  late final Output<bool> disabled;

  /// Id of the domain. For default domain, it should be {{backend}}--{{project_id}}.{{location}}.hosted.app
  late final Output<String> domainId;

  /// Server-computed checksum based on other values; may be sent
  /// on update or delete to ensure operation is done on expected resource.
  late final Output<String> etag;

  /// The location of the Backend that this Domain is associated with
  late final Output<String> location;

  /// Identifier. The resource name of the domain, e.g.
  /// `projects/{project}/locations/{locationId}/backends/{backendId}/domains/{domainId}`
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// System-assigned, unique identifier.
  late final Output<String> uid;

  /// Time at which the domain was last updated.
  late final Output<String> updateTime;

  AppHostingDefaultDomain(
    String name, {
    AppHostingDefaultDomainArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/appHostingDefaultDomain:AppHostingDefaultDomain',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.backend = registerOutput<String>('backend');
    this.createTime = registerOutput<String>('createTime');
    this.disabled = registerOutput<bool>('disabled');
    this.domainId = registerOutput<String>('domainId');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
