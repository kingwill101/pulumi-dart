import 'package:pulumi/pulumi.dart';
import 'gateway_security_policy_rule_args.dart';

/// The GatewaySecurityPolicyRule resource is in a nested collection within a GatewaySecurityPolicy and represents
/// a traffic matching condition and associated action to perform.
///
///
/// To get more information about GatewaySecurityPolicyRule, see:
///
/// * [API documentation](https://cloud.google.com/secure-web-proxy/docs/reference/network-security/rest/v1/projects.locations.gatewaySecurityPolicies.rules)
///
/// ## Example Usage
///
/// ### Network Security Gateway Security Policy Rules Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.networksecurity.GatewaySecurityPolicy("default", {
/// name: "my-gateway-security-policy",
/// location: "us-central1",
/// description: "gateway security policy created to be used as reference by the rule.",
/// });
/// const defaultGatewaySecurityPolicyRule = new gcp.networksecurity.GatewaySecurityPolicyRule("default", {
/// name: "my-gateway-security-policy-rule",
/// location: "us-central1",
/// gatewaySecurityPolicy: _default.name,
/// enabled: true,
/// description: "my description",
/// priority: 0,
/// sessionMatcher: "host() == 'example.com'",
/// basicProfile: "ALLOW",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.networksecurity.GatewaySecurityPolicy("default",
/// name="my-gateway-security-policy",
/// location="us-central1",
/// description="gateway security policy created to be used as reference by the rule.")
/// default_gateway_security_policy_rule = gcp.networksecurity.GatewaySecurityPolicyRule("default",
/// name="my-gateway-security-policy-rule",
/// location="us-central1",
/// gateway_security_policy=default.name,
/// enabled=True,
/// description="my description",
/// priority=0,
/// session_matcher="host() == 'example.com'",
/// basic_profile="ALLOW")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = new Gcp.NetworkSecurity.GatewaySecurityPolicy("default", new()
/// {
/// Name = "my-gateway-security-policy",
/// Location = "us-central1",
/// Description = "gateway security policy created to be used as reference by the rule.",
/// });
///
/// var defaultGatewaySecurityPolicyRule = new Gcp.NetworkSecurity.GatewaySecurityPolicyRule("default", new()
/// {
/// Name = "my-gateway-security-policy-rule",
/// Location = "us-central1",
/// GatewaySecurityPolicy = @default.Name,
/// Enabled = true,
/// Description = "my description",
/// Priority = 0,
/// SessionMatcher = "host() == 'example.com'",
/// BasicProfile = "ALLOW",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networksecurity"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := networksecurity.NewGatewaySecurityPolicy(ctx, "default", &networksecurity.GatewaySecurityPolicyArgs{
/// Name:        pulumi.String("my-gateway-security-policy"),
/// Location:    pulumi.String("us-central1"),
/// Description: pulumi.String("gateway security policy created to be used as reference by the rule."),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = networksecurity.NewGatewaySecurityPolicyRule(ctx, "default", &networksecurity.GatewaySecurityPolicyRuleArgs{
/// Name:                  pulumi.String("my-gateway-security-policy-rule"),
/// Location:              pulumi.String("us-central1"),
/// GatewaySecurityPolicy: _default.Name,
/// Enabled:               pulumi.Bool(true),
/// Description:           pulumi.String("my description"),
/// Priority:              pulumi.Int(0),
/// SessionMatcher:        pulumi.String("host() == 'example.com'"),
/// BasicProfile:          pulumi.String("ALLOW"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.networksecurity.GatewaySecurityPolicy;
/// import com.pulumi.gcp.networksecurity.GatewaySecurityPolicyArgs;
/// import com.pulumi.gcp.networksecurity.GatewaySecurityPolicyRule;
/// import com.pulumi.gcp.networksecurity.GatewaySecurityPolicyRuleArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var default_ = new GatewaySecurityPolicy("default", GatewaySecurityPolicyArgs.builder()
/// .name("my-gateway-security-policy")
/// .location("us-central1")
/// .description("gateway security policy created to be used as reference by the rule.")
/// .build());
///
/// var defaultGatewaySecurityPolicyRule = new GatewaySecurityPolicyRule("defaultGatewaySecurityPolicyRule", GatewaySecurityPolicyRuleArgs.builder()
/// .name("my-gateway-security-policy-rule")
/// .location("us-central1")
/// .gatewaySecurityPolicy(default_.name())
/// .enabled(true)
/// .description("my description")
/// .priority(0)
/// .sessionMatcher("host() == 'example.com'")
/// .basicProfile("ALLOW")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:networksecurity:GatewaySecurityPolicy
/// properties:
/// name: my-gateway-security-policy
/// location: us-central1
/// description: gateway security policy created to be used as reference by the rule.
/// defaultGatewaySecurityPolicyRule:
/// type: gcp:networksecurity:GatewaySecurityPolicyRule
/// name: default
/// properties:
/// name: my-gateway-security-policy-rule
/// location: us-central1
/// gatewaySecurityPolicy: ${default.name}
/// enabled: true
/// description: my description
/// priority: 0
/// sessionMatcher: host() == 'example.com'
/// basicProfile: ALLOW
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Network Security Gateway Security Policy Rules Advanced
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.networksecurity.GatewaySecurityPolicy("default", {
/// name: "my-gateway-security-policy",
/// location: "us-central1",
/// description: "gateway security policy created to be used as reference by the rule.",
/// });
/// const defaultGatewaySecurityPolicyRule = new gcp.networksecurity.GatewaySecurityPolicyRule("default", {
/// name: "my-gateway-security-policy-rule",
/// location: "us-central1",
/// gatewaySecurityPolicy: _default.name,
/// enabled: true,
/// description: "my description",
/// priority: 0,
/// sessionMatcher: "host() == 'example.com'",
/// applicationMatcher: "request.method == 'POST'",
/// tlsInspectionEnabled: false,
/// basicProfile: "ALLOW",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.networksecurity.GatewaySecurityPolicy("default",
/// name="my-gateway-security-policy",
/// location="us-central1",
/// description="gateway security policy created to be used as reference by the rule.")
/// default_gateway_security_policy_rule = gcp.networksecurity.GatewaySecurityPolicyRule("default",
/// name="my-gateway-security-policy-rule",
/// location="us-central1",
/// gateway_security_policy=default.name,
/// enabled=True,
/// description="my description",
/// priority=0,
/// session_matcher="host() == 'example.com'",
/// application_matcher="request.method == 'POST'",
/// tls_inspection_enabled=False,
/// basic_profile="ALLOW")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = new Gcp.NetworkSecurity.GatewaySecurityPolicy("default", new()
/// {
/// Name = "my-gateway-security-policy",
/// Location = "us-central1",
/// Description = "gateway security policy created to be used as reference by the rule.",
/// });
///
/// var defaultGatewaySecurityPolicyRule = new Gcp.NetworkSecurity.GatewaySecurityPolicyRule("default", new()
/// {
/// Name = "my-gateway-security-policy-rule",
/// Location = "us-central1",
/// GatewaySecurityPolicy = @default.Name,
/// Enabled = true,
/// Description = "my description",
/// Priority = 0,
/// SessionMatcher = "host() == 'example.com'",
/// ApplicationMatcher = "request.method == 'POST'",
/// TlsInspectionEnabled = false,
/// BasicProfile = "ALLOW",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networksecurity"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := networksecurity.NewGatewaySecurityPolicy(ctx, "default", &networksecurity.GatewaySecurityPolicyArgs{
/// Name:        pulumi.String("my-gateway-security-policy"),
/// Location:    pulumi.String("us-central1"),
/// Description: pulumi.String("gateway security policy created to be used as reference by the rule."),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = networksecurity.NewGatewaySecurityPolicyRule(ctx, "default", &networksecurity.GatewaySecurityPolicyRuleArgs{
/// Name:                  pulumi.String("my-gateway-security-policy-rule"),
/// Location:              pulumi.String("us-central1"),
/// GatewaySecurityPolicy: _default.Name,
/// Enabled:               pulumi.Bool(true),
/// Description:           pulumi.String("my description"),
/// Priority:              pulumi.Int(0),
/// SessionMatcher:        pulumi.String("host() == 'example.com'"),
/// ApplicationMatcher:    pulumi.String("request.method == 'POST'"),
/// TlsInspectionEnabled:  pulumi.Bool(false),
/// BasicProfile:          pulumi.String("ALLOW"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.networksecurity.GatewaySecurityPolicy;
/// import com.pulumi.gcp.networksecurity.GatewaySecurityPolicyArgs;
/// import com.pulumi.gcp.networksecurity.GatewaySecurityPolicyRule;
/// import com.pulumi.gcp.networksecurity.GatewaySecurityPolicyRuleArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var default_ = new GatewaySecurityPolicy("default", GatewaySecurityPolicyArgs.builder()
/// .name("my-gateway-security-policy")
/// .location("us-central1")
/// .description("gateway security policy created to be used as reference by the rule.")
/// .build());
///
/// var defaultGatewaySecurityPolicyRule = new GatewaySecurityPolicyRule("defaultGatewaySecurityPolicyRule", GatewaySecurityPolicyRuleArgs.builder()
/// .name("my-gateway-security-policy-rule")
/// .location("us-central1")
/// .gatewaySecurityPolicy(default_.name())
/// .enabled(true)
/// .description("my description")
/// .priority(0)
/// .sessionMatcher("host() == 'example.com'")
/// .applicationMatcher("request.method == 'POST'")
/// .tlsInspectionEnabled(false)
/// .basicProfile("ALLOW")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:networksecurity:GatewaySecurityPolicy
/// properties:
/// name: my-gateway-security-policy
/// location: us-central1
/// description: gateway security policy created to be used as reference by the rule.
/// defaultGatewaySecurityPolicyRule:
/// type: gcp:networksecurity:GatewaySecurityPolicyRule
/// name: default
/// properties:
/// name: my-gateway-security-policy-rule
/// location: us-central1
/// gatewaySecurityPolicy: ${default.name}
/// enabled: true
/// description: my description
/// priority: 0
/// sessionMatcher: host() == 'example.com'
/// applicationMatcher: request.method == 'POST'
/// tlsInspectionEnabled: false
/// basicProfile: ALLOW
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// GatewaySecurityPolicyRule can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/gatewaySecurityPolicies/{{gateway_security_policy}}/rules/{{name}}`
///
/// * `{{project}}/{{location}}/{{gateway_security_policy}}/{{name}}`
///
/// * `{{location}}/{{gateway_security_policy}}/{{name}}`
///
/// When using the `pulumi import` command, GatewaySecurityPolicyRule can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networksecurity/gatewaySecurityPolicyRule:GatewaySecurityPolicyRule default projects/{{project}}/locations/{{location}}/gatewaySecurityPolicies/{{gateway_security_policy}}/rules/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/gatewaySecurityPolicyRule:GatewaySecurityPolicyRule default {{project}}/{{location}}/{{gateway_security_policy}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/gatewaySecurityPolicyRule:GatewaySecurityPolicyRule default {{location}}/{{gateway_security_policy}}/{{name}}
/// ```
class GatewaySecurityPolicyRule extends CustomResource {
  /// CEL expression for matching on L7/application level criteria.
  late final Output<String?> applicationMatcher;

  /// Profile which tells what the primitive action should be. Possible values are: * ALLOW * DENY.
  /// Possible values are: `BASIC_PROFILE_UNSPECIFIED`, `ALLOW`, `DENY`.
  late final Output<String> basicProfile;

  /// The timestamp when the resource was created.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z"
  late final Output<String> createTime;

  /// Free-text description of the resource.
  late final Output<String?> description;

  /// Whether the rule is enforced.
  late final Output<bool> enabled;

  /// The name of the gatewat security policy this rule belongs to.
  late final Output<String> gatewaySecurityPolicy;

  /// The location of the gateway security policy.
  late final Output<String> location;

  /// Name of the resource. ame is the full resource name so projects/{project}/locations/{location}/gatewaySecurityPolicies/{gateway_security_policy}/rules/{rule}
  /// rule should match the pattern: (^a-z?$).
  late final Output<String> name;

  /// Priority of the rule. Lower number corresponds to higher precedence.
  late final Output<int> priority;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Server-defined URL of this resource.
  late final Output<String> selfLink;

  /// CEL expression for matching on session criteria.
  late final Output<String> sessionMatcher;

  /// Flag to enable TLS inspection of traffic matching on. Can only be true if the
  /// parent GatewaySecurityPolicy references a TLSInspectionConfig.
  late final Output<bool?> tlsInspectionEnabled;

  /// The timestamp when the resource was updated.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final Output<String> updateTime;

  GatewaySecurityPolicyRule(
    String name, {
    GatewaySecurityPolicyRuleArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/gatewaySecurityPolicyRule:GatewaySecurityPolicyRule',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.applicationMatcher = Output.createUnknown<String?>();
    this.basicProfile = Output.createUnknown<String>();
    this.createTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.enabled = Output.createUnknown<bool>();
    this.gatewaySecurityPolicy = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.priority = Output.createUnknown<int>();
    this.project = Output.createUnknown<String>();
    this.selfLink = Output.createUnknown<String>();
    this.sessionMatcher = Output.createUnknown<String>();
    this.tlsInspectionEnabled = Output.createUnknown<bool?>();
    this.updateTime = Output.createUnknown<String>();
  }
}
