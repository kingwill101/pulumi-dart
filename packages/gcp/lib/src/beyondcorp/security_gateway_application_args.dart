// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_gateway_application_endpoint_matcher.dart';
import 'security_gateway_application_upstream.dart';

/// {@template pulumi_beyondcorp_security_gateway_application_security_gateway_application_args_doc}
/// The set of arguments for SecurityGatewayApplication.
/// {@endtemplate}
/// {@macro pulumi_beyondcorp_security_gateway_application_security_gateway_application_args_doc}
class SecurityGatewayApplicationArgs {
  /// User-settable Application resource ID.
  /// * Must start with a letter.
  /// * Must contain between 4-63 characters from `/a-z-/`.
  /// * Must end with a number or letter.
  final pulumi.Input<String> applicationId;

  /// Optional. An arbitrary user-provided name for the Application resource.
  /// Cannot exceed 64 characters.
  final pulumi.Input<String>? displayName;

  /// Required. Endpoint matchers associated with an application.
  /// A combination of hostname and ports as endpoint matcher is used to match
  /// the application.
  /// Match conditions for OR logic.
  /// An array of match conditions to allow for multiple matching criteria.
  /// The rule is considered a match if one the conditions are met.
  /// The conditions can be one of the following combination
  /// (Hostname), (Hostname & Ports)
  /// EXAMPLES:
  /// Hostname - ("*.abc.com"), ("xyz.abc.com")
  /// Hostname and Ports - ("abc.com" and "22"), ("abc.com" and "22,33") etc
  /// Structure is documented below.
  final pulumi.Input<List<SecurityGatewayApplicationEndpointMatcher>>?
  endpointMatchers;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Type of the external application.
  /// Possible values are: `PROXY_GATEWAY`, `API_GATEWAY`.
  final pulumi.Input<String>? schema;

  /// ID of the Security Gateway resource this belongs to.
  final pulumi.Input<String> securityGatewayId;

  /// Optional. List of which upstream resource(s) to forward traffic to.
  /// Structure is documented below.
  final pulumi.Input<List<SecurityGatewayApplicationUpstream>>? upstreams;

  /// Creates a new [SecurityGatewayApplicationArgs].
  /// [applicationId] User-settable Application resource ID.
  /// [displayName] Optional. An arbitrary user-provided name for the Application resource.
  /// [endpointMatchers] Required. Endpoint matchers associated with an application.
  /// [project] The ID of the project in which the resource belongs.
  /// [schema] Type of the external application.
  /// [securityGatewayId] ID of the Security Gateway resource this belongs to.
  /// [upstreams] Optional. List of which upstream resource(s) to forward traffic to.
  SecurityGatewayApplicationArgs({
    required String applicationId,
    String? displayName,
    List<SecurityGatewayApplicationEndpointMatcher>? endpointMatchers,
    String? project,
    String? schema,
    required String securityGatewayId,
    List<SecurityGatewayApplicationUpstream>? upstreams,
  }) : applicationId = pulumi.Input.asInput<String>(applicationId),
       displayName = pulumi.Input.asOptionalInput<String>(displayName),
       endpointMatchers =
           pulumi.Input.asOptionalInput<
             List<SecurityGatewayApplicationEndpointMatcher>
           >(endpointMatchers),
       project = pulumi.Input.asOptionalInput<String>(project),
       schema = pulumi.Input.asOptionalInput<String>(schema),
       securityGatewayId = pulumi.Input.asInput<String>(securityGatewayId),
       upstreams =
           pulumi.Input.asOptionalInput<
             List<SecurityGatewayApplicationUpstream>
           >(upstreams);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': applicationId,
      'displayName': ?displayName,
      'endpointMatchers':
          ?pulumi.Input.mapOptionalInputValue<
            List<SecurityGatewayApplicationEndpointMatcher>,
            List<Map<String, dynamic>>
          >(
            endpointMatchers,
            (value) =>
                pulumi.Input.encodeList<
                  SecurityGatewayApplicationEndpointMatcher,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'project': ?project,
      'schema': ?schema,
      'securityGatewayId': securityGatewayId,
      'upstreams':
          ?pulumi.Input.mapOptionalInputValue<
            List<SecurityGatewayApplicationUpstream>,
            List<Map<String, dynamic>>
          >(
            upstreams,
            (value) =>
                pulumi.Input.encodeList<
                  SecurityGatewayApplicationUpstream,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory SecurityGatewayApplicationArgs.fromMap(Map<String, dynamic> map) {
    return SecurityGatewayApplicationArgs(
      applicationId: map['applicationId'] as String,
      displayName: map['displayName'] == null
          ? null
          : map['displayName'] as String,
      endpointMatchers: map['endpointMatchers'] == null
          ? null
          : pulumi.Input.decodeList<SecurityGatewayApplicationEndpointMatcher>(
              map['endpointMatchers'],
              (value) => SecurityGatewayApplicationEndpointMatcher.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      project: map['project'] == null ? null : map['project'] as String,
      schema: map['schema'] == null ? null : map['schema'] as String,
      securityGatewayId: map['securityGatewayId'] as String,
      upstreams: map['upstreams'] == null
          ? null
          : pulumi.Input.decodeList<SecurityGatewayApplicationUpstream>(
              map['upstreams'],
              (value) => SecurityGatewayApplicationUpstream.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
