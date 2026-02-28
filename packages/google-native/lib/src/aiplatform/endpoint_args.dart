// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_encryption_spec.dart';
import 'google_cloud_aiplatform_v1_predict_request_response_logging_config.dart';

/// {@template pulumi_aiplatform_v1_endpoint_args_doc}
/// The set of arguments for Endpoint.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_endpoint_args_doc}
class EndpointArgs {
  /// The description of the Endpoint.
  final pulumi.Input<String>? description;
  /// The display name of the Endpoint. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final pulumi.Input<String> displayName;
  /// Deprecated: If true, expose the Endpoint via private service connect. Only one of the fields, network or enable_private_service_connect, can be set.
  final pulumi.Input<bool>? enablePrivateServiceConnect;
  /// Customer-managed encryption key spec for an Endpoint. If set, this Endpoint and all sub-resources of this Endpoint will be secured by this key.
  final pulumi.Input<GoogleCloudAiplatformV1EncryptionSpec>? encryptionSpec;
  /// Immutable. The ID to use for endpoint, which will become the final component of the endpoint resource name. If not provided, Vertex AI will generate a value for this ID. If the first character is a letter, this value may be up to 63 characters, and valid characters are `[a-z0-9-]`. The last character must be a letter or number. If the first character is a number, this value may be up to 9 characters, and valid characters are `[0-9]` with no leading zeros. When using HTTP/JSON, this field is populated based on a query string argument, such as `?endpoint_id=12345`. This is the fallback for fields that are not included in either the URI or the body.
  final pulumi.Input<String>? endpointId;
  /// Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final pulumi.Input<String>? etag;
  /// The labels with user-defined metadata to organize your Endpoints. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Optional. The full name of the Google Compute Engine [network](https://cloud.google.com//compute/docs/networks-and-firewalls#networks) to which the Endpoint should be peered. Private services access must already be configured for the network. If left unspecified, the Endpoint is not peered with any network. Only one of the fields, network or enable_private_service_connect, can be set. [Format](https://cloud.google.com/compute/docs/reference/rest/v1/networks/insert): `projects/{project}/global/networks/{network}`. Where `{project}` is a project number, as in `12345`, and `{network}` is network name.
  final pulumi.Input<String>? network;
  /// Configures the request-response logging for online prediction.
  final pulumi.Input<GoogleCloudAiplatformV1PredictRequestResponseLoggingConfig>? predictRequestResponseLoggingConfig;
  final pulumi.Input<String>? project;
  /// A map from a DeployedModel's ID to the percentage of this Endpoint's traffic that should be forwarded to that DeployedModel. If a DeployedModel's ID is not listed in this map, then it receives no traffic. The traffic percentage values must add up to 100, or map must be empty if the Endpoint is to not accept any traffic at a moment.
  final pulumi.Input<Map<String, String>>? trafficSplit;

  /// Creates a new [EndpointArgs].
  /// [description] The description of the Endpoint.
  /// [displayName] The display name of the Endpoint. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  /// [enablePrivateServiceConnect] Deprecated: If true, expose the Endpoint via private service connect. Only one of the fields, network or enable_private_service_connect, can be set.
  /// [encryptionSpec] Customer-managed encryption key spec for an Endpoint. If set, this Endpoint and all sub-resources of this Endpoint will be secured by this key.
  /// [endpointId] Immutable. The ID to use for endpoint, which will become the final component of the endpoint resource name. If not provided, Vertex AI will generate a value for this ID. If the first character is a letter, this value may be up to 63 characters, and valid characters are `[a-z0-9-]`. The last character must be a letter or number. If the first character is a number, this value may be up to 9 characters, and valid characters are `[0-9]` with no leading zeros. When using HTTP/JSON, this field is populated based on a query string argument, such as `?endpoint_id=12345`. This is the fallback for fields that are not included in either the URI or the body.
  /// [etag] Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  /// [labels] The labels with user-defined metadata to organize your Endpoints. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  /// [location] Optional.
  /// [network] Optional. The full name of the Google Compute Engine [network](https://cloud.google.com//compute/docs/networks-and-firewalls#networks) to which the Endpoint should be peered. Private services access must already be configured for the network. If left unspecified, the Endpoint is not peered with any network. Only one of the fields, network or enable_private_service_connect, can be set. [Format](https://cloud.google.com/compute/docs/reference/rest/v1/networks/insert): `projects/{project}/global/networks/{network}`. Where `{project}` is a project number, as in `12345`, and `{network}` is network name.
  /// [predictRequestResponseLoggingConfig] Configures the request-response logging for online prediction.
  /// [project] Optional.
  /// [trafficSplit] A map from a DeployedModel's ID to the percentage of this Endpoint's traffic that should be forwarded to that DeployedModel. If a DeployedModel's ID is not listed in this map, then it receives no traffic. The traffic percentage values must add up to 100, or map must be empty if the Endpoint is to not accept any traffic at a moment.
  EndpointArgs({
    String? description,
    required String displayName,
    bool? enablePrivateServiceConnect,
    GoogleCloudAiplatformV1EncryptionSpec? encryptionSpec,
    String? endpointId,
    String? etag,
    Map<String, String>? labels,
    String? location,
    String? network,
    GoogleCloudAiplatformV1PredictRequestResponseLoggingConfig? predictRequestResponseLoggingConfig,
    String? project,
    Map<String, String>? trafficSplit,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asInput<String>(displayName),
      enablePrivateServiceConnect = pulumi.Input.asOptionalInput<bool>(enablePrivateServiceConnect),
      encryptionSpec = pulumi.Input.asOptionalInput<GoogleCloudAiplatformV1EncryptionSpec>(encryptionSpec),
      endpointId = pulumi.Input.asOptionalInput<String>(endpointId),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      network = pulumi.Input.asOptionalInput<String>(network),
      predictRequestResponseLoggingConfig = pulumi.Input.asOptionalInput<GoogleCloudAiplatformV1PredictRequestResponseLoggingConfig>(predictRequestResponseLoggingConfig),
      project = pulumi.Input.asOptionalInput<String>(project),
      trafficSplit = pulumi.Input.asOptionalInput<Map<String, String>>(trafficSplit);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': displayName,
      'enablePrivateServiceConnect': ?enablePrivateServiceConnect,
      'encryptionSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1EncryptionSpec, Map<String, dynamic>>(encryptionSpec, (value) => value.toMap()),
      'endpointId': ?endpointId,
      'etag': ?etag,
      'labels': ?labels,
      'location': ?location,
      'network': ?network,
      'predictRequestResponseLoggingConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1PredictRequestResponseLoggingConfig, Map<String, dynamic>>(predictRequestResponseLoggingConfig, (value) => value.toMap()),
      'project': ?project,
      'trafficSplit': ?trafficSplit,
    };
  }

  factory EndpointArgs.fromMap(Map<String, dynamic> map) {
    return EndpointArgs(
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] as String,
      enablePrivateServiceConnect: map['enablePrivateServiceConnect'] == null ? null : map['enablePrivateServiceConnect'] as bool,
      encryptionSpec: map['encryptionSpec'] == null ? null : GoogleCloudAiplatformV1EncryptionSpec.fromMap((map['encryptionSpec'] as Map).cast<String, dynamic>()),
      endpointId: map['endpointId'] == null ? null : map['endpointId'] as String,
      etag: map['etag'] == null ? null : map['etag'] as String,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      network: map['network'] == null ? null : map['network'] as String,
      predictRequestResponseLoggingConfig: map['predictRequestResponseLoggingConfig'] == null ? null : GoogleCloudAiplatformV1PredictRequestResponseLoggingConfig.fromMap((map['predictRequestResponseLoggingConfig'] as Map).cast<String, dynamic>()),
      project: map['project'] == null ? null : map['project'] as String,
      trafficSplit: map['trafficSplit'] == null ? null : (map['trafficSplit'] as Map).cast<String, String>(),
    );
  }
}

