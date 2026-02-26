// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../ai_endpoint_encryption_spec/ai_endpoint_encryption_spec.dart';
import '../ai_endpoint_predict_request_response_logging_config/ai_endpoint_predict_request_response_logging_config.dart';
import '../ai_endpoint_private_service_connect_config/ai_endpoint_private_service_connect_config.dart';

/// The set of arguments for AiEndpoint.
class AiEndpointArgs {
  /// If true, the endpoint will be exposed through a dedicated DNS [Endpoint.dedicated_endpoint_dns]. Your request to the dedicated DNS will be isolated from other users' traffic and will have better performance and reliability. Note: Once you enabled dedicated endpoint, you won't be able to send request to the shared DNS {region}-aiplatform.googleapis.com. The limitation will be removed soon.
  final Input<bool>? dedicatedEndpointEnabled;

  /// The description of the Endpoint.
  final Input<String>? description;

  /// Required. The display name of the Endpoint. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final Input<String> displayName;

  /// Customer-managed encryption key spec for an Endpoint. If set, this Endpoint and all sub-resources of this Endpoint will be secured by this key.
  /// Structure is documented below.
  final Input<AiEndpointEncryptionSpec>? encryptionSpec;

  /// The labels with user-defined metadata to organize your Endpoints. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The location for the resource
  final Input<String> location;

  /// The resource name of the Endpoint. The name must be numeric with no leading zeros and can be at most 10 digits.
  final Input<String>? name;

  /// The full name of the Google Compute Engine [network](https://cloud.google.com//compute/docs/networks-and-firewalls#networks) to which the Endpoint should be peered. Private services access must already be configured for the network. If left unspecified, the Endpoint is not peered with any network. Only one of the fields, network or enable_private_service_connect, can be set. [Format](https://cloud.google.com/compute/docs/reference/rest/v1/networks/insert): `projects/{project}/global/networks/{network}`. Where `{project}` is a project number, as in <span pulumi-lang-nodejs="`12345`" pulumi-lang-dotnet="`12345`" pulumi-lang-go="`12345`" pulumi-lang-python="`12345`" pulumi-lang-yaml="`12345`" pulumi-lang-java="`12345`">`12345`</span>, and `{network}` is network name. Only one of the fields, <span pulumi-lang-nodejs="`network`" pulumi-lang-dotnet="`Network`" pulumi-lang-go="`network`" pulumi-lang-python="`network`" pulumi-lang-yaml="`network`" pulumi-lang-java="`network`">`network`</span> or `privateServiceConnectConfig`, can be set.
  final Input<String>? network;

  /// Configures the request-response logging for online prediction.
  /// Structure is documented below.
  final Input<AiEndpointPredictRequestResponseLoggingConfig>?
      predictRequestResponseLoggingConfig;

  /// Configuration for private service connect. <span pulumi-lang-nodejs="`network`" pulumi-lang-dotnet="`Network`" pulumi-lang-go="`network`" pulumi-lang-python="`network`" pulumi-lang-yaml="`network`" pulumi-lang-java="`network`">`network`</span> and `privateServiceConnectConfig` are mutually exclusive.
  /// Structure is documented below.
  final Input<AiEndpointPrivateServiceConnectConfig>?
      privateServiceConnectConfig;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The region for the resource
  final Input<String>? region;

  /// A map from a DeployedModel's id to the percentage of this Endpoint's traffic that should be forwarded to that DeployedModel.
  /// If a DeployedModel's id is not listed in this map, then it receives no traffic.
  /// The traffic percentage values must add up to 100, or map must be empty if the Endpoint is to not accept any traffic at a moment. See
  /// the `deployModel` [example](https://cloud.google.com/vertex-ai/docs/general/deployment#deploy_a_model_to_an_endpoint) and
  /// [documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1beta1/projects.locations.endpoints/deployModel) for more information.
  /// > **Note:** To set the map to empty, set `"{}"`, apply, and then remove the field from your config.
  final Input<String>? trafficSplit;

  AiEndpointArgs({
    this.dedicatedEndpointEnabled,
    this.description,
    required this.displayName,
    this.encryptionSpec,
    this.labels,
    required this.location,
    this.name,
    this.network,
    this.predictRequestResponseLoggingConfig,
    this.privateServiceConnectConfig,
    this.project,
    this.region,
    this.trafficSplit,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dedicatedEndpointEnabledValue = dedicatedEndpointEnabled;
    if (dedicatedEndpointEnabledValue != null) {
      map['dedicatedEndpointEnabled'] = dedicatedEndpointEnabledValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['displayName'] = displayName;
    final encryptionSpecValue = encryptionSpec;
    if (encryptionSpecValue != null) {
      map['encryptionSpec'] = Input.mapOptionalInputValue<
          AiEndpointEncryptionSpec,
          Map<String, dynamic>>(encryptionSpecValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue;
    }
    final predictRequestResponseLoggingConfigValue =
        predictRequestResponseLoggingConfig;
    if (predictRequestResponseLoggingConfigValue != null) {
      map['predictRequestResponseLoggingConfig'] = Input.mapOptionalInputValue<
              AiEndpointPredictRequestResponseLoggingConfig,
              Map<String, dynamic>>(
          predictRequestResponseLoggingConfigValue, (value) => value.toMap());
    }
    final privateServiceConnectConfigValue = privateServiceConnectConfig;
    if (privateServiceConnectConfigValue != null) {
      map['privateServiceConnectConfig'] = Input.mapOptionalInputValue<
              AiEndpointPrivateServiceConnectConfig, Map<String, dynamic>>(
          privateServiceConnectConfigValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final trafficSplitValue = trafficSplit;
    if (trafficSplitValue != null) {
      map['trafficSplit'] = trafficSplitValue;
    }
    return map;
  }

  factory AiEndpointArgs.fromMap(Map<String, dynamic> map) {
    return AiEndpointArgs(
      dedicatedEndpointEnabled:
          Input.asOptionalInput<bool>(map['dedicatedEndpointEnabled']),
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asInput<String>(map['displayName']),
      encryptionSpec: Input.asOptionalInput<AiEndpointEncryptionSpec>(
          map['encryptionSpec']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      network: Input.asOptionalInput<String>(map['network']),
      predictRequestResponseLoggingConfig:
          Input.asOptionalInput<AiEndpointPredictRequestResponseLoggingConfig>(
              map['predictRequestResponseLoggingConfig']),
      privateServiceConnectConfig:
          Input.asOptionalInput<AiEndpointPrivateServiceConnectConfig>(
              map['privateServiceConnectConfig']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
      trafficSplit: Input.asOptionalInput<String>(map['trafficSplit']),
    );
  }
}
