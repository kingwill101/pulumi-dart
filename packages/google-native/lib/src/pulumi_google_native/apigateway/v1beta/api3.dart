import 'package:pulumi/pulumi.dart';
import 'api_args2.dart';

/// Creates a new Api in a given project and location.
/// Auto-naming is currently not supported for this resource.
class Api3 extends CustomResource {
  /// Required. Identifier to assign to the API. Must be unique within scope of the parent resource.
  late final Output<String> apiId;

  /// Created time.
  late final Output<String> createTime;

  /// Optional. Display name.
  late final Output<String> displayName;

  /// Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// Optional. Immutable. The name of a Google Managed Service ( https://cloud.google.com/service-infrastructure/docs/glossary#managed). If not specified, a new Service will automatically be created in the same project as this API.
  late final Output<String> managedService;

  /// Resource name of the API. Format: projects/{project}/locations/global/apis/{api}
  late final Output<String> name;
  late final Output<String> project;

  /// State of the API.
  late final Output<String> state;

  /// Updated time.
  late final Output<String> updateTime;

  Api3(
    String name, {
    ApiArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:apigateway/v1beta:Api',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.apiId = Output.createUnknown<String>();
    this.createTime = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.location = Output.createUnknown<String>();
    this.managedService = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
