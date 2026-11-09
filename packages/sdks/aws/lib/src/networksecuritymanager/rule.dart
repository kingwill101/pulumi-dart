import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_args.dart';
import 'rule_state.dart';

/// Manages an AWS Network Security Manager Rule. A rule defines a firewall configuration to enforce, such as an AWS WAF web ACL setting or an AWS WAF rule group. Rules can be grouped into templates and referenced from policies.
///
/// Every change to a rule publishes a new version of the rule. The resource never leaves an unpublished draft version behind.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networksecuritymanager.Rule("example", {
///     name: "example",
///     description: "Allow requests that match no other rule",
///     firewallType: "WAF",
///     type: "CONFIGURATION",
///     configuration: JSON.stringify({
///         DefaultAction: {
///             Allow: {},
///         },
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.networksecuritymanager.Rule("example",
///     name="example",
///     description="Allow requests that match no other rule",
///     firewall_type="WAF",
///     type="CONFIGURATION",
///     configuration=json.dumps({
///         "DefaultAction": {
///             "Allow": {},
///         },
///     }))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.NetworkSecurityManager.Rule("example", new()
///     {
///         Name = "example",
///         Description = "Allow requests that match no other rule",
///         FirewallType = "WAF",
///         Type = "CONFIGURATION",
///         Configuration = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["DefaultAction"] = new Dictionary<string, object?>
///             {
///                 ["Allow"] = new Dictionary<string, object?>
///                 {
///                 },
///             },
///         }),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networksecuritymanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]map[string]map[string]interface{}{
/// 			"DefaultAction": map[string]map[string]interface{}{
/// 				"Allow": map[string]interface{}{},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = networksecuritymanager.NewRule(ctx, "example", &networksecuritymanager.RuleArgs{
/// 			Name:          pulumi.String("example"),
/// 			Description:   pulumi.String("Allow requests that match no other rule"),
/// 			FirewallType:  pulumi.String("WAF"),
/// 			Type:          pulumi.String("CONFIGURATION"),
/// 			Configuration: pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_networksecuritymanager_rule" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name          = "example"
///   description   = "Allow requests that match no other rule"
///   firewall_type = "WAF"
///   type          = "CONFIGURATION"
///   configuration = jsonencode({
///     "DefaultAction" = {
///       "Allow" = {}
///     }
///   })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.networksecuritymanager.Rule;
/// import com.pulumi.aws.networksecuritymanager.RuleArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new Rule("example", RuleArgs.builder()
///             .name("example")
///             .description("Allow requests that match no other rule")
///             .firewallType("WAF")
///             .type("CONFIGURATION")
///             .configuration(serializeJson(
///                 jsonObject(
///                     jsonProperty("DefaultAction", jsonObject(
///                         jsonProperty("Allow", jsonObject(
///
///                         ))
///                     ))
///                 )))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:networksecuritymanager:Rule
///     properties:
///       name: example
///       description: Allow requests that match no other rule
///       firewallType: WAF
///       type: CONFIGURATION
///       configuration:
///         fn::toJSON:
///           DefaultAction:
///             Allow: {}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `arn` (String) ARN of the rule.
///
///
/// Using `pulumi import`, import Network Security Manager Rule using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:networksecuritymanager/rule:Rule example arn:aws:network-security-manager:us-east-1:123456789012:rule:0123456789abcdef
/// ```
class Rule extends pulumi.CustomResource {
  /// ARN of the rule.
  late final pulumi.Output<String> arn;
  /// Firewall configuration of the rule, as a JSON document. The structure depends on `firewallType` and `type`. For an AWS WAF `CONFIGURATION` rule, provide a single web ACL setting, such as `DefaultAction` or `VisibilityConfig`. For an AWS WAF `INSPECTION` rule, provide an AWS WAF rule group. For details, see [Writing rule configurations](https://docs.aws.amazon.com/network-security-manager/latest/devguide/what-is.html) in the AWS Network Security Manager Developer Guide. Changes made to the configuration outside of Terraform are not detected.
  late final pulumi.Output<String> configuration;
  /// Description of the rule.
  late final pulumi.Output<String?> description;
  /// Firewall type of the rule. Valid values: `WAF`.
  late final pulumi.Output<String> firewallType;
  /// Whether to publish the rule. When `true`, the rule is saved in the published (`ACTIVE`) state. When `false`, it is saved as a draft (`DRAFT`); for a published rule, the draft is saved on top of the published version. Defaults to `true`.
  late final pulumi.Output<bool> isPublished;
  /// Name of the rule.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Type of the rule. `CONFIGURATION` rules contain firewall settings and `INSPECTION` rules contain rule groups. Valid values: `CONFIGURATION`, `INSPECTION`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> type;

  /// Creates a new [Rule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Rule]. {@macro pulumi_networksecuritymanager_rule_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Rule(
    String name, {
    RuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networksecuritymanager/rule:Rule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.54.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    configuration = registerOutput<String>('configuration');
    description = registerOutput<String?>('description');
    firewallType = registerOutput<String>('firewallType');
    isPublished = registerOutput<bool>('isPublished');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Gets an existing [Rule] resource's state with the given [name] and [id].
  static Rule get(
    String name,
    pulumi.Input<String> id, {
    RuleState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Rule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Rule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networksecuritymanager/rule:Rule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    configuration = registerOutput<String>('configuration');
    description = registerOutput<String?>('description');
    firewallType = registerOutput<String>('firewallType');
    isPublished = registerOutput<bool>('isPublished');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [Rule] resource.
  Rule.reference(String urn)
    : super(
        'aws:networksecuritymanager/rule:Rule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    configuration = registerOutput<String>('configuration');
    description = registerOutput<String?>('description');
    firewallType = registerOutput<String>('firewallType');
    isPublished = registerOutput<bool>('isPublished');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
