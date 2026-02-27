// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_aiplatform_v1_encryption_spec.dart';
import 'google_cloud_aiplatform_v1_predict_request_response_logging_config.dart';

/// The set of arguments for Endpoint.
class EndpointArgs {
  /// The description of the Endpoint.
  final Input<String>? description;

  /// The display name of the Endpoint. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final Input<String> displayName;

  /// Deprecated: If true, expose the Endpoint via private service connect. Only one of the fields, network or enable_private_service_connect, can be set.
  final Input<bool>? enablePrivateServiceConnect;

  /// Customer-managed encryption key spec for an Endpoint. If set, this Endpoint and all sub-resources of this Endpoint will be secured by this key.
  final Input<GoogleCloudAiplatformV1EncryptionSpec>? encryptionSpec;

  /// Immutable. The ID to use for endpoint, which will become the final component of the endpoint resource name. If not provided, Vertex AI will generate a value for this ID. If the first character is a letter, this value may be up to 63 characters, and valid characters are `[a-z0-9-]`. The last character must be a letter or number. If the first character is a number, this value may be up to 9 characters, and valid characters are `[0-9]` with no leading zeros. When using HTTP/JSON, this field is populated based on a query string argument, such as `?endpoint_id=12345`. This is the fallback for fields that are not included in either the URI or the body.
  final Input<String>? endpointId;

  /// Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final Input<String>? etag;

  /// The labels with user-defined metadata to organize your Endpoints. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// Optional. The full name of the Google Compute Engine [network](https://cloud.google.com//compute/docs/networks-and-firewalls#networks) to which the Endpoint should be peered. Private services access must already be configured for the network. If left unspecified, the Endpoint is not peered with any network. Only one of the fields, network or enable_private_service_connect, can be set. [Format](https://cloud.google.com/compute/docs/reference/rest/v1/networks/insert): `projects/{project}/global/networks/{network}`. Where `{project}` is a project number, as in `12345`, and `{network}` is network name.
  final Input<String>? network;

  /// Configures the request-response logging for online prediction.
  final Input<GoogleCloudAiplatformV1PredictRequestResponseLoggingConfig>?
      predictRequestResponseLoggingConfig;
  final Input<String>? project;

  /// A map from a DeployedModel's ID to the percentage of this Endpoint's traffic that should be forwarded to that DeployedModel. If a DeployedModel's ID is not listed in this map, then it receives no traffic. The traffic percentage values must add up to 100, or map must be empty if the Endpoint is to not accept any traffic at a moment.
  final Input<Map<String, String>>? trafficSplit;

  EndpointArgs({
    this.description,
    required this.displayName,
    this.enablePrivateServiceConnect,
    this.encryptionSpec,
    this.endpointId,
    this.etag,
    this.labels,
    this.location,
    this.network,
    this.predictRequestResponseLoggingConfig,
    this.project,
    this.trafficSplit,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['displayName'] = displayName;
    final enablePrivateServiceConnectValue = enablePrivateServiceConnect;
    if (enablePrivateServiceConnectValue != null) {
      map['enablePrivateServiceConnect'] = enablePrivateServiceConnectValue;
    }
    final encryptionSpecValue = encryptionSpec;
    if (encryptionSpecValue != null) {
      map['encryptionSpec'] = Input.mapOptionalInputValue<
          GoogleCloudAiplatformV1EncryptionSpec,
          Map<String, dynamic>>(encryptionSpecValue, (value) => value.toMap());
    }
    final endpointIdValue = endpointId;
    if (endpointIdValue != null) {
      map['endpointId'] = endpointIdValue;
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue;
    }
    final predictRequestResponseLoggingConfigValue =
        predictRequestResponseLoggingConfig;
    if (predictRequestResponseLoggingConfigValue != null) {
      map['predictRequestResponseLoggingConfig'] = Input.mapOptionalInputValue<
              GoogleCloudAiplatformV1PredictRequestResponseLoggingConfig,
              Map<String, dynamic>>(
          predictRequestResponseLoggingConfigValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final trafficSplitValue = trafficSplit;
    if (trafficSplitValue != null) {
      map['trafficSplit'] = trafficSplitValue;
    }
    return map;
  }

  factory EndpointArgs.fromMap(Map<String, dynamic> map) {
    return EndpointArgs(
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asInput<String>(map['displayName']),
      enablePrivateServiceConnect:
          Input.asOptionalInput<bool>(map['enablePrivateServiceConnect']),
      encryptionSpec:
          Input.asOptionalInput<GoogleCloudAiplatformV1EncryptionSpec>(
              map['encryptionSpec']),
      endpointId: Input.asOptionalInput<String>(map['endpointId']),
      etag: Input.asOptionalInput<String>(map['etag']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      network: Input.asOptionalInput<String>(map['network']),
      predictRequestResponseLoggingConfig: Input.asOptionalInput<
              GoogleCloudAiplatformV1PredictRequestResponseLoggingConfig>(
          map['predictRequestResponseLoggingConfig']),
      project: Input.asOptionalInput<String>(map['project']),
      trafficSplit:
          Input.asOptionalInput<Map<String, String>>(map['trafficSplit']),
    );
  }
}
