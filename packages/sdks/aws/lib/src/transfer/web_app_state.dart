// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_app_endpoint_details.dart';
import 'web_app_identity_provider_details.dart';
import 'web_app_web_app_unit.dart';

/// Input properties used for looking up and filtering WebApp resources.
class WebAppState {
  /// URL provided to interact with the Transfer Family web app. If `endpoint_details.vpc` block is specified, `access_endpoint` must not be provided.
  final pulumi.Input<String>? accessEndpoint;

  /// ARN of the Web App.
  final pulumi.Input<String>? arn;

  /// Block for the endpoint configuration for the web app. If not specified, the web app will be created with a public endpoint.
  final pulumi.Input<WebAppEndpointDetails>? endpointDetails;

  /// Block for details of the identity provider to use with the web app. See Identity provider details below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<WebAppIdentityProviderDetails>? identityProviderDetails;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value pairs that can be used to group and search for web apps.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Type of endpoint policy for the web app. Valid values are: `STANDARD`(default) or `FIPS`.
  final pulumi.Input<String>? webAppEndpointPolicy;

  /// ID of the Wep App resource.
  final pulumi.Input<String>? webAppId;

  /// Block for number of concurrent connections or the user sessions on the web app.
  /// * provisioned - (Optional) Number of units of concurrent connections.
  final pulumi.Input<List<WebAppWebAppUnit>>? webAppUnits;

  /// Creates a new [WebAppState].
  /// [accessEndpoint] URL provided to interact with the Transfer Family web app. If `endpoint_details.vpc` block is specified, `access_endpoint` must not be provided.
  /// [arn] ARN of the Web App.
  /// [endpointDetails] Block for the endpoint configuration for the web app. If not specified, the web app will be created with a public endpoint.
  /// [identityProviderDetails] Block for details of the identity provider to use with the web app. See Identity provider details below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value pairs that can be used to group and search for web apps.
  /// [tagsAll] Optional.
  /// [webAppEndpointPolicy] Type of endpoint policy for the web app. Valid values are: `STANDARD`(default) or `FIPS`.
  /// [webAppId] ID of the Wep App resource.
  /// [webAppUnits] Block for number of concurrent connections or the user sessions on the web app.
  WebAppState({
    this.accessEndpoint,
    this.arn,
    this.endpointDetails,
    this.identityProviderDetails,
    this.region,
    this.tags,
    this.tagsAll,
    this.webAppEndpointPolicy,
    this.webAppId,
    this.webAppUnits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessEndpoint': ?accessEndpoint,
      'arn': ?arn,
      'endpointDetails':
          ?pulumi.Input.mapOptionalInputValue<
            WebAppEndpointDetails,
            Map<String, dynamic>
          >(endpointDetails, (value) => value.toMap()),
      'identityProviderDetails':
          ?pulumi.Input.mapOptionalInputValue<
            WebAppIdentityProviderDetails,
            Map<String, dynamic>
          >(identityProviderDetails, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'webAppEndpointPolicy': ?webAppEndpointPolicy,
      'webAppId': ?webAppId,
      'webAppUnits':
          ?pulumi.Input.mapOptionalInputValue<
            List<WebAppWebAppUnit>,
            List<Map<String, dynamic>>
          >(
            webAppUnits,
            (value) =>
                pulumi.Input.encodeList<WebAppWebAppUnit, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
    };
  }

  factory WebAppState.fromMap(Map<String, dynamic> map) {
    return WebAppState(
      accessEndpoint: (() {
        final guardedValue = map['accessEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      endpointDetails: (() {
        final guardedValue = map['endpointDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WebAppEndpointDetails.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      identityProviderDetails: (() {
        final guardedValue = map['identityProviderDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WebAppIdentityProviderDetails.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      webAppEndpointPolicy: (() {
        final guardedValue = map['webAppEndpointPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      webAppId: (() {
        final guardedValue = map['webAppId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      webAppUnits: (() {
        final guardedValue = map['webAppUnits'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<WebAppWebAppUnit>(
            guardedValue,
            (value) => WebAppWebAppUnit.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
