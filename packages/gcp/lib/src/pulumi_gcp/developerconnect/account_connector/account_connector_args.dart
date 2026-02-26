// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../account_connector_provider_oauth_config/account_connector_provider_oauth_config.dart';

/// The set of arguments for AccountConnector.
class AccountConnectorArgs {
  /// Required. The ID to use for the AccountConnector, which will become the final
  /// component of the AccountConnector's resource name. Its format should adhere
  /// to https://google.aip.dev/122#resource-id-segments Names must be unique
  /// per-project per-location.
  final Input<String> accountConnectorId;

  /// Optional. Allows users to store small amounts of arbitrary data.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveAnnotations`" pulumi-lang-dotnet="`EffectiveAnnotations`" pulumi-lang-go="`effectiveAnnotations`" pulumi-lang-python="`effective_annotations`" pulumi-lang-yaml="`effectiveAnnotations`" pulumi-lang-java="`effectiveAnnotations`">`effective_annotations`</span> for all of the annotations present on the resource.
  final Input<Map<String, String>>? annotations;

  /// Optional. Labels as key value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The location of the resource.
  final Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// ProviderOAuthConfig is the OAuth config for a provider.
  /// Structure is documented below.
  final Input<AccountConnectorProviderOauthConfig>? providerOauthConfig;

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
      map['providerOauthConfig'] = Input.mapOptionalInputValue<
              AccountConnectorProviderOauthConfig, Map<String, dynamic>>(
          providerOauthConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory AccountConnectorArgs.fromMap(Map<String, dynamic> map) {
    return AccountConnectorArgs(
      accountConnectorId: Input.asInput<String>(map['accountConnectorId']),
      annotations:
          Input.asOptionalInput<Map<String, String>>(map['annotations']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      providerOauthConfig:
          Input.asOptionalInput<AccountConnectorProviderOauthConfig>(
              map['providerOauthConfig']),
    );
  }
}
