// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../ai_index_endpoint_encryption_spec/ai_index_endpoint_encryption_spec.dart';
import '../ai_index_endpoint_private_service_connect_config/ai_index_endpoint_private_service_connect_config.dart';

/// The set of arguments for AiIndexEndpoint.
class AiIndexEndpointArgs {
  /// The description of the Index.
  final Input<String>? description;

  /// The display name of the Index. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final Input<String> displayName;

  /// Customer-managed encryption key spec for an IndexEndpoint. If set, this IndexEndpoint and all sub-resources of this IndexEndpoint will be secured by this key.
  /// Structure is documented below.
  final Input<AiIndexEndpointEncryptionSpec>? encryptionSpec;

  /// The labels with user-defined metadata to organize your Indexes.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The full name of the Google Compute Engine [network](https://cloud.google.com//compute/docs/networks-and-firewalls#networks) to which the index endpoint should be peered.
  /// Private services access must already be configured for the network. If left unspecified, the index endpoint is not peered with any network.
  /// [Format](https://cloud.google.com/compute/docs/reference/rest/v1/networks/insert): `projects/{project}/global/networks/{network}`.
  /// Where `{project}` is a project number, as in <span pulumi-lang-nodejs="`12345`" pulumi-lang-dotnet="`12345`" pulumi-lang-go="`12345`" pulumi-lang-python="`12345`" pulumi-lang-yaml="`12345`" pulumi-lang-java="`12345`">`12345`</span>, and `{network}` is network name.
  final Input<String>? network;

  /// Optional. Configuration for private service connect. <span pulumi-lang-nodejs="`network`" pulumi-lang-dotnet="`Network`" pulumi-lang-go="`network`" pulumi-lang-python="`network`" pulumi-lang-yaml="`network`" pulumi-lang-java="`network`">`network`</span> and `privateServiceConnectConfig` are mutually exclusive.
  /// Structure is documented below.
  final Input<AiIndexEndpointPrivateServiceConnectConfig>?
      privateServiceConnectConfig;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// If true, the deployed index will be accessible through public endpoint.
  final Input<bool>? publicEndpointEnabled;

  /// The region of the index endpoint. eg us-central1
  final Input<String>? region;

  AiIndexEndpointArgs({
    this.description,
    required this.displayName,
    this.encryptionSpec,
    this.labels,
    this.network,
    this.privateServiceConnectConfig,
    this.project,
    this.publicEndpointEnabled,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['displayName'] = displayName;
    final encryptionSpecValue = encryptionSpec;
    if (encryptionSpecValue != null) {
      map['encryptionSpec'] = Input.mapOptionalInputValue<
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
      map['privateServiceConnectConfig'] = Input.mapOptionalInputValue<
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
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asInput<String>(map['displayName']),
      encryptionSpec: Input.asOptionalInput<AiIndexEndpointEncryptionSpec>(
          map['encryptionSpec']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      network: Input.asOptionalInput<String>(map['network']),
      privateServiceConnectConfig:
          Input.asOptionalInput<AiIndexEndpointPrivateServiceConnectConfig>(
              map['privateServiceConnectConfig']),
      project: Input.asOptionalInput<String>(map['project']),
      publicEndpointEnabled:
          Input.asOptionalInput<bool>(map['publicEndpointEnabled']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
