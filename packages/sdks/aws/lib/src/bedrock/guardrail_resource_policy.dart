import 'package:pulumi/pulumi.dart' as pulumi;
import 'guardrail_resource_policy_args.dart';
import 'guardrail_resource_policy_state.dart';

/// Manages a resource-based policy (RBP) on an Amazon Bedrock guardrail or system-defined guardrail profile.
///
/// Resource-based policies are required for organization-level enforced guardrails (an AWS Organizations policy of type `BEDROCK_POLICY`). Member accounts must be granted `bedrock:ApplyGuardrail` on the guardrail (and, when Cross-Region Inference is enabled, on the associated guardrail profile) that lives in the management account.
///
/// ## Example Usage
///
/// ### Guardrail RBP for Organization Enforcement
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.bedrock.Guardrail("example", {
///     contentPolicyConfig: {
///         filtersConfigs: [{
///             type: "VIOLENCE",
///             inputStrength: "HIGH",
///             outputStrength: "HIGH",
///         }],
///     },
///     name: "org-guardrail",
///     blockedInputMessaging: "Blocked.",
///     blockedOutputsMessaging: "Blocked.",
/// });
/// const current = aws.organizations.getOrganization({});
/// const exampleGuardrailResourcePolicy = new aws.bedrock.GuardrailResourcePolicy("example", {
///     resourceArn: example.guardrailArn,
///     policy: pulumi.jsonStringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Effect: "Allow",
///             Principal: "*",
///             Action: [
///                 "bedrock:GetGuardrail",
///                 "bedrock:ApplyGuardrail",
///             ],
///             Resource: example.guardrailArn,
///             Condition: {
///                 StringEquals: {
///                     "aws:PrincipalOrgID": current.then(current => current.id),
///                 },
///             },
///         }],
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.bedrock.Guardrail("example",
///     content_policy_config={
///         "filters_configs": [{
///             "type": "VIOLENCE",
///             "input_strength": "HIGH",
///             "output_strength": "HIGH",
///         }],
///     },
///     name="org-guardrail",
///     blocked_input_messaging="Blocked.",
///     blocked_outputs_messaging="Blocked.")
/// current = aws.organizations.get_organization()
/// example_guardrail_resource_policy = aws.bedrock.GuardrailResourcePolicy("example",
///     resource_arn=example.guardrail_arn,
///     policy=pulumi.Output.json_dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Effect": "Allow",
///             "Principal": "*",
///             "Action": [
///                 "bedrock:GetGuardrail",
///                 "bedrock:ApplyGuardrail",
///             ],
///             "Resource": example.guardrail_arn,
///             "Condition": {
///                 "StringEquals": {
///                     "aws:PrincipalOrgID": current.id,
///                 },
///             },
///         }],
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
///     var example = new Aws.Bedrock.Guardrail("example", new()
///     {
///         ContentPolicyConfig = new Aws.Bedrock.Inputs.GuardrailContentPolicyConfigArgs
///         {
///             FiltersConfigs = new[]
///             {
///                 new Aws.Bedrock.Inputs.GuardrailContentPolicyConfigFiltersConfigArgs
///                 {
///                     Type = "VIOLENCE",
///                     InputStrength = "HIGH",
///                     OutputStrength = "HIGH",
///                 },
///             },
///         },
///         Name = "org-guardrail",
///         BlockedInputMessaging = "Blocked.",
///         BlockedOutputsMessaging = "Blocked.",
///     });
///
///     var current = Aws.Organizations.GetOrganization.Invoke();
///
///     var exampleGuardrailResourcePolicy = new Aws.Bedrock.GuardrailResourcePolicy("example", new()
///     {
///         ResourceArn = example.GuardrailArn,
///         Policy = Output.JsonSerialize(Output.Create(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Effect"] = "Allow",
///                     ["Principal"] = "*",
///                     ["Action"] = new[]
///                     {
///                         "bedrock:GetGuardrail",
///                         "bedrock:ApplyGuardrail",
///                     },
///                     ["Resource"] = example.GuardrailArn,
///                     ["Condition"] = new Dictionary<string, object?>
///                     {
///                         ["StringEquals"] = new Dictionary<string, object?>
///                         {
///                             ["aws:PrincipalOrgID"] = current.Apply(getOrganizationResult => getOrganizationResult.Id),
///                         },
///                     },
///                 },
///             },
///         })),
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := bedrock.NewGuardrail(ctx, "example", &bedrock.GuardrailArgs{
/// 			ContentPolicyConfig: &bedrock.GuardrailContentPolicyConfigArgs{
/// 				FiltersConfigs: bedrock.GuardrailContentPolicyConfigFiltersConfigArray{
/// 					&bedrock.GuardrailContentPolicyConfigFiltersConfigArgs{
/// 						Type:           pulumi.String("VIOLENCE"),
/// 						InputStrength:  pulumi.String("HIGH"),
/// 						OutputStrength: pulumi.String("HIGH"),
/// 					},
/// 				},
/// 			},
/// 			Name:                    pulumi.String("org-guardrail"),
/// 			BlockedInputMessaging:   pulumi.String("Blocked."),
/// 			BlockedOutputsMessaging: pulumi.String("Blocked."),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		current, err := organizations.LookupOrganization(ctx, &organizations.LookupOrganizationArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bedrock.NewGuardrailResourcePolicy(ctx, "example", &bedrock.GuardrailResourcePolicyArgs{
/// 			ResourceArn: example.GuardrailArn,
/// 			Policy: example.GuardrailArn.ApplyT(func(guardrailArn string) (pulumi.String, error) {
/// 				var _zero pulumi.String
/// 				tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 					"Version": "2012-10-17",
/// 					"Statement": []map[string]interface{}{
/// 						map[string]interface{}{
/// 							"Effect":    "Allow",
/// 							"Principal": "*",
/// 							"Action": []string{
/// 								"bedrock:GetGuardrail",
/// 								"bedrock:ApplyGuardrail",
/// 							},
/// 							"Resource": guardrailArn,
/// 							"Condition": map[string]map[string]interface{}{
/// 								"StringEquals": map[string]interface{}{
/// 									"aws:PrincipalOrgID": current.Id,
/// 								},
/// 							},
/// 						},
/// 					},
/// 				})
/// 				if err != nil {
/// 					return _zero, err
/// 				}
/// 				json0 := string(tmpJSON0)
/// 				return pulumi.String(json0), nil
/// 			}).(pulumi.StringOutput),
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
/// data "aws_organizations_organization" "current" {
/// }
///
/// resource "aws_bedrock_guardrail" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   content_policy_config {
///     filters_config {
///       type            = "VIOLENCE"
///       input_strength  = "HIGH"
///       output_strength = "HIGH"
///     }
///   }
///   name                      = "org-guardrail"
///   blocked_input_messaging   = "Blocked."
///   blocked_outputs_messaging = "Blocked."
/// }
/// resource "aws_bedrock_guardrail_resource_policy" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   resource_arn = aws_bedrock_guardrail.example.guardrail_arn
///   policy = jsonencode({
///     "Version" = "2012-10-17"
///     "Statement" = [{
///       "Effect"    = "Allow"
///       "Principal" = "*"
///       "Action"    = ["bedrock:GetGuardrail", "bedrock:ApplyGuardrail"]
///       "Resource"  = aws_bedrock_guardrail.example.guardrail_arn
///       "Condition" = {
///         "StringEquals" = {
///           "aws:PrincipalOrgID" = data.aws_organizations_organization.current.id
///         }
///       }
///     }]
///   })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrock.Guardrail;
/// import com.pulumi.aws.bedrock.GuardrailArgs;
/// import com.pulumi.aws.bedrock.inputs.GuardrailContentPolicyConfigArgs;
/// import com.pulumi.aws.bedrock.inputs.GuardrailContentPolicyConfigFiltersConfigArgs;
/// import com.pulumi.aws.organizations.OrganizationsFunctions;
/// import com.pulumi.aws.organizations.inputs.GetOrganizationArgs;
/// import com.pulumi.aws.bedrock.GuardrailResourcePolicy;
/// import com.pulumi.aws.bedrock.GuardrailResourcePolicyArgs;
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
///         var example = new Guardrail("example", GuardrailArgs.builder()
///             .contentPolicyConfig(GuardrailContentPolicyConfigArgs.builder()
///                 .filtersConfigs(GuardrailContentPolicyConfigFiltersConfigArgs.builder()
///                     .type("VIOLENCE")
///                     .inputStrength("HIGH")
///                     .outputStrength("HIGH")
///                     .build())
///                 .build())
///             .name("org-guardrail")
///             .blockedInputMessaging("Blocked.")
///             .blockedOutputsMessaging("Blocked.")
///             .build());
///
///         final var current = OrganizationsFunctions.getOrganization(GetOrganizationArgs.builder()
///             .build());
///
///         var exampleGuardrailResourcePolicy = new GuardrailResourcePolicy("exampleGuardrailResourcePolicy", GuardrailResourcePolicyArgs.builder()
///             .resourceArn(example.guardrailArn())
///             .policy(example.guardrailArn().applyValue(_guardrailArn -> serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Principal", "*"),
///                         jsonProperty("Action", jsonArray(
///                             "bedrock:GetGuardrail",
///                             "bedrock:ApplyGuardrail"
///                         )),
///                         jsonProperty("Resource", _guardrailArn),
///                         jsonProperty("Condition", jsonObject(
///                             jsonProperty("StringEquals", jsonObject(
///                                 jsonProperty("aws:PrincipalOrgID", current.id())
///                             ))
///                         ))
///                     )))
///                 ))))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:bedrock:Guardrail
///     properties:
///       contentPolicyConfig:
///         filtersConfigs:
///           - type: VIOLENCE
///             inputStrength: HIGH
///             outputStrength: HIGH
///       name: org-guardrail
///       blockedInputMessaging: Blocked.
///       blockedOutputsMessaging: Blocked.
///   exampleGuardrailResourcePolicy:
///     type: aws:bedrock:GuardrailResourcePolicy
///     name: example
///     properties:
///       resourceArn: ${example.guardrailArn}
///       policy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Effect: Allow
///               Principal: '*'
///               Action:
///                 - bedrock:GetGuardrail
///                 - bedrock:ApplyGuardrail
///               Resource: ${example.guardrailArn}
///               Condition:
///                 StringEquals:
///                   aws:PrincipalOrgID: ${current.id}
/// variables:
///   current:
///     fn::invoke:
///       function: aws:organizations:getOrganization
///       arguments: {}
/// ```
///
///
/// ### Guardrail Profile RBP for Cross-Region Inference
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.bedrock.Guardrail("example", {
///     contentPolicyConfig: {
///         filtersConfigs: [{
///             type: "VIOLENCE",
///             inputStrength: "HIGH",
///             outputStrength: "HIGH",
///         }],
///     },
///     crossRegionConfig: {
///         guardrailProfileIdentifier: "arn:aws:bedrock:us-east-1:123456789012:guardrail-profile/us.guardrail.v1:0",
///     },
///     name: "org-guardrail",
///     blockedInputMessaging: "Blocked.",
///     blockedOutputsMessaging: "Blocked.",
/// });
/// const current = aws.organizations.getOrganization({});
/// const profile = new aws.bedrock.GuardrailResourcePolicy("profile", {
///     resourceArn: example.crossRegionConfig.apply(crossRegionConfig => crossRegionConfig?.guardrailProfileIdentifier),
///     policy: pulumi.jsonStringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Effect: "Allow",
///             Principal: "*",
///             Action: ["bedrock:ApplyGuardrail"],
///             Resource: example.crossRegionConfig.apply(crossRegionConfig => crossRegionConfig?.guardrailProfileIdentifier),
///             Condition: {
///                 StringEquals: {
///                     "aws:PrincipalOrgID": current.then(current => current.id),
///                 },
///             },
///         }],
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.bedrock.Guardrail("example",
///     content_policy_config={
///         "filters_configs": [{
///             "type": "VIOLENCE",
///             "input_strength": "HIGH",
///             "output_strength": "HIGH",
///         }],
///     },
///     cross_region_config={
///         "guardrail_profile_identifier": "arn:aws:bedrock:us-east-1:123456789012:guardrail-profile/us.guardrail.v1:0",
///     },
///     name="org-guardrail",
///     blocked_input_messaging="Blocked.",
///     blocked_outputs_messaging="Blocked.")
/// current = aws.organizations.get_organization()
/// profile = aws.bedrock.GuardrailResourcePolicy("profile",
///     resource_arn=example.cross_region_config.guardrail_profile_identifier,
///     policy=pulumi.Output.json_dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Effect": "Allow",
///             "Principal": "*",
///             "Action": ["bedrock:ApplyGuardrail"],
///             "Resource": example.cross_region_config.guardrail_profile_identifier,
///             "Condition": {
///                 "StringEquals": {
///                     "aws:PrincipalOrgID": current.id,
///                 },
///             },
///         }],
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
///     var example = new Aws.Bedrock.Guardrail("example", new()
///     {
///         ContentPolicyConfig = new Aws.Bedrock.Inputs.GuardrailContentPolicyConfigArgs
///         {
///             FiltersConfigs = new[]
///             {
///                 new Aws.Bedrock.Inputs.GuardrailContentPolicyConfigFiltersConfigArgs
///                 {
///                     Type = "VIOLENCE",
///                     InputStrength = "HIGH",
///                     OutputStrength = "HIGH",
///                 },
///             },
///         },
///         CrossRegionConfig = new Aws.Bedrock.Inputs.GuardrailCrossRegionConfigArgs
///         {
///             GuardrailProfileIdentifier = "arn:aws:bedrock:us-east-1:123456789012:guardrail-profile/us.guardrail.v1:0",
///         },
///         Name = "org-guardrail",
///         BlockedInputMessaging = "Blocked.",
///         BlockedOutputsMessaging = "Blocked.",
///     });
///
///     var current = Aws.Organizations.GetOrganization.Invoke();
///
///     var profile = new Aws.Bedrock.GuardrailResourcePolicy("profile", new()
///     {
///         ResourceArn = example.CrossRegionConfig.Apply(crossRegionConfig => crossRegionConfig?.GuardrailProfileIdentifier),
///         Policy = Output.JsonSerialize(Output.Create(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Effect"] = "Allow",
///                     ["Principal"] = "*",
///                     ["Action"] = new[]
///                     {
///                         "bedrock:ApplyGuardrail",
///                     },
///                     ["Resource"] = example.CrossRegionConfig.Apply(crossRegionConfig => crossRegionConfig?.GuardrailProfileIdentifier),
///                     ["Condition"] = new Dictionary<string, object?>
///                     {
///                         ["StringEquals"] = new Dictionary<string, object?>
///                         {
///                             ["aws:PrincipalOrgID"] = current.Apply(getOrganizationResult => getOrganizationResult.Id),
///                         },
///                     },
///                 },
///             },
///         })),
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := bedrock.NewGuardrail(ctx, "example", &bedrock.GuardrailArgs{
/// 			ContentPolicyConfig: &bedrock.GuardrailContentPolicyConfigArgs{
/// 				FiltersConfigs: bedrock.GuardrailContentPolicyConfigFiltersConfigArray{
/// 					&bedrock.GuardrailContentPolicyConfigFiltersConfigArgs{
/// 						Type:           pulumi.String("VIOLENCE"),
/// 						InputStrength:  pulumi.String("HIGH"),
/// 						OutputStrength: pulumi.String("HIGH"),
/// 					},
/// 				},
/// 			},
/// 			CrossRegionConfig: &bedrock.GuardrailCrossRegionConfigArgs{
/// 				GuardrailProfileIdentifier: pulumi.String("arn:aws:bedrock:us-east-1:123456789012:guardrail-profile/us.guardrail.v1:0"),
/// 			},
/// 			Name:                    pulumi.String("org-guardrail"),
/// 			BlockedInputMessaging:   pulumi.String("Blocked."),
/// 			BlockedOutputsMessaging: pulumi.String("Blocked."),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		current, err := organizations.LookupOrganization(ctx, &organizations.LookupOrganizationArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bedrock.NewGuardrailResourcePolicy(ctx, "profile", &bedrock.GuardrailResourcePolicyArgs{
/// 			ResourceArn: example.CrossRegionConfig.GuardrailProfileIdentifier(),
/// 			Policy: example.CrossRegionConfig.ApplyT(func(crossRegionConfig *bedrock.GuardrailCrossRegionConfig) (pulumi.String, error) {
/// 				var _zero pulumi.String
/// 				tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 					"Version": "2012-10-17",
/// 					"Statement": []map[string]interface{}{
/// 						map[string]interface{}{
/// 							"Effect":    "Allow",
/// 							"Principal": "*",
/// 							"Action": []string{
/// 								"bedrock:ApplyGuardrail",
/// 							},
/// 							"Resource": crossRegionConfig.GuardrailProfileIdentifier,
/// 							"Condition": map[string]map[string]interface{}{
/// 								"StringEquals": map[string]interface{}{
/// 									"aws:PrincipalOrgID": current.Id,
/// 								},
/// 							},
/// 						},
/// 					},
/// 				})
/// 				if err != nil {
/// 					return _zero, err
/// 				}
/// 				json0 := string(tmpJSON0)
/// 				return pulumi.String(json0), nil
/// 			}).(pulumi.StringOutput),
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
/// data "aws_organizations_organization" "current" {
/// }
///
/// resource "aws_bedrock_guardrail" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   content_policy_config {
///     filters_config {
///       type            = "VIOLENCE"
///       input_strength  = "HIGH"
///       output_strength = "HIGH"
///     }
///   }
///   cross_region_config {
///     guardrail_profile_identifier = "arn:aws:bedrock:us-east-1:123456789012:guardrail-profile/us.guardrail.v1:0"
///   }
///   name                      = "org-guardrail"
///   blocked_input_messaging   = "Blocked."
///   blocked_outputs_messaging = "Blocked."
/// }
/// resource "aws_bedrock_guardrail_resource_policy" "profile" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   resource_arn = aws_bedrock_guardrail.example.cross_region_config[0].guardrail_profile_identifier
///   policy = jsonencode({
///     "Version" = "2012-10-17"
///     "Statement" = [{
///       "Effect"    = "Allow"
///       "Principal" = "*"
///       "Action"    = ["bedrock:ApplyGuardrail"]
///       "Resource"  = aws_bedrock_guardrail.example.cross_region_config[0].guardrail_profile_identifier
///       "Condition" = {
///         "StringEquals" = {
///           "aws:PrincipalOrgID" = data.aws_organizations_organization.current.id
///         }
///       }
///     }]
///   })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrock.Guardrail;
/// import com.pulumi.aws.bedrock.GuardrailArgs;
/// import com.pulumi.aws.bedrock.inputs.GuardrailContentPolicyConfigArgs;
/// import com.pulumi.aws.bedrock.inputs.GuardrailContentPolicyConfigFiltersConfigArgs;
/// import com.pulumi.aws.bedrock.inputs.GuardrailCrossRegionConfigArgs;
/// import com.pulumi.aws.organizations.OrganizationsFunctions;
/// import com.pulumi.aws.organizations.inputs.GetOrganizationArgs;
/// import com.pulumi.aws.bedrock.GuardrailResourcePolicy;
/// import com.pulumi.aws.bedrock.GuardrailResourcePolicyArgs;
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
///         var example = new Guardrail("example", GuardrailArgs.builder()
///             .contentPolicyConfig(GuardrailContentPolicyConfigArgs.builder()
///                 .filtersConfigs(GuardrailContentPolicyConfigFiltersConfigArgs.builder()
///                     .type("VIOLENCE")
///                     .inputStrength("HIGH")
///                     .outputStrength("HIGH")
///                     .build())
///                 .build())
///             .crossRegionConfig(GuardrailCrossRegionConfigArgs.builder()
///                 .guardrailProfileIdentifier("arn:aws:bedrock:us-east-1:123456789012:guardrail-profile/us.guardrail.v1:0")
///                 .build())
///             .name("org-guardrail")
///             .blockedInputMessaging("Blocked.")
///             .blockedOutputsMessaging("Blocked.")
///             .build());
///
///         final var current = OrganizationsFunctions.getOrganization(GetOrganizationArgs.builder()
///             .build());
///
///         var profile = new GuardrailResourcePolicy("profile", GuardrailResourcePolicyArgs.builder()
///             .resourceArn(example.crossRegionConfig().applyValue(_crossRegionConfig -> _crossRegionConfig.guardrailProfileIdentifier()))
///             .policy(example.crossRegionConfig().applyValue(_crossRegionConfig -> serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Principal", "*"),
///                         jsonProperty("Action", jsonArray("bedrock:ApplyGuardrail")),
///                         jsonProperty("Resource", _crossRegionConfig.guardrailProfileIdentifier()),
///                         jsonProperty("Condition", jsonObject(
///                             jsonProperty("StringEquals", jsonObject(
///                                 jsonProperty("aws:PrincipalOrgID", current.id())
///                             ))
///                         ))
///                     )))
///                 ))))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:bedrock:Guardrail
///     properties:
///       contentPolicyConfig:
///         filtersConfigs:
///           - type: VIOLENCE
///             inputStrength: HIGH
///             outputStrength: HIGH
///       crossRegionConfig:
///         guardrailProfileIdentifier: arn:aws:bedrock:us-east-1:123456789012:guardrail-profile/us.guardrail.v1:0
///       name: org-guardrail
///       blockedInputMessaging: Blocked.
///       blockedOutputsMessaging: Blocked.
///   profile:
///     type: aws:bedrock:GuardrailResourcePolicy
///     properties:
///       resourceArn: ${example.crossRegionConfig.guardrailProfileIdentifier}
///       policy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Effect: Allow
///               Principal: '*'
///               Action:
///                 - bedrock:ApplyGuardrail
///               Resource: ${example.crossRegionConfig.guardrailProfileIdentifier}
///               Condition:
///                 StringEquals:
///                   aws:PrincipalOrgID: ${current.id}
/// variables:
///   current:
///     fn::invoke:
///       function: aws:organizations:getOrganization
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `resourceArn` (String) ARN of the guardrail or guardrail profile to which the resource policy is attached.
///
///
/// Using `pulumi import`, import Bedrock Guardrail Resource Policy using the `resourceArn`. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/guardrailResourcePolicy:GuardrailResourcePolicy example arn:aws:bedrock:us-east-1:123456789012:guardrail/abc123
/// ```
class GuardrailResourcePolicy extends pulumi.CustomResource {
  /// JSON policy document. This is a resource-based policy granting other principals (e.g., all principals in an AWS Organization) permission to call Bedrock APIs on this resource.
  late final pulumi.Output<String> policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN of the Bedrock resource to attach the policy to. This can be a guardrail ARN or a system-defined guardrail profile ARN.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> resourceArn;

  /// Creates a new [GuardrailResourcePolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GuardrailResourcePolicy]. {@macro pulumi_bedrock_guardrail_resource_policy_guardrail_resource_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GuardrailResourcePolicy(
    String name, {
    GuardrailResourcePolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/guardrailResourcePolicy:GuardrailResourcePolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.55.0').merge(options),
        ) {
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String>('resourceArn');
  }

  /// Gets an existing [GuardrailResourcePolicy] resource's state with the given [name] and [id].
  static GuardrailResourcePolicy get(
    String name,
    pulumi.Input<String> id, {
    GuardrailResourcePolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return GuardrailResourcePolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  GuardrailResourcePolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/guardrailResourcePolicy:GuardrailResourcePolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String>('resourceArn');
  }

  /// Creates a typed reference to an existing [GuardrailResourcePolicy] resource.
  GuardrailResourcePolicy.reference(String urn)
    : super(
        'aws:bedrock/guardrailResourcePolicy:GuardrailResourcePolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String>('resourceArn');
  }
}
