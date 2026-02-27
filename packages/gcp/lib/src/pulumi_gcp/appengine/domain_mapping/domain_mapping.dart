import 'package:pulumi/pulumi.dart' as pulumi;
import '../domain_mapping_resource_record/domain_mapping_resource_record.dart';
import '../domain_mapping_ssl_settings/domain_mapping_ssl_settings.dart';
import 'domain_mapping_args.dart';

/// A domain serving an App Engine application.
///
///
/// To get more information about DomainMapping, see:
///
/// * [API documentation](https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.domainMappings)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/appengine/docs/standard/python/mapping-custom-domains)
///
/// ## Example Usage
///
/// ### App Engine Domain Mapping Basic
///
///
///
///
/// ## Import
///
/// DomainMapping can be imported using any of these accepted formats:
///
/// * `apps/{{project}}/domainMappings/{{domain_name}}`
///
/// * `{{project}}/{{domain_name}}`
///
/// * `{{domain_name}}`
///
/// When using the `pulumi import` command, DomainMapping can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:appengine/domainMapping:DomainMapping default apps/{{project}}/domainMappings/{{domain_name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:appengine/domainMapping:DomainMapping default {{project}}/{{domain_name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:appengine/domainMapping:DomainMapping default {{domain_name}}
/// ```
class DomainMapping extends pulumi.CustomResource {
  /// Relative name of the domain serving the application. Example: example.com.
  late final pulumi.Output<String> domainName;

  /// Relative name of the object affected by this record. Only applicable for CNAME records. Example: 'www'.
  late final pulumi.Output<String> name;

  /// Whether the domain creation should override any existing mappings for this domain.
  /// By default, overrides are rejected.
  /// Default value is `STRICT`.
  /// Possible values are: `STRICT`, `OVERRIDE`.
  late final pulumi.Output<String?> overrideStrategy;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The resource records required to configure this domain mapping. These records must be added to the domain's DNS
  /// configuration in order to serve the application via this domain mapping.
  /// Structure is documented below.
  late final pulumi.Output<List<DomainMappingResourceRecord>> resourceRecords;

  /// SSL configuration for this domain. If unconfigured, this domain will not serve with SSL.
  /// Structure is documented below.
  late final pulumi.Output<DomainMappingSslSettings> sslSettings;

  DomainMapping(
    String name, {
    DomainMappingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:appengine/domainMapping:DomainMapping',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.domainName = registerOutput<String>('domainName');
    this.name = registerOutput<String>('name');
    this.overrideStrategy = registerOutput<String?>('overrideStrategy');
    this.project = registerOutput<String>('project');
    this.resourceRecords =
        registerOutput<List<DomainMappingResourceRecord>>('resourceRecords');
    this.sslSettings = registerOutput<DomainMappingSslSettings>('sslSettings');
  }
}
