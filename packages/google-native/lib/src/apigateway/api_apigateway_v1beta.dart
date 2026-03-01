import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_apigateway_v1beta_args.dart';

/// Creates a new Api in a given project and location.
/// Auto-naming is currently not supported for this resource.
class ApiApigatewayV1beta extends pulumi.CustomResource {
  /// Required. Identifier to assign to the API. Must be unique within scope of the parent resource.
  late final pulumi.Output<String> apiId;

  /// Created time.
  late final pulumi.Output<String> createTime;

  /// Optional. Display name.
  late final pulumi.Output<String> displayName;

  /// Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// Optional. Immutable. The name of a Google Managed Service ( https://cloud.google.com/service-infrastructure/docs/glossary#managed). If not specified, a new Service will automatically be created in the same project as this API.
  late final pulumi.Output<String> managedService;

  /// Resource name of the API. Format: projects/{project}/locations/global/apis/{api}
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// State of the API.
  late final pulumi.Output<String> state;

  /// Updated time.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [ApiApigatewayV1beta].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApiApigatewayV1beta]. {@macro pulumi_apigateway_v1beta_api_apigateway_v1beta_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApiApigatewayV1beta(
    String name, {
    ApiApigatewayV1betaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:apigateway/v1beta:Api',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.apiId = registerOutput<String>('apiId');
    this.createTime = registerOutput<String>('createTime');
    this.displayName = registerOutput<String>('displayName');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.managedService = registerOutput<String>('managedService');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.state = registerOutput<String>('state');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
