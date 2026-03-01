// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cors_rule_response.dart';
import 'endpoint_authentication_response.dart';

/// Account resource properties.
class AccountResourceResponseProperties {
  /// Account configuration. This can only be set at RecommendationsService Account creation.
  final String? configuration;
  /// The list of CORS details.
  final List<CorsRuleResponse>? cors;
  /// The list of service endpoints authentication details.
  final List<EndpointAuthenticationResponse>? endpointAuthentications;
  /// The resource provisioning state.
  final String provisioningState;
  /// Connection string to write Accounts reports to.
  final String? reportsConnectionString;

  /// Creates a new [AccountResourceResponseProperties].
  /// [configuration] Account configuration. This can only be set at RecommendationsService Account creation.
  /// [cors] The list of CORS details.
  /// [endpointAuthentications] The list of service endpoints authentication details.
  /// [provisioningState] The resource provisioning state.
  /// [reportsConnectionString] Connection string to write Accounts reports to.
  AccountResourceResponseProperties({
    this.configuration,
    this.cors,
    this.endpointAuthentications,
    required this.provisioningState,
    this.reportsConnectionString,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': ?configuration,
      'cors': ?cors == null ? null : pulumi.Input.encodeList<CorsRuleResponse, Map<String, dynamic>>(cors!, (value) => value.toMap()),
      'endpointAuthentications': ?endpointAuthentications == null ? null : pulumi.Input.encodeList<EndpointAuthenticationResponse, Map<String, dynamic>>(endpointAuthentications!, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'reportsConnectionString': ?reportsConnectionString,
    };
  }

  factory AccountResourceResponseProperties.fromMap(Map<String, dynamic> map) {
    return AccountResourceResponseProperties(
      configuration: map['configuration'] == null ? null : map['configuration'] as String,
      cors: map['cors'] == null ? null : pulumi.Input.decodeList<CorsRuleResponse>(map['cors'], (value) => CorsRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
      endpointAuthentications: map['endpointAuthentications'] == null ? null : pulumi.Input.decodeList<EndpointAuthenticationResponse>(map['endpointAuthentications'], (value) => EndpointAuthenticationResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      reportsConnectionString: map['reportsConnectionString'] == null ? null : map['reportsConnectionString'] as String,
    );
  }
}

