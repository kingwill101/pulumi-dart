import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_mapping_appengine_v1alpha_args.dart';
import 'resource_record_response_appengine_v1alpha.dart';
import 'ssl_settings_response_appengine_v1alpha.dart';

/// Maps a domain to an application. A user must be authorized to administer a domain in order to map it to an application. For a list of available authorized domains, see AuthorizedDomains.ListAuthorizedDomains.
/// Auto-naming is currently not supported for this resource.
class DomainMappingAppengineV1alpha extends pulumi.CustomResource {
  late final pulumi.Output<String> appId;

  /// Full path to the DomainMapping resource in the API. Example: apps/myapp/domainMapping/example.com.
  late final pulumi.Output<String> name;

  /// Whether a managed certificate should be provided by App Engine. If true, a certificate ID must be manaually set in the DomainMapping resource to configure SSL for this domain. If false, a managed certificate will be provisioned and a certificate ID will be automatically populated.
  late final pulumi.Output<bool?> noManagedCertificate;

  /// Whether the domain creation should override any existing mappings for this domain. By default, overrides are rejected.
  late final pulumi.Output<String?> overrideStrategy;

  /// The resource records required to configure this domain mapping. These records must be added to the domain's DNS configuration in order to serve the application via this domain mapping.
  late final pulumi.Output<List<ResourceRecordResponseAppengineV1alpha>>
      resourceRecords;

  /// SSL configuration for this domain. If unconfigured, this domain will not serve with SSL.
  late final pulumi.Output<SslSettingsResponseAppengineV1alpha> sslSettings;

  /// Creates a new [DomainMappingAppengineV1alpha].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DomainMappingAppengineV1alpha]. {@macro pulumi_appengine_v1alpha_domain_mapping_appengine_v1alpha_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DomainMappingAppengineV1alpha(
    String name, {
    DomainMappingAppengineV1alphaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:appengine/v1alpha:DomainMapping',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appId = registerOutput<String>('appId');
    this.name = registerOutput<String>('name');
    this.noManagedCertificate = registerOutput<bool?>('noManagedCertificate');
    this.overrideStrategy = registerOutput<String?>('overrideStrategy');
    this.resourceRecords =
        registerOutput<List<ResourceRecordResponseAppengineV1alpha>>(
            'resourceRecords');
    this.sslSettings =
        registerOutput<SslSettingsResponseAppengineV1alpha>('sslSettings');
  }
}
