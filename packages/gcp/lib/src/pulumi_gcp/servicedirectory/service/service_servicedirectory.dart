import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_servicedirectory_args.dart';

/// An individual service. A service contains a name and optional metadata.
///
///
/// To get more information about Service, see:
///
/// * [API documentation](https://cloud.google.com/service-directory/docs/reference/rest/v1/projects.locations.namespaces.services)
/// * How-to Guides
/// * [Configuring a service](https://cloud.google.com/service-directory/docs/configuring-service-directory#configuring_a_service)
///
/// ## Example Usage
///
/// ### Service Directory Service Basic
///
///
///
///
/// ## Import
///
/// Service can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/namespaces/{{namespace_id}}/services/{{service_id}}`
///
/// * `{{project}}/{{location}}/{{namespace_id}}/{{service_id}}`
///
/// * `{{location}}/{{namespace_id}}/{{service_id}}`
///
/// When using the `pulumi import` command, Service can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:servicedirectory/service:Service default projects/{{project}}/locations/{{location}}/namespaces/{{namespace_id}}/services/{{service_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:servicedirectory/service:Service default {{project}}/{{location}}/{{namespace_id}}/{{service_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:servicedirectory/service:Service default {{location}}/{{namespace_id}}/{{service_id}}
/// ```
class ServiceServicedirectory extends pulumi.CustomResource {
  /// Metadata for the service. This data can be consumed
  /// by service clients. The entire metadata dictionary may contain
  /// up to 2000 characters, spread across all key-value pairs.
  /// Metadata that goes beyond any these limits will be rejected.
  late final pulumi.Output<Map<String, String>?> metadata;

  /// The resource name for the service in the
  /// format `projects/*/locations/*/namespaces/*/services/*`.
  late final pulumi.Output<String> name;

  /// The resource name of the namespace this service will belong to.
  late final pulumi.Output<String> namespace;

  /// The Resource ID must be 1-63 characters long, including digits,
  /// lowercase letters or the hyphen character.
  late final pulumi.Output<String> serviceId;

  ServiceServicedirectory(
    String name, {
    ServiceServicedirectoryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:servicedirectory/service:Service',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.metadata = registerOutput<Map<String, String>?>('metadata');
    this.name = registerOutput<String>('name');
    this.namespace = registerOutput<String>('namespace');
    this.serviceId = registerOutput<String>('serviceId');
  }
}
