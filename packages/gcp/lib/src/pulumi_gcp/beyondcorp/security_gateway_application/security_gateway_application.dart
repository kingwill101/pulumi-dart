import 'package:pulumi/pulumi.dart' as pulumi;
import '../security_gateway_application_endpoint_matcher/security_gateway_application_endpoint_matcher.dart';
import '../security_gateway_application_upstream/security_gateway_application_upstream.dart';
import 'security_gateway_application_args.dart';

/// Specifies application endpoint(s) to protect behind a Security Gateway.
///
///
///
/// ## Example Usage
///
/// ### Beyondcorp Security Gateway Application Basic
///
///
///
/// ### Beyondcorp Security Gateway Application Vpc
///
///
///
/// ### Beyondcorp Security Gateway Application Spa Api
///
///
///
/// ### Beyondcorp Security Gateway Application Spa Proxy
///
///
///
///
/// ## Import
///
/// SecurityGatewayApplication can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/securityGateways/{{security_gateway_id}}/applications/{{application_id}}`
///
/// * `{{project}}/{{security_gateway_id}}/{{application_id}}`
///
/// * `{{security_gateway_id}}/{{application_id}}`
///
/// When using the `pulumi import` command, SecurityGatewayApplication can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:beyondcorp/securityGatewayApplication:SecurityGatewayApplication default projects/{{project}}/locations/global/securityGateways/{{security_gateway_id}}/applications/{{application_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:beyondcorp/securityGatewayApplication:SecurityGatewayApplication default {{project}}/{{security_gateway_id}}/{{application_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:beyondcorp/securityGatewayApplication:SecurityGatewayApplication default {{security_gateway_id}}/{{application_id}}
/// ```
class SecurityGatewayApplication extends pulumi.CustomResource {
  /// User-settable Application resource ID.
  /// * Must start with a letter.
  /// * Must contain between 4-63 characters from `/a-z-/`.
  /// * Must end with a number or letter.
  late final pulumi.Output<String> applicationId;

  /// Output only. Timestamp when the resource was created.
  late final pulumi.Output<String> createTime;

  /// Optional. An arbitrary user-provided name for the Application resource.
  /// Cannot exceed 64 characters.
  late final pulumi.Output<String?> displayName;

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
  late final pulumi.Output<List<SecurityGatewayApplicationEndpointMatcher>?>
      endpointMatchers;

  /// Identifier. Name of the resource.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Type of the external application.
  /// Possible values are: `PROXY_GATEWAY`, `API_GATEWAY`.
  late final pulumi.Output<String?> schema;

  /// ID of the Security Gateway resource this belongs to.
  late final pulumi.Output<String> securityGatewayId;

  /// Output only. Timestamp when the resource was last modified.
  late final pulumi.Output<String> updateTime;

  /// Optional. List of which upstream resource(s) to forward traffic to.
  /// Structure is documented below.
  late final pulumi.Output<List<SecurityGatewayApplicationUpstream>?> upstreams;

  SecurityGatewayApplication(
    String name, {
    SecurityGatewayApplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:beyondcorp/securityGatewayApplication:SecurityGatewayApplication',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationId = registerOutput<String>('applicationId');
    this.createTime = registerOutput<String>('createTime');
    this.displayName = registerOutput<String?>('displayName');
    this.endpointMatchers =
        registerOutput<List<SecurityGatewayApplicationEndpointMatcher>?>(
            'endpointMatchers');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.schema = registerOutput<String?>('schema');
    this.securityGatewayId = registerOutput<String>('securityGatewayId');
    this.updateTime = registerOutput<String>('updateTime');
    this.upstreams =
        registerOutput<List<SecurityGatewayApplicationUpstream>?>('upstreams');
  }
}
