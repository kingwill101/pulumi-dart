// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_header_configuration_response.dart';
import 'application_gateway_url_configuration_response.dart';

/// Set of actions in the Rewrite Rule in Application Gateway.
class ApplicationGatewayRewriteRuleActionSetResponse {
  /// Request Header Actions in the Action Set.
  final pulumi.Input<List<ApplicationGatewayHeaderConfigurationResponse>>? requestHeaderConfigurations;
  /// Response Header Actions in the Action Set.
  final pulumi.Input<List<ApplicationGatewayHeaderConfigurationResponse>>? responseHeaderConfigurations;
  /// Url Configuration Action in the Action Set.
  final pulumi.Input<ApplicationGatewayUrlConfigurationResponse>? urlConfiguration;

  /// Creates a new [ApplicationGatewayRewriteRuleActionSetResponse].
  /// [requestHeaderConfigurations] Request Header Actions in the Action Set.
  /// [responseHeaderConfigurations] Response Header Actions in the Action Set.
  /// [urlConfiguration] Url Configuration Action in the Action Set.
  ApplicationGatewayRewriteRuleActionSetResponse({
    this.requestHeaderConfigurations,
    this.responseHeaderConfigurations,
    this.urlConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestHeaderConfigurations': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayHeaderConfigurationResponse>, List<Map<String, dynamic>>>(requestHeaderConfigurations, (value) => pulumi.Input.encodeList<ApplicationGatewayHeaderConfigurationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'responseHeaderConfigurations': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayHeaderConfigurationResponse>, List<Map<String, dynamic>>>(responseHeaderConfigurations, (value) => pulumi.Input.encodeList<ApplicationGatewayHeaderConfigurationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'urlConfiguration': ?pulumi.Input.mapOptionalInputValue<ApplicationGatewayUrlConfigurationResponse, Map<String, dynamic>>(urlConfiguration, (value) => value.toMap()),
    };
  }

  factory ApplicationGatewayRewriteRuleActionSetResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayRewriteRuleActionSetResponse(
      requestHeaderConfigurations: map['requestHeaderConfigurations'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewayHeaderConfigurationResponse>(map['requestHeaderConfigurations'], (value) => ApplicationGatewayHeaderConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      responseHeaderConfigurations: map['responseHeaderConfigurations'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewayHeaderConfigurationResponse>(map['responseHeaderConfigurations'], (value) => ApplicationGatewayHeaderConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      urlConfiguration: map['urlConfiguration'] == null ? null : (ApplicationGatewayUrlConfigurationResponse.fromMap((map['urlConfiguration'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

