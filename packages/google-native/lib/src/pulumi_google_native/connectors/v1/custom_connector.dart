import 'package:pulumi/pulumi.dart';
import 'custom_connector_args.dart';

/// Creates a new CustomConnector in a given project and location.
/// Auto-naming is currently not supported for this resource.
class CustomConnector extends CustomResource {
  /// Created time.
  late final Output<String> createTime;

  /// Required. Identifier to assign to the CreateCustomConnector. Must be unique within scope of the parent resource.
  late final Output<String> customConnectorId;

  /// Type of the custom connector.
  late final Output<String> customConnectorType;

  /// Optional. Description of the resource.
  late final Output<String> description;

  /// Optional. Display name.
  late final Output<String> displayName;

  /// Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  late final Output<Map<String, String>> labels;

  /// Launch stage.
  late final Output<String> launchStage;

  /// Optional. Logo of the resource.
  late final Output<String> logo;

  /// Identifier. Resource name of the CustomConnector. Format: projects/{project}/locations/{location}/customConnectors/{connector}
  late final Output<String> name;
  late final Output<String> project;

  /// Updated time.
  late final Output<String> updateTime;

  CustomConnector(
    String name, {
    CustomConnectorArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:connectors/v1:CustomConnector',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.customConnectorId = Output.createUnknown<String>();
    this.customConnectorType = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.launchStage = Output.createUnknown<String>();
    this.logo = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
