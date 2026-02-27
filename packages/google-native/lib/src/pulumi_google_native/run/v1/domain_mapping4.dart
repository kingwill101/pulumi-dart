import 'package:pulumi/pulumi.dart' hide Config;
import 'domain_mapping_args4.dart';
import 'domain_mapping_spec_response.dart';
import 'domain_mapping_status_response.dart';
import 'object_meta_response.dart';

/// Create a new domain mapping.
/// Auto-naming is currently not supported for this resource.
class DomainMapping4 extends CustomResource {
  /// The API version for this call such as "domains.cloudrun.com/v1".
  late final Output<String> apiVersion;

  /// Indicates that the server should validate the request and populate default values without persisting the request. Supported values: `all`
  late final Output<String?> dryRun;

  /// The kind of resource, in this case "DomainMapping".
  late final Output<String> kind;
  late final Output<String> location;

  /// Metadata associated with this BuildTemplate.
  late final Output<ObjectMetaResponse> metadata;
  late final Output<String> project;

  /// The spec for this DomainMapping.
  late final Output<DomainMappingSpecResponse> spec;

  /// The current status of the DomainMapping.
  late final Output<DomainMappingStatusResponse> status;

  DomainMapping4(
    String name, {
    DomainMappingArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:run/v1:DomainMapping',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.apiVersion = registerOutput<String>('apiVersion');
    this.dryRun = registerOutput<String?>('dryRun');
    this.kind = registerOutput<String>('kind');
    this.location = registerOutput<String>('location');
    this.metadata = registerOutput<ObjectMetaResponse>('metadata');
    this.project = registerOutput<String>('project');
    this.spec = registerOutput<DomainMappingSpecResponse>('spec');
    this.status = registerOutput<DomainMappingStatusResponse>('status');
  }
}
