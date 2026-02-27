import 'package:pulumi/pulumi.dart';
import '../domain_mapping_metadata/domain_mapping_metadata.dart';
import '../domain_mapping_spec/domain_mapping_spec.dart';
import '../domain_mapping_status/domain_mapping_status.dart';
import 'domain_mapping_args2.dart';

/// Resource to hold the state and status of a user's domain mapping.
///
///
/// To get more information about DomainMapping, see:
///
/// * [API documentation](https://cloud.google.com/run/docs/reference/rest/v1/projects.locations.domainmappings)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/run/docs/mapping-custom-domains)
///
/// ## Example Usage
///
/// ### Cloud Run Domain Mapping Basic
///
///
///
///
/// ## Import
///
/// DomainMapping can be imported using any of these accepted formats:
///
/// * `locations/{{location}}/namespaces/{{project}}/domainmappings/{{name}}`
///
/// * `{{location}}/{{project}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, DomainMapping can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:cloudrun/domainMapping:DomainMapping default locations/{{location}}/namespaces/{{project}}/domainmappings/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:cloudrun/domainMapping:DomainMapping default {{location}}/{{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:cloudrun/domainMapping:DomainMapping default {{location}}/{{name}}
/// ```
class DomainMapping2 extends CustomResource {
  /// The location of the cloud run instance. eg us-central1
  late final Output<String> location;

  /// Metadata associated with this DomainMapping.
  /// Structure is documented below.
  late final Output<DomainMappingMetadata> metadata;

  /// Name should be a [verified](https://support.google.com/webmasters/answer/9008080) domain
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The spec for this DomainMapping.
  /// Structure is documented below.
  late final Output<DomainMappingSpec> spec;

  /// (Output)
  /// Status of the condition, one of True, False, Unknown.
  late final Output<List<DomainMappingStatus>> statuses;

  DomainMapping2(
    String name, {
    DomainMappingArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:cloudrun/domainMapping:DomainMapping',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.location = registerOutput<String>('location');
    this.metadata = registerOutput<DomainMappingMetadata>('metadata');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.spec = registerOutput<DomainMappingSpec>('spec');
    this.statuses = registerOutput<List<DomainMappingStatus>>('statuses');
  }
}
