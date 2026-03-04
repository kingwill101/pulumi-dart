// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_app_endpoint_details.dart';
import 'web_app_identity_provider_details.dart';
import 'web_app_web_app_unit.dart';

/// {@template pulumi_transfer_web_app_web_app_args_doc}
/// The set of arguments for WebApp.
/// {@endtemplate}
/// {@macro pulumi_transfer_web_app_web_app_args_doc}
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

  /// Creates a new [WebAppArgs].
  /// [accessEndpoint] URL provided to interact with the Transfer Family web app. If `endpoint_details.vpc` block is specified, `access_endpoint` must not be provided.
  /// [endpointDetails] Block for the endpoint configuration for the web app. If not specified, the web app will be created with a public endpoint.
  /// [identityProviderDetails] Block for details of the identity provider to use with the web app. See Identity provider details below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value pairs that can be used to group and search for web apps.
  /// [webAppEndpointPolicy] Type of endpoint policy for the web app. Valid values are: `STANDARD`(default) or `FIPS`.
  /// [webAppUnits] Block for number of concurrent connections or the user sessions on the web app.
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
    return <String, dynamic>{
      'accessEndpoint': ?accessEndpoint,
      'endpointDetails':
          ?pulumi.Input.mapOptionalInputValue<
            WebAppEndpointDetails,
            Map<String, dynamic>
          >(endpointDetails, (value) => value.toMap()),
      'identityProviderDetails':
          pulumi.Input.mapInputValue<
            WebAppIdentityProviderDetails,
            Map<String, dynamic>
          >(identityProviderDetails, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
      'webAppEndpointPolicy': ?webAppEndpointPolicy,
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

  factory WebAppArgs.fromMap(Map<String, dynamic> map) {
    return WebAppArgs(
      accessEndpoint: (() {
        final guardedValue = map['accessEndpoint'];
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
      identityProviderDetails: pulumi.Input.fromValue(
        WebAppIdentityProviderDetails.fromMap(
          (map['identityProviderDetails']! as Map).cast<String, dynamic>(),
        ),
      ),
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
      webAppEndpointPolicy: (() {
        final guardedValue = map['webAppEndpointPolicy'];
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
