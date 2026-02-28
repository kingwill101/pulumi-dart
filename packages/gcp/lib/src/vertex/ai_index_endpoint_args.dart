// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_index_endpoint_encryption_spec.dart';
import 'ai_index_endpoint_private_service_connect_config.dart';

/// {@template pulumi_vertex_ai_index_endpoint_ai_index_endpoint_args_doc}
/// The set of arguments for AiIndexEndpoint.
/// {@endtemplate}
/// {@macro pulumi_vertex_ai_index_endpoint_ai_index_endpoint_args_doc}
class AiIndexEndpointArgs {
  /// The description of the Index.
  final pulumi.Input<String>? description;

  /// The display name of the Index. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final pulumi.Input<String> displayName;

  /// Customer-managed encryption key spec for an IndexEndpoint. If set, this IndexEndpoint and all sub-resources of this IndexEndpoint will be secured by this key.
  /// Structure is documented below.
  final pulumi.Input<AiIndexEndpointEncryptionSpec>? encryptionSpec;

  /// The labels with user-defined metadata to organize your Indexes.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The full name of the Google Compute Engine [network](https://cloud.google.com//compute/docs/networks-and-firewalls#networks) to which the index endpoint should be peered.
  /// Private services access must already be configured for the network. If left unspecified, the index endpoint is not peered with any network.
  /// [Format](https://cloud.google.com/compute/docs/reference/rest/v1/networks/insert): `projects/{project}/global/networks/{network}`.
  /// Where `{project}` is a project number, as in `12345`, and `{network}` is network name.
  final pulumi.Input<String>? network;

  /// Optional. Configuration for private service connect. `network` and `privateServiceConnectConfig` are mutually exclusive.
  /// Structure is documented below.
  final pulumi.Input<AiIndexEndpointPrivateServiceConnectConfig>?
      privateServiceConnectConfig;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// If true, the deployed index will be accessible through public endpoint.
  final pulumi.Input<bool>? publicEndpointEnabled;

  /// The region of the index endpoint. eg us-central1
  final pulumi.Input<String>? region;

  /// Creates a new [AiIndexEndpointArgs].
  /// [description] The description of the Index.
  /// [displayName] The display name of the Index. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  /// [encryptionSpec] Customer-managed encryption key spec for an IndexEndpoint. If set, this IndexEndpoint and all sub-resources of this IndexEndpoint will be secured by this key.
  /// [labels] The labels with user-defined metadata to organize your Indexes.
  /// [network] The full name of the Google Compute Engine [network](https://cloud.google.com//compute/docs/networks-and-firewalls#networks) to which the index endpoint should be peered.
  /// [privateServiceConnectConfig] Optional. Configuration for private service connect. `network` and `privateServiceConnectConfig` are mutually exclusive.
  /// [project] The ID of the project in which the resource belongs.
  /// [publicEndpointEnabled] If true, the deployed index will be accessible through public endpoint.
  /// [region] The region of the index endpoint. eg us-central1
  AiIndexEndpointArgs({
    String? description,
    required String displayName,
    AiIndexEndpointEncryptionSpec? encryptionSpec,
    Map<String, String>? labels,
    String? network,
    AiIndexEndpointPrivateServiceConnectConfig? privateServiceConnectConfig,
    String? project,
    bool? publicEndpointEnabled,
    String? region,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        displayName = pulumi.Input.asInput<String>(displayName),
        encryptionSpec =
            pulumi.Input.asOptionalInput<AiIndexEndpointEncryptionSpec>(
                encryptionSpec),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        network = pulumi.Input.asOptionalInput<String>(network),
        privateServiceConnectConfig = pulumi.Input.asOptionalInput<
                AiIndexEndpointPrivateServiceConnectConfig>(
            privateServiceConnectConfig),
        project = pulumi.Input.asOptionalInput<String>(project),
        publicEndpointEnabled =
            pulumi.Input.asOptionalInput<bool>(publicEndpointEnabled),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['displayName'] = displayName;
    final encryptionSpecValue = encryptionSpec;
    if (encryptionSpecValue != null) {
      map['encryptionSpec'] = pulumi.Input.mapOptionalInputValue<
          AiIndexEndpointEncryptionSpec,
          Map<String, dynamic>>(encryptionSpecValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue;
    }
    final privateServiceConnectConfigValue = privateServiceConnectConfig;
    if (privateServiceConnectConfigValue != null) {
      map['privateServiceConnectConfig'] = pulumi.Input.mapOptionalInputValue<
              AiIndexEndpointPrivateServiceConnectConfig, Map<String, dynamic>>(
          privateServiceConnectConfigValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final publicEndpointEnabledValue = publicEndpointEnabled;
    if (publicEndpointEnabledValue != null) {
      map['publicEndpointEnabled'] = publicEndpointEnabledValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory AiIndexEndpointArgs.fromMap(Map<String, dynamic> map) {
    return AiIndexEndpointArgs(
      description:
          map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] as String,
      encryptionSpec: map['encryptionSpec'] == null
          ? null
          : AiIndexEndpointEncryptionSpec.fromMap(
              (map['encryptionSpec'] as Map).cast<String, dynamic>()),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      network: map['network'] == null ? null : map['network'] as String,
      privateServiceConnectConfig: map['privateServiceConnectConfig'] == null
          ? null
          : AiIndexEndpointPrivateServiceConnectConfig.fromMap(
              (map['privateServiceConnectConfig'] as Map)
                  .cast<String, dynamic>()),
      project: map['project'] == null ? null : map['project'] as String,
      publicEndpointEnabled: map['publicEndpointEnabled'] == null
          ? null
          : map['publicEndpointEnabled'] as bool,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
