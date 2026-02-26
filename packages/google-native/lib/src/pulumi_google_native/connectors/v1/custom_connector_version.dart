import 'package:pulumi/pulumi.dart';
import 'auth_config_response.dart';
import 'custom_connector_version_args.dart';
import 'destination_config_response.dart';

/// Creates a new CustomConnectorVersion in a given project and location.
/// Auto-naming is currently not supported for this resource.
class CustomConnectorVersion extends CustomResource {
  /// Configuration for establishing the authentication to the connector destination.
  late final Output<AuthConfigResponse> authConfig;

  /// Created time.
  late final Output<String> createTime;
  late final Output<String> customConnectorId;

  /// Required. Identifier to assign to the CreateCustomConnectorVersion. Must be unique within scope of the parent resource.
  late final Output<String> customConnectorVersionId;

  /// Configuration of the customConnector's destination.
  late final Output<DestinationConfigResponse> destinationConfig;

  /// Optional. Whether to enable backend destination config. This is the backend server that the connector connects to.
  late final Output<bool> enableBackendDestinationConfig;

  /// Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  late final Output<Map<String, String>> labels;

  /// Identifier. Resource name of the Version. Format: projects/{project}/locations/{location}/customConnectors/{custom_connector}/customConnectorVersions/{custom_connector_version}
  late final Output<String> name;
  late final Output<String> project;

  /// Optional. Location of the custom connector spec.
  late final Output<String> specLocation;

  /// Type of the customConnector.
  late final Output<String> type;

  /// Updated time.
  late final Output<String> updateTime;

  CustomConnectorVersion(
    String name, {
    CustomConnectorVersionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:connectors/v1:CustomConnectorVersion',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.authConfig = registerOutput<AuthConfigResponse>('authConfig');
    this.createTime = registerOutput<String>('createTime');
    this.customConnectorId = registerOutput<String>('customConnectorId');
    this.customConnectorVersionId =
        registerOutput<String>('customConnectorVersionId');
    this.destinationConfig =
        registerOutput<DestinationConfigResponse>('destinationConfig');
    this.enableBackendDestinationConfig =
        registerOutput<bool>('enableBackendDestinationConfig');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.specLocation = registerOutput<String>('specLocation');
    this.type = registerOutput<String>('type');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
