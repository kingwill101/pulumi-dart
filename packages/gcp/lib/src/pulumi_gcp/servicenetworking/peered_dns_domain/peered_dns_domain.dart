import 'package:pulumi/pulumi.dart' as pulumi;
import 'peered_dns_domain_args.dart';

/// Allows management of a single peered DNS domain for an existing Google Cloud Platform project.
///
/// When using Google Cloud DNS to manage internal DNS, create peered DNS domains to make your DNS available to services like Google Cloud Build.
///
/// For more information see [the API](https://cloud.google.com/service-infrastructure/docs/service-networking/reference/rest/v1/services.projects.global.networks.peeredDnsDomains)
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Project peered DNS domains can be imported using the `service`, `project`, `network` and `name`, where:
///
/// - `service` is the service connection, defaults to `servicenetworking.googleapis.com`.
///
/// - `project` is the producer project name.
///
/// - `network` is the consumer network name.
///
/// - `name` is the name of your peered DNS domain.
///
/// * `services/{service}/projects/{project}/global/networks/{network}/peeredDnsDomains/{name}`
///
/// When using the `pulumi import` command, project peered DNS domains can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:servicenetworking/peeredDnsDomain:PeeredDnsDomain default services/{service}/projects/{project}/global/networks/{network}/peeredDnsDomains/{name}
/// ```
class PeeredDnsDomain extends pulumi.CustomResource {
  /// The DNS domain suffix of the peered DNS domain. Make sure to suffix with a `.` (dot).
  late final pulumi.Output<String> dnsSuffix;

  /// Internal name used for the peered DNS domain.
  late final pulumi.Output<String> name;

  /// The network in the consumer project.
  late final pulumi.Output<String> network;

  /// an identifier for the resource with format `services/{{service}}/projects/{{project}}/global/networks/{{network}}`
  late final pulumi.Output<String> parent;

  /// The producer project number. If not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Private service connection between service and consumer network, defaults to `servicenetworking.googleapis.com`
  late final pulumi.Output<String?> service;

  PeeredDnsDomain(
    String name, {
    PeeredDnsDomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:servicenetworking/peeredDnsDomain:PeeredDnsDomain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dnsSuffix = registerOutput<String>('dnsSuffix');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.parent = registerOutput<String>('parent');
    this.project = registerOutput<String>('project');
    this.service = registerOutput<String?>('service');
  }
}
