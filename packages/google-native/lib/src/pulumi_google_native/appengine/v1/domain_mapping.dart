import 'package:pulumi/pulumi.dart' hide Config;
import 'domain_mapping_args.dart';
import 'resource_record_response.dart';
import 'ssl_settings_response.dart';

/// Maps a domain to an application. A user must be authorized to administer a domain in order to map it to an application. For a list of available authorized domains, see AuthorizedDomains.ListAuthorizedDomains.
/// Auto-naming is currently not supported for this resource.
class DomainMapping extends CustomResource {
  late final Output<String> appId;

  /// Full path to the DomainMapping resource in the API. Example: apps/myapp/domainMapping/example.com.
  late final Output<String> name;

  /// Whether the domain creation should override any existing mappings for this domain. By default, overrides are rejected.
  late final Output<String?> overrideStrategy;

  /// The resource records required to configure this domain mapping. These records must be added to the domain's DNS configuration in order to serve the application via this domain mapping.
  late final Output<List<ResourceRecordResponse>> resourceRecords;

  /// SSL configuration for this domain. If unconfigured, this domain will not serve with SSL.
  late final Output<SslSettingsResponse> sslSettings;

  DomainMapping(
    String name, {
    DomainMappingArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:appengine/v1:DomainMapping',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.appId = registerOutput<String>('appId');
    this.name = registerOutput<String>('name');
    this.overrideStrategy = registerOutput<String?>('overrideStrategy');
    this.resourceRecords =
        registerOutput<List<ResourceRecordResponse>>('resourceRecords');
    this.sslSettings = registerOutput<SslSettingsResponse>('sslSettings');
  }
}
