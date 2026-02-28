import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_policy_args.dart';
import 'authorization_policy_rule.dart';

/// AuthorizationPolicy is a resource that specifies how a server should authorize incoming connections. This resource in itself does not change the configuration unless it's attached to a target https proxy or endpoint config selector resource.
///
/// To get more information about AuthorizationPolicy, see:
///
/// * [API documentation](https://cloud.google.com/traffic-director/docs/reference/network-security/rest/v1beta1/projects.locations.authorizationPolicies)
///
/// ## Example Usage
///
/// ### Network Security Authorization Policy Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.networksecurity.AuthorizationPolicy("default", {
///     name: "my-authorization-policy",
///     labels: {
///         foo: "bar",
///     },
///     description: "my description",
///     action: "ALLOW",
///     rules: [{
///         sources: [{
///             principals: ["namespace/*"],
///             ipBlocks: ["1.2.3.0/24"],
///         }],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.networksecurity.AuthorizationPolicy("default",
///     name="my-authorization-policy",
///     labels={
///         "foo": "bar",
///     },
///     description="my description",
///     action="ALLOW",
///     rules=[{
///         "sources": [{
///             "principals": ["namespace/*"],
///             "ip_blocks": ["1.2.3.0/24"],
///         }],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.NetworkSecurity.AuthorizationPolicy("default", new()
///     {
///         Name = "my-authorization-policy",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Description = "my description",
///         Action = "ALLOW",
///         Rules = new[]
///         {
///             new Gcp.NetworkSecurity.Inputs.AuthorizationPolicyRuleArgs
///             {
///                 Sources = new[]
///                 {
///                     new Gcp.NetworkSecurity.Inputs.AuthorizationPolicyRuleSourceArgs
///                     {
///                         Principals = new[]
///                         {
///                             "namespace/*",
///                         },
///                         IpBlocks = new[]
///                         {
///                             "1.2.3.0/24",
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networksecurity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networksecurity.NewAuthorizationPolicy(ctx, "default", &networksecurity.AuthorizationPolicyArgs{
/// 			Name: pulumi.String("my-authorization-policy"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Description: pulumi.String("my description"),
/// 			Action:      pulumi.String("ALLOW"),
/// 			Rules: networksecurity.AuthorizationPolicyRuleArray{
/// 				&networksecurity.AuthorizationPolicyRuleArgs{
/// 					Sources: networksecurity.AuthorizationPolicyRuleSourceArray{
/// 						&networksecurity.AuthorizationPolicyRuleSourceArgs{
/// 							Principals: pulumi.StringArray{
/// 								pulumi.String("namespace/*"),
/// 							},
/// 							IpBlocks: pulumi.StringArray{
/// 								pulumi.String("1.2.3.0/24"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.networksecurity.AuthorizationPolicy;
/// import com.pulumi.gcp.networksecurity.AuthorizationPolicyArgs;
/// import com.pulumi.gcp.networksecurity.inputs.AuthorizationPolicyRuleArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var default_ = new AuthorizationPolicy("default", AuthorizationPolicyArgs.builder()
///             .name("my-authorization-policy")
///             .labels(Map.of("foo", "bar"))
///             .description("my description")
///             .action("ALLOW")
///             .rules(AuthorizationPolicyRuleArgs.builder()
///                 .sources(AuthorizationPolicyRuleSourceArgs.builder()
///                     .principals("namespace/*")
///                     .ipBlocks("1.2.3.0/24")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:networksecurity:AuthorizationPolicy
///     properties:
///       name: my-authorization-policy
///       labels:
///         foo: bar
///       description: my description
///       action: ALLOW
///       rules:
///         - sources:
///             - principals:
///                 - namespace/*
///               ipBlocks:
///                 - 1.2.3.0/24
/// ```
///
/// ### Network Security Authorization Policy Destinations
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.networksecurity.AuthorizationPolicy("default", {
///     name: "my-authorization-policy",
///     labels: {
///         foo: "bar",
///     },
///     description: "my description",
///     action: "ALLOW",
///     rules: [{
///         sources: [{
///             principals: ["namespace/*"],
///             ipBlocks: ["1.2.3.0/24"],
///         }],
///         destinations: [{
///             hosts: ["mydomain.*"],
///             ports: [8080],
///             methods: ["GET"],
///             httpHeaderMatch: {
///                 headerName: ":method",
///                 regexMatch: "GET",
///             },
///         }],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.networksecurity.AuthorizationPolicy("default",
///     name="my-authorization-policy",
///     labels={
///         "foo": "bar",
///     },
///     description="my description",
///     action="ALLOW",
///     rules=[{
///         "sources": [{
///             "principals": ["namespace/*"],
///             "ip_blocks": ["1.2.3.0/24"],
///         }],
///         "destinations": [{
///             "hosts": ["mydomain.*"],
///             "ports": [8080],
///             "methods": ["GET"],
///             "http_header_match": {
///                 "header_name": ":method",
///                 "regex_match": "GET",
///             },
///         }],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.NetworkSecurity.AuthorizationPolicy("default", new()
///     {
///         Name = "my-authorization-policy",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Description = "my description",
///         Action = "ALLOW",
///         Rules = new[]
///         {
///             new Gcp.NetworkSecurity.Inputs.AuthorizationPolicyRuleArgs
///             {
///                 Sources = new[]
///                 {
///                     new Gcp.NetworkSecurity.Inputs.AuthorizationPolicyRuleSourceArgs
///                     {
///                         Principals = new[]
///                         {
///                             "namespace/*",
///                         },
///                         IpBlocks = new[]
///                         {
///                             "1.2.3.0/24",
///                         },
///                     },
///                 },
///                 Destinations = new[]
///                 {
///                     new Gcp.NetworkSecurity.Inputs.AuthorizationPolicyRuleDestinationArgs
///                     {
///                         Hosts = new[]
///                         {
///                             "mydomain.*",
///                         },
///                         Ports = new[]
///                         {
///                             8080,
///                         },
///                         Methods = new[]
///                         {
///                             "GET",
///                         },
///                         HttpHeaderMatch = new Gcp.NetworkSecurity.Inputs.AuthorizationPolicyRuleDestinationHttpHeaderMatchArgs
///                         {
///                             HeaderName = ":method",
///                             RegexMatch = "GET",
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networksecurity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networksecurity.NewAuthorizationPolicy(ctx, "default", &networksecurity.AuthorizationPolicyArgs{
/// 			Name: pulumi.String("my-authorization-policy"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Description: pulumi.String("my description"),
/// 			Action:      pulumi.String("ALLOW"),
/// 			Rules: networksecurity.AuthorizationPolicyRuleArray{
/// 				&networksecurity.AuthorizationPolicyRuleArgs{
/// 					Sources: networksecurity.AuthorizationPolicyRuleSourceArray{
/// 						&networksecurity.AuthorizationPolicyRuleSourceArgs{
/// 							Principals: pulumi.StringArray{
/// 								pulumi.String("namespace/*"),
/// 							},
/// 							IpBlocks: pulumi.StringArray{
/// 								pulumi.String("1.2.3.0/24"),
/// 							},
/// 						},
/// 					},
/// 					Destinations: networksecurity.AuthorizationPolicyRuleDestinationArray{
/// 						&networksecurity.AuthorizationPolicyRuleDestinationArgs{
/// 							Hosts: pulumi.StringArray{
/// 								pulumi.String("mydomain.*"),
/// 							},
/// 							Ports: pulumi.IntArray{
/// 								pulumi.Int(8080),
/// 							},
/// 							Methods: pulumi.StringArray{
/// 								pulumi.String("GET"),
/// 							},
/// 							HttpHeaderMatch: &networksecurity.AuthorizationPolicyRuleDestinationHttpHeaderMatchArgs{
/// 								HeaderName: pulumi.String(":method"),
/// 								RegexMatch: pulumi.String("GET"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.networksecurity.AuthorizationPolicy;
/// import com.pulumi.gcp.networksecurity.AuthorizationPolicyArgs;
/// import com.pulumi.gcp.networksecurity.inputs.AuthorizationPolicyRuleArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var default_ = new AuthorizationPolicy("default", AuthorizationPolicyArgs.builder()
///             .name("my-authorization-policy")
///             .labels(Map.of("foo", "bar"))
///             .description("my description")
///             .action("ALLOW")
///             .rules(AuthorizationPolicyRuleArgs.builder()
///                 .sources(AuthorizationPolicyRuleSourceArgs.builder()
///                     .principals("namespace/*")
///                     .ipBlocks("1.2.3.0/24")
///                     .build())
///                 .destinations(AuthorizationPolicyRuleDestinationArgs.builder()
///                     .hosts("mydomain.*")
///                     .ports(8080)
///                     .methods("GET")
///                     .httpHeaderMatch(AuthorizationPolicyRuleDestinationHttpHeaderMatchArgs.builder()
///                         .headerName(":method")
///                         .regexMatch("GET")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:networksecurity:AuthorizationPolicy
///     properties:
///       name: my-authorization-policy
///       labels:
///         foo: bar
///       description: my description
///       action: ALLOW
///       rules:
///         - sources:
///             - principals:
///                 - namespace/*
///               ipBlocks:
///                 - 1.2.3.0/24
///           destinations:
///             - hosts:
///                 - mydomain.*
///               ports:
///                 - 8080
///               methods:
///                 - GET
///               httpHeaderMatch:
///                 headerName: :method
///                 regexMatch: GET
/// ```
///
///
/// ## Import
///
/// AuthorizationPolicy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/authorizationPolicies/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, AuthorizationPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networksecurity/authorizationPolicy:AuthorizationPolicy default projects/{{project}}/locations/{{location}}/authorizationPolicies/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/authorizationPolicy:AuthorizationPolicy default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/authorizationPolicy:AuthorizationPolicy default {{location}}/{{name}}
/// ```
class AuthorizationPolicy extends pulumi.CustomResource {
  /// The action to take when a rule match is found. Possible values are "ALLOW" or "DENY".
  /// Possible values are: `ALLOW`, `DENY`.
  late final pulumi.Output<String> action;

  /// Time the AuthorizationPolicy was created in UTC.
  late final pulumi.Output<String> createTime;

  /// A free-text description of the resource. Max length 1024 characters.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Set of label tags associated with the AuthorizationPolicy resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The location of the authorization policy.
  /// The default value is `global`.
  late final pulumi.Output<String?> location;

  /// Name of the AuthorizationPolicy resource.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// List of rules to match. Note that at least one of the rules must match in order for the action specified in the 'action' field to be taken.
  /// A rule is a match if there is a matching source and destination. If left blank, the action specified in the action field will be applied on every request.
  /// Structure is documented below.
  late final pulumi.Output<List<AuthorizationPolicyRule>?> rules;

  /// Time the AuthorizationPolicy was updated in UTC.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [AuthorizationPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AuthorizationPolicy]. {@macro pulumi_networksecurity_authorization_policy_authorization_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AuthorizationPolicy(
    String name, {
    AuthorizationPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/authorizationPolicy:AuthorizationPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.action = registerOutput<String>('action');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.rules = registerOutput<List<AuthorizationPolicyRule>?>('rules');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
