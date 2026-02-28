// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_connector_provider_oauth_config.dart';

/// {@template pulumi_developerconnect_account_connector_account_connector_args_doc}
/// The set of arguments for AccountConnector.
/// {@endtemplate}
/// {@macro pulumi_developerconnect_account_connector_account_connector_args_doc}
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

  /// Creates a new [AccountConnectorArgs].
  /// [accountConnectorId] Required. The ID to use for the AccountConnector, which will become the final
  /// [annotations] Optional. Allows users to store small amounts of arbitrary data.
  /// [labels] Optional. Labels as key value pairs
  /// [location] The location of the resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [providerOauthConfig] ProviderOAuthConfig is the OAuth config for a provider.
  AccountConnectorArgs({
    required String accountConnectorId,
    Map<String, String>? annotations,
    Map<String, String>? labels,
    required String location,
    String? project,
    AccountConnectorProviderOauthConfig? providerOauthConfig,
  })  : accountConnectorId = pulumi.Input.asInput<String>(accountConnectorId),
        annotations =
            pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        providerOauthConfig =
            pulumi.Input.asOptionalInput<AccountConnectorProviderOauthConfig>(
                providerOauthConfig);

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
      accountConnectorId: map['accountConnectorId'] as String,
      annotations: map['annotations'] == null
          ? null
          : (map['annotations'] as Map).cast<String, String>(),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      providerOauthConfig: map['providerOauthConfig'] == null
          ? null
          : AccountConnectorProviderOauthConfig.fromMap(
              (map['providerOauthConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
