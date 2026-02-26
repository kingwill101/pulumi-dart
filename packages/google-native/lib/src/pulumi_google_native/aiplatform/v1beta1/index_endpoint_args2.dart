// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_aiplatform_v1beta1_encryption_spec.dart';
import 'google_cloud_aiplatform_v1beta1_private_service_connect_config.dart';

/// The set of arguments for IndexEndpoint.
class IndexEndpointArgs2 {
  /// The description of the IndexEndpoint.
  final Input<String>? description;

  /// The display name of the IndexEndpoint. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final Input<String> displayName;

  /// Optional. Deprecated: If true, expose the IndexEndpoint via private service connect. Only one of the fields, network or enable_private_service_connect, can be set.
  final Input<bool>? enablePrivateServiceConnect;

  /// Immutable. Customer-managed encryption key spec for an IndexEndpoint. If set, this IndexEndpoint and all sub-resources of this IndexEndpoint will be secured by this key.
  final Input<GoogleCloudAiplatformV1beta1EncryptionSpec>? encryptionSpec;

  /// Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final Input<String>? etag;

  /// The labels with user-defined metadata to organize your IndexEndpoints. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// Optional. The full name of the Google Compute Engine [network](https://cloud.google.com/compute/docs/networks-and-firewalls#networks) to which the IndexEndpoint should be peered. Private services access must already be configured for the network. If left unspecified, the Endpoint is not peered with any network. network and private_service_connect_config are mutually exclusive. [Format](https://cloud.google.com/compute/docs/reference/rest/v1/networks/insert): `projects/{project}/global/networks/{network}`. Where {project} is a project number, as in '12345', and {network} is network name.
  final Input<String>? network;

  /// Optional. Configuration for private service connect. network and private_service_connect_config are mutually exclusive.
  final Input<GoogleCloudAiplatformV1beta1PrivateServiceConnectConfig>?
      privateServiceConnectConfig;
  final Input<String>? project;

  /// Optional. If true, the deployed index will be accessible through public endpoint.
  final Input<bool>? publicEndpointEnabled;

  IndexEndpointArgs2({
    this.description,
    required this.displayName,
    this.enablePrivateServiceConnect,
    this.encryptionSpec,
    this.etag,
    this.labels,
    this.location,
    this.network,
    this.privateServiceConnectConfig,
    this.project,
    this.publicEndpointEnabled,
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
          GoogleCloudAiplatformV1beta1EncryptionSpec,
          Map<String, dynamic>>(encryptionSpecValue, (value) => value.toMap());
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
    final privateServiceConnectConfigValue = privateServiceConnectConfig;
    if (privateServiceConnectConfigValue != null) {
      map['privateServiceConnectConfig'] = Input.mapOptionalInputValue<
              GoogleCloudAiplatformV1beta1PrivateServiceConnectConfig,
              Map<String, dynamic>>(
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
    return map;
  }

  factory IndexEndpointArgs2.fromMap(Map<String, dynamic> map) {
    return IndexEndpointArgs2(
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asInput<String>(map['displayName']),
      enablePrivateServiceConnect:
          Input.asOptionalInput<bool>(map['enablePrivateServiceConnect']),
      encryptionSpec:
          Input.asOptionalInput<GoogleCloudAiplatformV1beta1EncryptionSpec>(
              map['encryptionSpec']),
      etag: Input.asOptionalInput<String>(map['etag']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      network: Input.asOptionalInput<String>(map['network']),
      privateServiceConnectConfig: Input.asOptionalInput<
              GoogleCloudAiplatformV1beta1PrivateServiceConnectConfig>(
          map['privateServiceConnectConfig']),
      project: Input.asOptionalInput<String>(map['project']),
      publicEndpointEnabled:
          Input.asOptionalInput<bool>(map['publicEndpointEnabled']),
    );
  }
}
