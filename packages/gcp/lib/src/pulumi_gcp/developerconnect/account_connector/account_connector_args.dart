// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../account_connector_provider_oauth_config/account_connector_provider_oauth_config.dart';

/// The set of arguments for AccountConnector.
class AccountConnectorArgs {
  /// Required. The ID to use for the AccountConnector, which will become the final
  /// component of the AccountConnector's resource name. Its format should adhere
  /// to https://google.aip.dev/122#resource-id-segments Names must be unique
  /// per-project per-location.
  final pulumi.Input<String> accountConnectorId;

  /// Optional. Allows users to store small amounts of arbitrary data.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;

  /// Optional. Labels as key value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The location of the resource.
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// ProviderOAuthConfig is the OAuth config for a provider.
  /// Structure is documented below.
  final pulumi.Input<AccountConnectorProviderOauthConfig>? providerOauthConfig;

  AccountConnectorArgs({
    required this.accountConnectorId,
    this.annotations,
    this.labels,
    required this.location,
    this.project,
    this.providerOauthConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accountConnectorId'] = accountConnectorId;
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final providerOauthConfigValue = providerOauthConfig;
    if (providerOauthConfigValue != null) {
      map['providerOauthConfig'] = pulumi.Input.mapOptionalInputValue<
              AccountConnectorProviderOauthConfig, Map<String, dynamic>>(
          providerOauthConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory AccountConnectorArgs.fromMap(Map<String, dynamic> map) {
    return AccountConnectorArgs(
      accountConnectorId:
          pulumi.Input.asInput<String>(map['accountConnectorId']),
      annotations:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['annotations']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      providerOauthConfig:
          pulumi.Input.asOptionalInput<AccountConnectorProviderOauthConfig>(
              map['providerOauthConfig']),
    );
  }
}
