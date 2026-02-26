// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../security_gateway_application_endpoint_matcher/security_gateway_application_endpoint_matcher.dart';
import '../security_gateway_application_upstream/security_gateway_application_upstream.dart';

/// The set of arguments for SecurityGatewayApplication.
class SecurityGatewayApplicationArgs {
  /// User-settable Application resource ID.
  /// * Must start with a letter.
  /// * Must contain between 4-63 characters from `/a-z-/`.
  /// * Must end with a number or letter.
  final Input<String> applicationId;

  /// Optional. An arbitrary user-provided name for the Application resource.
  /// Cannot exceed 64 characters.
  final Input<String>? displayName;

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
  final Input<List<SecurityGatewayApplicationEndpointMatcher>>?
      endpointMatchers;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Type of the external application.
  /// Possible values are: `PROXY_GATEWAY`, `API_GATEWAY`.
  final Input<String>? schema;

  /// ID of the Security Gateway resource this belongs to.
  final Input<String> securityGatewayId;

  /// Optional. List of which upstream resource(s) to forward traffic to.
  /// Structure is documented below.
  final Input<List<SecurityGatewayApplicationUpstream>>? upstreams;

  SecurityGatewayApplicationArgs({
    required this.applicationId,
    this.displayName,
    this.endpointMatchers,
    this.project,
    this.schema,
    required this.securityGatewayId,
    this.upstreams,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['applicationId'] = applicationId;
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final endpointMatchersValue = endpointMatchers;
    if (endpointMatchersValue != null) {
      map['endpointMatchers'] = Input.mapOptionalInputValue<
              List<SecurityGatewayApplicationEndpointMatcher>,
              List<Map<String, dynamic>>>(
          endpointMatchersValue,
          (value) => Input.encodeList<SecurityGatewayApplicationEndpointMatcher,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final schemaValue = schema;
    if (schemaValue != null) {
      map['schema'] = schemaValue;
    }
    map['securityGatewayId'] = securityGatewayId;
    final upstreamsValue = upstreams;
    if (upstreamsValue != null) {
      map['upstreams'] = Input.mapOptionalInputValue<
              List<SecurityGatewayApplicationUpstream>,
              List<Map<String, dynamic>>>(
          upstreamsValue,
          (value) => Input.encodeList<SecurityGatewayApplicationUpstream,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory SecurityGatewayApplicationArgs.fromMap(Map<String, dynamic> map) {
    return SecurityGatewayApplicationArgs(
      applicationId: Input.asInput<String>(map['applicationId']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      endpointMatchers: Input.asOptionalInput<
              List<SecurityGatewayApplicationEndpointMatcher>>(
          map['endpointMatchers']),
      project: Input.asOptionalInput<String>(map['project']),
      schema: Input.asOptionalInput<String>(map['schema']),
      securityGatewayId: Input.asInput<String>(map['securityGatewayId']),
      upstreams:
          Input.asOptionalInput<List<SecurityGatewayApplicationUpstream>>(
              map['upstreams']),
    );
  }
}
