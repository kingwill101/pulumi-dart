// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../web_app_endpoint_details/web_app_endpoint_details.dart';
import '../web_app_identity_provider_details/web_app_identity_provider_details.dart';
import '../web_app_web_app_unit/web_app_web_app_unit.dart';

/// The set of arguments for WebApp.
class WebAppArgs {
  /// URL provided to interact with the Transfer Family web app. If `endpoint_details.vpc` block is specified, `access_endpoint` must not be provided.
  final pulumi.Input<String>? accessEndpoint;

  /// Block for the endpoint configuration for the web app. If not specified, the web app will be created with a public endpoint.
  final pulumi.Input<WebAppEndpointDetails>? endpointDetails;

  /// Block for details of the identity provider to use with the web app. See Identity provider details below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<WebAppIdentityProviderDetails> identityProviderDetails;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value pairs that can be used to group and search for web apps.
  final pulumi.Input<Map<String, String>>? tags;

  /// Type of endpoint policy for the web app. Valid values are: `STANDARD`(default) or `FIPS`.
  final pulumi.Input<String>? webAppEndpointPolicy;

  /// Block for number of concurrent connections or the user sessions on the web app.
  /// * provisioned - (Optional) Number of units of concurrent connections.
  final pulumi.Input<List<WebAppWebAppUnit>>? webAppUnits;

  WebAppArgs({
    this.accessEndpoint,
    this.endpointDetails,
    required this.identityProviderDetails,
    this.region,
    this.tags,
    this.webAppEndpointPolicy,
    this.webAppUnits,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessEndpointValue = accessEndpoint;
    if (accessEndpointValue != null) {
      map['accessEndpoint'] = accessEndpointValue;
    }
    final endpointDetailsValue = endpointDetails;
    if (endpointDetailsValue != null) {
      map['endpointDetails'] = pulumi.Input.mapOptionalInputValue<
          WebAppEndpointDetails,
          Map<String, dynamic>>(endpointDetailsValue, (value) => value.toMap());
    }
    map['identityProviderDetails'] = pulumi.Input.mapInputValue<
            WebAppIdentityProviderDetails, Map<String, dynamic>>(
        identityProviderDetails, (value) => value.toMap());
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final webAppEndpointPolicyValue = webAppEndpointPolicy;
    if (webAppEndpointPolicyValue != null) {
      map['webAppEndpointPolicy'] = webAppEndpointPolicyValue;
    }
    final webAppUnitsValue = webAppUnits;
    if (webAppUnitsValue != null) {
      map['webAppUnits'] = pulumi.Input.mapOptionalInputValue<
              List<WebAppWebAppUnit>, List<Map<String, dynamic>>>(
          webAppUnitsValue,
          (value) =>
              pulumi.Input.encodeList<WebAppWebAppUnit, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    return map;
  }

  factory WebAppArgs.fromMap(Map<String, dynamic> map) {
    return WebAppArgs(
      accessEndpoint:
          pulumi.Input.asOptionalInput<String>(map['accessEndpoint']),
      endpointDetails: pulumi.Input.asOptionalInput<WebAppEndpointDetails>(
          map['endpointDetails']),
      identityProviderDetails:
          pulumi.Input.asInput<WebAppIdentityProviderDetails>(
              map['identityProviderDetails']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      webAppEndpointPolicy:
          pulumi.Input.asOptionalInput<String>(map['webAppEndpointPolicy']),
      webAppUnits: pulumi.Input.asOptionalInput<List<WebAppWebAppUnit>>(
          map['webAppUnits']),
    );
  }
}
