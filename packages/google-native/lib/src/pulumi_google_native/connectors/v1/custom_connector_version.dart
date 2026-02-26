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
    this.authConfig = Output.createUnknown<AuthConfigResponse>();
    this.createTime = Output.createUnknown<String>();
    this.customConnectorId = Output.createUnknown<String>();
    this.customConnectorVersionId = Output.createUnknown<String>();
    this.destinationConfig = Output.createUnknown<DestinationConfigResponse>();
    this.enableBackendDestinationConfig = Output.createUnknown<bool>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.specLocation = Output.createUnknown<String>();
    this.type = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
