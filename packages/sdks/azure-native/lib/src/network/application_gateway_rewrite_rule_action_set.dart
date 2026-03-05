// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_header_configuration.dart';
import 'application_gateway_url_configuration.dart';

/// Set of actions in the Rewrite Rule in Application Gateway.
class ApplicationGatewayRewriteRuleActionSet {
  /// Request Header Actions in the Action Set.
  final pulumi.Input<List<ApplicationGatewayHeaderConfiguration>>? requestHeaderConfigurations;
  /// Response Header Actions in the Action Set.
  final pulumi.Input<List<ApplicationGatewayHeaderConfiguration>>? responseHeaderConfigurations;
  /// Url Configuration Action in the Action Set.
  final pulumi.Input<ApplicationGatewayUrlConfiguration>? urlConfiguration;

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
      'requestHeaderConfigurations': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayHeaderConfiguration>, List<Map<String, dynamic>>>(requestHeaderConfigurations, (value) => pulumi.Input.encodeList<ApplicationGatewayHeaderConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'responseHeaderConfigurations': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayHeaderConfiguration>, List<Map<String, dynamic>>>(responseHeaderConfigurations, (value) => pulumi.Input.encodeList<ApplicationGatewayHeaderConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'urlConfiguration': ?pulumi.Input.mapOptionalInputValue<ApplicationGatewayUrlConfiguration, Map<String, dynamic>>(urlConfiguration, (value) => value.toMap()),
    };
  }

  factory ApplicationGatewayRewriteRuleActionSet.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayRewriteRuleActionSet(
      requestHeaderConfigurations: (() { final guardedValue = map['requestHeaderConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayHeaderConfiguration>(guardedValue, (value) => ApplicationGatewayHeaderConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      responseHeaderConfigurations: (() { final guardedValue = map['responseHeaderConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayHeaderConfiguration>(guardedValue, (value) => ApplicationGatewayHeaderConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      urlConfiguration: (() { final guardedValue = map['urlConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationGatewayUrlConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

