// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_header_configuration.dart';
import 'application_gateway_url_configuration.dart';

/// Set of actions in the Rewrite Rule in Application Gateway.
class ApplicationGatewayRewriteRuleActionSet {
  /// Request Header Actions in the Action Set.
  final List<ApplicationGatewayHeaderConfiguration>? requestHeaderConfigurations;
  /// Response Header Actions in the Action Set.
  final List<ApplicationGatewayHeaderConfiguration>? responseHeaderConfigurations;
  /// Url Configuration Action in the Action Set.
  final ApplicationGatewayUrlConfiguration? urlConfiguration;

  /// Creates a new [ApplicationGatewayRewriteRuleActionSet].
  /// [requestHeaderConfigurations] Request Header Actions in the Action Set.
  /// [responseHeaderConfigurations] Response Header Actions in the Action Set.
  /// [urlConfiguration] Url Configuration Action in the Action Set.
  ApplicationGatewayRewriteRuleActionSet({
    this.requestHeaderConfigurations,
    this.responseHeaderConfigurations,
    this.urlConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestHeaderConfigurations': ?requestHeaderConfigurations == null ? null : pulumi.Input.encodeList<ApplicationGatewayHeaderConfiguration, Map<String, dynamic>>(requestHeaderConfigurations!, (value) => value.toMap()),
      'responseHeaderConfigurations': ?responseHeaderConfigurations == null ? null : pulumi.Input.encodeList<ApplicationGatewayHeaderConfiguration, Map<String, dynamic>>(responseHeaderConfigurations!, (value) => value.toMap()),
      'urlConfiguration': ?urlConfiguration == null ? null : urlConfiguration!.toMap(),
    };
  }

  factory ApplicationGatewayRewriteRuleActionSet.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayRewriteRuleActionSet(
      requestHeaderConfigurations: map['requestHeaderConfigurations'] == null ? null : pulumi.Input.decodeList<ApplicationGatewayHeaderConfiguration>(map['requestHeaderConfigurations'], (value) => ApplicationGatewayHeaderConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      responseHeaderConfigurations: map['responseHeaderConfigurations'] == null ? null : pulumi.Input.decodeList<ApplicationGatewayHeaderConfiguration>(map['responseHeaderConfigurations'], (value) => ApplicationGatewayHeaderConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      urlConfiguration: map['urlConfiguration'] == null ? null : ApplicationGatewayUrlConfiguration.fromMap((map['urlConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

