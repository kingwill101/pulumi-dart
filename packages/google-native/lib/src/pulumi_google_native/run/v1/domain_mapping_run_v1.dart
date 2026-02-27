import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_mapping_run_v1_args.dart';
import 'domain_mapping_spec_response.dart';
import 'domain_mapping_status_response.dart';
import 'object_meta_response.dart';

/// Create a new domain mapping.
/// Auto-naming is currently not supported for this resource.
class DomainMappingRunV1 extends pulumi.CustomResource {
  /// The API version for this call such as "domains.cloudrun.com/v1".
  late final pulumi.Output<String> apiVersion;

  /// Indicates that the server should validate the request and populate default values without persisting the request. Supported values: `all`
  late final pulumi.Output<String?> dryRun;

  /// The kind of resource, in this case "DomainMapping".
  late final pulumi.Output<String> kind;
  late final pulumi.Output<String> location;

  /// Metadata associated with this BuildTemplate.
  late final pulumi.Output<ObjectMetaResponse> metadata;
  late final pulumi.Output<String> project;

  /// The spec for this DomainMapping.
  late final pulumi.Output<DomainMappingSpecResponse> spec;

  /// The current status of the DomainMapping.
  late final pulumi.Output<DomainMappingStatusResponse> status;

  DomainMappingRunV1(
    String name, {
    DomainMappingRunV1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:run/v1:DomainMapping',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
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
