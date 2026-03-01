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
    pulumi.Output<String>? accessEndpoint,
    pulumi.Output<String>? arn,
    pulumi.Output<WebAppEndpointDetails>? endpointDetails,
    pulumi.Output<WebAppIdentityProviderDetails>? identityProviderDetails,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? webAppEndpointPolicy,
    pulumi.Output<String>? webAppId,
    pulumi.Output<List<WebAppWebAppUnit>>? webAppUnits,
  }) :
      accessEndpoint = pulumi.Input.asOptionalInput<String>(accessEndpoint),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      endpointDetails = pulumi.Input.asOptionalInput<WebAppEndpointDetails>(endpointDetails),
      identityProviderDetails = pulumi.Input.asOptionalInput<WebAppIdentityProviderDetails>(identityProviderDetails),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      webAppEndpointPolicy = pulumi.Input.asOptionalInput<String>(webAppEndpointPolicy),
      webAppId = pulumi.Input.asOptionalInput<String>(webAppId),
      webAppUnits = pulumi.Input.asOptionalInput<List<WebAppWebAppUnit>>(webAppUnits);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessEndpoint': ?accessEndpoint,
      'arn': ?arn,
      'endpointDetails': ?pulumi.Input.mapOptionalInputValue<WebAppEndpointDetails, Map<String, dynamic>>(endpointDetails, (value) => value.toMap()),
      'identityProviderDetails': ?pulumi.Input.mapOptionalInputValue<WebAppIdentityProviderDetails, Map<String, dynamic>>(identityProviderDetails, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'webAppEndpointPolicy': ?webAppEndpointPolicy,
      'webAppId': ?webAppId,
      'webAppUnits': ?pulumi.Input.mapOptionalInputValue<List<WebAppWebAppUnit>, List<Map<String, dynamic>>>(webAppUnits, (value) => pulumi.Input.encodeList<WebAppWebAppUnit, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WebAppState.fromMap(Map<String, dynamic> map) {
    return WebAppState(
      accessEndpoint: map['accessEndpoint'] == null ? null : pulumi.Output.create<String>(map['accessEndpoint'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      endpointDetails: map['endpointDetails'] == null ? null : pulumi.Output.create<WebAppEndpointDetails>(WebAppEndpointDetails.fromMap((map['endpointDetails'] as Map).cast<String, dynamic>())),
      identityProviderDetails: map['identityProviderDetails'] == null ? null : pulumi.Output.create<WebAppIdentityProviderDetails>(WebAppIdentityProviderDetails.fromMap((map['identityProviderDetails'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      webAppEndpointPolicy: map['webAppEndpointPolicy'] == null ? null : pulumi.Output.create<String>(map['webAppEndpointPolicy'] as String),
      webAppId: map['webAppId'] == null ? null : pulumi.Output.create<String>(map['webAppId'] as String),
      webAppUnits: map['webAppUnits'] == null ? null : pulumi.Output.create<List<WebAppWebAppUnit>>(pulumi.Input.decodeList<WebAppWebAppUnit>(map['webAppUnits'], (value) => WebAppWebAppUnit.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

