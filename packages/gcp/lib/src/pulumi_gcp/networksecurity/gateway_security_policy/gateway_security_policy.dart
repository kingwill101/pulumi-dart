import 'package:pulumi/pulumi.dart';
import 'gateway_security_policy_args.dart';

/// The GatewaySecurityPolicy resource contains a collection of GatewaySecurityPolicyRules and associated metadata.
///
///
/// To get more information about GatewaySecurityPolicy, see:
///
/// * [API documentation](https://cloud.google.com/secure-web-proxy/docs/reference/network-security/rest/v1/projects.locations.gatewaySecurityPolicies)
///
/// ## Example Usage
///
/// ### Network Security Gateway Security Policy Basic
///
///
///
/// ### Network Security Gateway Security Policy Tls Inspection Basic
///
///
///
///
/// ## Import
///
/// GatewaySecurityPolicy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/gatewaySecurityPolicies/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, GatewaySecurityPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networksecurity/gatewaySecurityPolicy:GatewaySecurityPolicy default projects/{{project}}/locations/{{location}}/gatewaySecurityPolicies/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/gatewaySecurityPolicy:GatewaySecurityPolicy default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/gatewaySecurityPolicy:GatewaySecurityPolicy default {{location}}/{{name}}
/// ```
class GatewaySecurityPolicy extends CustomResource {
  /// The timestamp when the resource was created.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z"
  late final Output<String> createTime;

  /// A free-text description of the resource. Max length 1024 characters.
  late final Output<String?> description;

  /// The location of the gateway security policy.
  /// The default value is `global`.
  late final Output<String?> location;

  /// Name of the resource. Name is of the form projects/{project}/locations/{location}/gatewaySecurityPolicies/{gatewaySecurityPolicy}
  /// gatewaySecurityPolicy should match the pattern:(^a-z?$).
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Server-defined URL of this resource.
  late final Output<String> selfLink;

  /// Name of a TlsInspectionPolicy resource that defines how TLS inspection is performed for any rule that enables it.
  late final Output<String?> tlsInspectionPolicy;

  /// The timestamp when the resource was updated.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final Output<String> updateTime;

  GatewaySecurityPolicy(
    String name, {
    GatewaySecurityPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/gatewaySecurityPolicy:GatewaySecurityPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.selfLink = registerOutput<String>('selfLink');
    this.tlsInspectionPolicy = registerOutput<String?>('tlsInspectionPolicy');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
