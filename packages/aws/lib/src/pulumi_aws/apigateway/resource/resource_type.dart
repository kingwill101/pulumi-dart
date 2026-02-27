import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_args.dart';

/// Provides an API Gateway Resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.apigateway.Resource` using `REST-API-ID/RESOURCE-ID`. For example:
///
/// ```sh
/// $ pulumi import aws:apigateway/resource:Resource example 12345abcde/67890fghij
/// ```
class ResourceType extends pulumi.CustomResource {
  /// ID of the parent API resource
  late final pulumi.Output<String> parentId;

  /// Complete path for this API resource, including all parent paths.
  late final pulumi.Output<String> path;

  /// Last path segment of this API resource.
  late final pulumi.Output<String> pathPart;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// ID of the associated REST API
  late final pulumi.Output<String> restApi;

  ResourceType(
    String name, {
    ResourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apigateway/resource:Resource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.parentId = registerOutput<String>('parentId');
    this.path = registerOutput<String>('path');
    this.pathPart = registerOutput<String>('pathPart');
    this.region = registerOutput<String>('region');
    this.restApi = registerOutput<String>('restApi');
  }
}
