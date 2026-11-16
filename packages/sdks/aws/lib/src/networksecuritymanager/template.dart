import 'package:pulumi/pulumi.dart' as pulumi;
import 'template_args.dart';
import 'template_state.dart';

/// Manages an AWS Network Security Manager Template. A template groups one or more rules so they can be reused across policies.
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
///     firewallType: "WAF",
///     type: "CONFIGURATION",
///     configuration: JSON.stringify({
///         DefaultAction: {
///             Allow: {},
///         },
///     }),
/// });
/// const exampleTemplate = new aws.networksecuritymanager.Template("example", {
///     name: "example",
///     description: "Baseline web ACL settings",
///     firewallType: "WAF",
///     ruleArns: [example.arn],
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.networksecuritymanager.Rule("example",
///     name="example",
///     firewall_type="WAF",
///     type="CONFIGURATION",
///     configuration=json.dumps({
///         "DefaultAction": {
///             "Allow": {},
///         },
///     }))
/// example_template = aws.networksecuritymanager.Template("example",
///     name="example",
///     description="Baseline web ACL settings",
///     firewall_type="WAF",
///     rule_arns=[example.arn])
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
///     var exampleTemplate = new Aws.NetworkSecurityManager.Template("example", new()
///     {
///         Name = "example",
///         Description = "Baseline web ACL settings",
///         FirewallType = "WAF",
///         RuleArns = new[]
///         {
///             example.Arn,
///         },
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
/// 		example, err := networksecuritymanager.NewRule(ctx, "example", &networksecuritymanager.RuleArgs{
/// 			Name:          pulumi.String("example"),
/// 			FirewallType:  pulumi.String("WAF"),
/// 			Type:          pulumi.String("CONFIGURATION"),
/// 			Configuration: pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networksecuritymanager.NewTemplate(ctx, "example", &networksecuritymanager.TemplateArgs{
/// 			Name:         pulumi.String("example"),
/// 			Description:  pulumi.String("Baseline web ACL settings"),
/// 			FirewallType: pulumi.String("WAF"),
/// 			RuleArns: pulumi.StringArray{
/// 				example.Arn,
/// 			},
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
///   firewall_type = "WAF"
///   type          = "CONFIGURATION"
///   configuration = jsonencode({
///     "DefaultAction" = {
///       "Allow" = {}
///     }
///   })
/// }
/// resource "aws_networksecuritymanager_template" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name          = "example"
///   description   = "Baseline web ACL settings"
///   firewall_type = "WAF"
///   rule_arns     = [aws_networksecuritymanager_rule.example.arn]
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
/// import com.pulumi.aws.networksecuritymanager.Template;
/// import com.pulumi.aws.networksecuritymanager.TemplateArgs;
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
///         var exampleTemplate = new Template("exampleTemplate", TemplateArgs.builder()
///             .name("example")
///             .description("Baseline web ACL settings")
///             .firewallType("WAF")
///             .ruleArns(example.arn())
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
///       firewallType: WAF
///       type: CONFIGURATION
///       configuration:
///         fn::toJSON:
///           DefaultAction:
///             Allow: {}
///   exampleTemplate:
///     type: aws:networksecuritymanager:Template
///     name: example
///     properties:
///       name: example
///       description: Baseline web ACL settings
///       firewallType: WAF
///       ruleArns:
///         - ${example.arn}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `arn` (String) ARN of the template.
///
///
/// Using `pulumi import`, import Network Security Manager Template using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:networksecuritymanager/template:Template example arn:aws:network-security-manager:us-east-1:123456789012:template:0123456789abcdef
/// ```
class Template extends pulumi.CustomResource {
  /// ARN of the template.
  late final pulumi.Output<String> arn;
  /// Description of the template.
  late final pulumi.Output<String?> description;
  /// Firewall type of the template. Valid values: `WAF`.
  late final pulumi.Output<String> firewallType;
  /// Whether to publish the template. When `true`, the template is saved in the published (`ACTIVE`) state. When `false`, it is saved as a draft (`DRAFT`); for a published template, the draft is saved on top of the published version. Defaults to `true`.
  late final pulumi.Output<bool> isPublished;
  /// Name of the template.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Ordered list of ARNs of the rules to associate with the template. Specify 1 to 50 rules. Each rule can be associated only once.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<List<String>> ruleArns;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Template].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Template]. {@macro pulumi_networksecuritymanager_template_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Template(
    String name, {
    TemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networksecuritymanager/template:Template',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.55.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    firewallType = registerOutput<String>('firewallType');
    isPublished = registerOutput<bool>('isPublished');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    ruleArns = registerOutput<List<String>>('ruleArns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [Template] resource's state with the given [name] and [id].
  static Template get(
    String name,
    pulumi.Input<String> id, {
    TemplateState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Template._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Template._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networksecuritymanager/template:Template',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    firewallType = registerOutput<String>('firewallType');
    isPublished = registerOutput<bool>('isPublished');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    ruleArns = registerOutput<List<String>>('ruleArns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [Template] resource.
  Template.reference(String urn)
    : super(
        'aws:networksecuritymanager/template:Template',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    firewallType = registerOutput<String>('firewallType');
    isPublished = registerOutput<bool>('isPublished');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    ruleArns = registerOutput<List<String>>('ruleArns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
