import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_args.dart';
import 'domain_single_sign_on.dart';
import 'domain_timeouts.dart';

/// Resource for managing an AWS DataZone Domain.
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
/// const domainExecutionRole = new aws.iam.Role("domain_execution_role", {
///     name: "my_domain_execution_role",
///     assumeRolePolicy: JSON.stringify({
///         Version: "2012-10-17",
///         Statement: [
///             {
///                 Action: [
///                     "sts:AssumeRole",
///                     "sts:TagSession",
///                 ],
///                 Effect: "Allow",
///                 Principal: {
///                     Service: "datazone.amazonaws.com",
///                 },
///             },
///             {
///                 Action: [
///                     "sts:AssumeRole",
///                     "sts:TagSession",
///                 ],
///                 Effect: "Allow",
///                 Principal: {
///                     Service: "cloudformation.amazonaws.com",
///                 },
///             },
///         ],
///     }),
/// });
/// const domainExecutionRoleRolePolicy = new aws.iam.RolePolicy("domain_execution_role", {
///     role: domainExecutionRole.name,
///     policy: JSON.stringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Action: [
///                 "datazone:*",
///                 "ram:*",
///                 "sso:*",
///                 "kms:*",
///             ],
///             Effect: "Allow",
///             Resource: "*",
///         }],
///     }),
/// });
/// const example = new aws.datazone.Domain("example", {
///     name: "example",
///     domainExecutionRole: domainExecutionRole.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// domain_execution_role = aws.iam.Role("domain_execution_role",
///     name="my_domain_execution_role",
///     assume_role_policy=json.dumps({
///         "Version": "2012-10-17",
///         "Statement": [
///             {
///                 "Action": [
///                     "sts:AssumeRole",
///                     "sts:TagSession",
///                 ],
///                 "Effect": "Allow",
///                 "Principal": {
///                     "Service": "datazone.amazonaws.com",
///                 },
///             },
///             {
///                 "Action": [
///                     "sts:AssumeRole",
///                     "sts:TagSession",
///                 ],
///                 "Effect": "Allow",
///                 "Principal": {
///                     "Service": "cloudformation.amazonaws.com",
///                 },
///             },
///         ],
///     }))
/// domain_execution_role_role_policy = aws.iam.RolePolicy("domain_execution_role",
///     role=domain_execution_role.name,
///     policy=json.dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Action": [
///                 "datazone:*",
///                 "ram:*",
///                 "sso:*",
///                 "kms:*",
///             ],
///             "Effect": "Allow",
///             "Resource": "*",
///         }],
///     }))
/// example = aws.datazone.Domain("example",
///     name="example",
///     domain_execution_role=domain_execution_role.arn)
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
///     var domainExecutionRole = new Aws.Iam.Role("domain_execution_role", new()
///     {
///         Name = "my_domain_execution_role",
///         AssumeRolePolicy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Action"] = new[]
///                     {
///                         "sts:AssumeRole",
///                         "sts:TagSession",
///                     },
///                     ["Effect"] = "Allow",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["Service"] = "datazone.amazonaws.com",
///                     },
///                 },
///                 new Dictionary<string, object?>
///                 {
///                     ["Action"] = new[]
///                     {
///                         "sts:AssumeRole",
///                         "sts:TagSession",
///                     },
///                     ["Effect"] = "Allow",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["Service"] = "cloudformation.amazonaws.com",
///                     },
///                 },
///             },
///         }),
///     });
///
///     var domainExecutionRoleRolePolicy = new Aws.Iam.RolePolicy("domain_execution_role", new()
///     {
///         Role = domainExecutionRole.Name,
///         Policy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Action"] = new[]
///                     {
///                         "datazone:*",
///                         "ram:*",
///                         "sso:*",
///                         "kms:*",
///                     },
///                     ["Effect"] = "Allow",
///                     ["Resource"] = "*",
///                 },
///             },
///         }),
///     });
///
///     var example = new Aws.DataZone.Domain("example", new()
///     {
///         Name = "example",
///         DomainExecutionRole = domainExecutionRole.Arn,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/datazone"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Version": "2012-10-17",
/// 			"Statement": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Action": []string{
/// 						"sts:AssumeRole",
/// 						"sts:TagSession",
/// 					},
/// 					"Effect": "Allow",
/// 					"Principal": map[string]interface{}{
/// 						"Service": "datazone.amazonaws.com",
/// 					},
/// 				},
/// 				map[string]interface{}{
/// 					"Action": []string{
/// 						"sts:AssumeRole",
/// 						"sts:TagSession",
/// 					},
/// 					"Effect": "Allow",
/// 					"Principal": map[string]interface{}{
/// 						"Service": "cloudformation.amazonaws.com",
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		domainExecutionRole, err := iam.NewRole(ctx, "domain_execution_role", &iam.RoleArgs{
/// 			Name:             pulumi.String("my_domain_execution_role"),
/// 			AssumeRolePolicy: pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON1, err := json.Marshal(map[string]interface{}{
/// 			"Version": "2012-10-17",
/// 			"Statement": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Action": []string{
/// 						"datazone:*",
/// 						"ram:*",
/// 						"sso:*",
/// 						"kms:*",
/// 					},
/// 					"Effect":   "Allow",
/// 					"Resource": "*",
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json1 := string(tmpJSON1)
/// 		_, err = iam.NewRolePolicy(ctx, "domain_execution_role", &iam.RolePolicyArgs{
/// 			Role:   domainExecutionRole.Name,
/// 			Policy: pulumi.String(json1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datazone.NewDomain(ctx, "example", &datazone.DomainArgs{
/// 			Name:                pulumi.String("example"),
/// 			DomainExecutionRole: domainExecutionRole.Arn,
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
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.iam.RolePolicy;
/// import com.pulumi.aws.iam.RolePolicyArgs;
/// import com.pulumi.aws.datazone.Domain;
/// import com.pulumi.aws.datazone.DomainArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var domainExecutionRole = new Role("domainExecutionRole", RoleArgs.builder()
///             .name("my_domain_execution_role")
///             .assumeRolePolicy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(
///                         jsonObject(
///                             jsonProperty("Action", jsonArray(
///                                 "sts:AssumeRole",
///                                 "sts:TagSession"
///                             )),
///                             jsonProperty("Effect", "Allow"),
///                             jsonProperty("Principal", jsonObject(
///                                 jsonProperty("Service", "datazone.amazonaws.com")
///                             ))
///                         ),
///                         jsonObject(
///                             jsonProperty("Action", jsonArray(
///                                 "sts:AssumeRole",
///                                 "sts:TagSession"
///                             )),
///                             jsonProperty("Effect", "Allow"),
///                             jsonProperty("Principal", jsonObject(
///                                 jsonProperty("Service", "cloudformation.amazonaws.com")
///                             ))
///                         )
///                     ))
///                 )))
///             .build());
///
///         var domainExecutionRoleRolePolicy = new RolePolicy("domainExecutionRoleRolePolicy", RolePolicyArgs.builder()
///             .role(domainExecutionRole.name())
///             .policy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Action", jsonArray(
///                             "datazone:*",
///                             "ram:*",
///                             "sso:*",
///                             "kms:*"
///                         )),
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Resource", "*")
///                     )))
///                 )))
///             .build());
///
///         var example = new Domain("example", DomainArgs.builder()
///             .name("example")
///             .domainExecutionRole(domainExecutionRole.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   domainExecutionRole:
///     type: aws:iam:Role
///     name: domain_execution_role
///     properties:
///       name: my_domain_execution_role
///       assumeRolePolicy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Action:
///                 - sts:AssumeRole
///                 - sts:TagSession
///               Effect: Allow
///               Principal:
///                 Service: datazone.amazonaws.com
///             - Action:
///                 - sts:AssumeRole
///                 - sts:TagSession
///               Effect: Allow
///               Principal:
///                 Service: cloudformation.amazonaws.com
///   domainExecutionRoleRolePolicy:
///     type: aws:iam:RolePolicy
///     name: domain_execution_role
///     properties:
///       role: ${domainExecutionRole.name}
///       policy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Action:
///                 - datazone:*
///                 - ram:*
///                 - sso:*
///                 - kms:*
///               Effect: Allow
///               Resource: '*'
///   example:
///     type: aws:datazone:Domain
///     properties:
///       name: example
///       domainExecutionRole: ${domainExecutionRole.arn}
/// ```
///
///
/// ### V2 Domain
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getCallerIdentity({});
/// // IAM role for Domain Execution
/// const assumeRoleDomainExecution = current.then(current => aws.iam.getPolicyDocument({
///     statements: [{
///         actions: [
///             "sts:AssumeRole",
///             "sts:TagSession",
///             "sts:SetContext",
///         ],
///         principals: [{
///             type: "Service",
///             identifiers: ["datazone.amazonaws.com"],
///         }],
///         conditions: [
///             {
///                 test: "StringEquals",
///                 values: [current.accountId],
///                 variable: "aws:SourceAccount",
///             },
///             {
///                 test: "ForAllValues:StringLike",
///                 values: ["datazone*"],
///                 variable: "aws:TagKeys",
///             },
///         ],
///     }],
/// }));
/// const domainExecution = new aws.iam.Role("domain_execution", {
///     assumeRolePolicy: assumeRoleDomainExecution.then(assumeRoleDomainExecution => assumeRoleDomainExecution.json),
///     name: "example-domain-execution-role",
/// });
/// const domainExecutionRole = aws.iam.getPolicy({
///     name: "SageMakerStudioDomainExecutionRolePolicy",
/// });
/// const domainExecutionRolePolicyAttachment = new aws.iam.RolePolicyAttachment("domain_execution", {
///     policyArn: domainExecutionRole.then(domainExecutionRole => domainExecutionRole.arn),
///     role: domainExecution.name,
/// });
/// // IAM role for Domain Service
/// const assumeRoleDomainService = current.then(current => aws.iam.getPolicyDocument({
///     statements: [{
///         actions: ["sts:AssumeRole"],
///         principals: [{
///             type: "Service",
///             identifiers: ["datazone.amazonaws.com"],
///         }],
///         conditions: [{
///             test: "StringEquals",
///             values: [current.accountId],
///             variable: "aws:SourceAccount",
///         }],
///     }],
/// }));
/// const domainService = new aws.iam.Role("domain_service", {
///     assumeRolePolicy: assumeRoleDomainService.then(assumeRoleDomainService => assumeRoleDomainService.json),
///     name: "example-domain-service-role",
/// });
/// const domainServiceRole = aws.iam.getPolicy({
///     name: "SageMakerStudioDomainServiceRolePolicy",
/// });
/// const domainServiceRolePolicyAttachment = new aws.iam.RolePolicyAttachment("domain_service", {
///     policyArn: domainServiceRole.then(domainServiceRole => domainServiceRole.arn),
///     role: domainService.name,
/// });
/// // DataZone Domain V2
/// const example = new aws.datazone.Domain("example", {
///     name: "example-domain",
///     domainExecutionRole: domainExecution.arn,
///     domainVersion: "V2",
///     serviceRole: domainService.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// # IAM role for Domain Execution
/// assume_role_domain_execution = aws.iam.get_policy_document(statements=[{
///     "actions": [
///         "sts:AssumeRole",
///         "sts:TagSession",
///         "sts:SetContext",
///     ],
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["datazone.amazonaws.com"],
///     }],
///     "conditions": [
///         {
///             "test": "StringEquals",
///             "values": [current.account_id],
///             "variable": "aws:SourceAccount",
///         },
///         {
///             "test": "ForAllValues:StringLike",
///             "values": ["datazone*"],
///             "variable": "aws:TagKeys",
///         },
///     ],
/// }])
/// domain_execution = aws.iam.Role("domain_execution",
///     assume_role_policy=assume_role_domain_execution.json,
///     name="example-domain-execution-role")
/// domain_execution_role = aws.iam.get_policy(name="SageMakerStudioDomainExecutionRolePolicy")
/// domain_execution_role_policy_attachment = aws.iam.RolePolicyAttachment("domain_execution",
///     policy_arn=domain_execution_role.arn,
///     role=domain_execution.name)
/// # IAM role for Domain Service
/// assume_role_domain_service = aws.iam.get_policy_document(statements=[{
///     "actions": ["sts:AssumeRole"],
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["datazone.amazonaws.com"],
///     }],
///     "conditions": [{
///         "test": "StringEquals",
///         "values": [current.account_id],
///         "variable": "aws:SourceAccount",
///     }],
/// }])
/// domain_service = aws.iam.Role("domain_service",
///     assume_role_policy=assume_role_domain_service.json,
///     name="example-domain-service-role")
/// domain_service_role = aws.iam.get_policy(name="SageMakerStudioDomainServiceRolePolicy")
/// domain_service_role_policy_attachment = aws.iam.RolePolicyAttachment("domain_service",
///     policy_arn=domain_service_role.arn,
///     role=domain_service.name)
/// # DataZone Domain V2
/// example = aws.datazone.Domain("example",
///     name="example-domain",
///     domain_execution_role=domain_execution.arn,
///     domain_version="V2",
///     service_role=domain_service.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.GetCallerIdentity.Invoke();
///
///     // IAM role for Domain Execution
///     var assumeRoleDomainExecution = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Actions = new[]
///                 {
///                     "sts:AssumeRole",
///                     "sts:TagSession",
///                     "sts:SetContext",
///                 },
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "Service",
///                         Identifiers = new[]
///                         {
///                             "datazone.amazonaws.com",
///                         },
///                     },
///                 },
///                 Conditions = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionInputArgs
///                     {
///                         Test = "StringEquals",
///                         Values = new[]
///                         {
///                             current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId),
///                         },
///                         Variable = "aws:SourceAccount",
///                     },
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionInputArgs
///                     {
///                         Test = "ForAllValues:StringLike",
///                         Values = new[]
///                         {
///                             "datazone*",
///                         },
///                         Variable = "aws:TagKeys",
///                     },
///                 },
///             },
///         },
///     });
///
///     var domainExecution = new Aws.Iam.Role("domain_execution", new()
///     {
///         AssumeRolePolicy = assumeRoleDomainExecution.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///         Name = "example-domain-execution-role",
///     });
///
///     var domainExecutionRole = Aws.Iam.GetPolicy.Invoke(new()
///     {
///         Name = "SageMakerStudioDomainExecutionRolePolicy",
///     });
///
///     var domainExecutionRolePolicyAttachment = new Aws.Iam.RolePolicyAttachment("domain_execution", new()
///     {
///         PolicyArn = domainExecutionRole.Apply(getPolicyResult => getPolicyResult.Arn),
///         Role = domainExecution.Name,
///     });
///
///     // IAM role for Domain Service
///     var assumeRoleDomainService = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Actions = new[]
///                 {
///                     "sts:AssumeRole",
///                 },
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "Service",
///                         Identifiers = new[]
///                         {
///                             "datazone.amazonaws.com",
///                         },
///                     },
///                 },
///                 Conditions = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionInputArgs
///                     {
///                         Test = "StringEquals",
///                         Values = new[]
///                         {
///                             current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId),
///                         },
///                         Variable = "aws:SourceAccount",
///                     },
///                 },
///             },
///         },
///     });
///
///     var domainService = new Aws.Iam.Role("domain_service", new()
///     {
///         AssumeRolePolicy = assumeRoleDomainService.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///         Name = "example-domain-service-role",
///     });
///
///     var domainServiceRole = Aws.Iam.GetPolicy.Invoke(new()
///     {
///         Name = "SageMakerStudioDomainServiceRolePolicy",
///     });
///
///     var domainServiceRolePolicyAttachment = new Aws.Iam.RolePolicyAttachment("domain_service", new()
///     {
///         PolicyArn = domainServiceRole.Apply(getPolicyResult => getPolicyResult.Arn),
///         Role = domainService.Name,
///     });
///
///     // DataZone Domain V2
///     var example = new Aws.DataZone.Domain("example", new()
///     {
///         Name = "example-domain",
///         DomainExecutionRole = domainExecution.Arn,
///         DomainVersion = "V2",
///         ServiceRole = domainService.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/datazone"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{
/// }, nil);
/// if err != nil {
/// return err
/// }
/// // IAM role for Domain Execution
/// assumeRoleDomainExecution, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Actions: []string{
/// "sts:AssumeRole",
/// "sts:TagSession",
/// "sts:SetContext",
/// },
/// Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// {
/// Type: "Service",
/// Identifiers: []string{
/// "datazone.amazonaws.com",
/// },
/// },
/// },
/// Conditions: []iam.GetPolicyDocumentStatementCondition{
/// {
/// Test: "StringEquals",
/// Values: interface{}{
/// current.AccountId,
/// },
/// Variable: "aws:SourceAccount",
/// },
/// {
/// Test: "ForAllValues:StringLike",
/// Values: []string{
/// "datazone*",
/// },
/// Variable: "aws:TagKeys",
/// },
/// },
/// },
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// domainExecution, err := iam.NewRole(ctx, "domain_execution", &iam.RoleArgs{
/// AssumeRolePolicy: pulumi.String(assumeRoleDomainExecution.Json),
/// Name: pulumi.String("example-domain-execution-role"),
/// })
/// if err != nil {
/// return err
/// }
/// domainExecutionRole, err := iam.LookupPolicy(ctx, &iam.LookupPolicyArgs{
/// Name: pulumi.StringRef("SageMakerStudioDomainExecutionRolePolicy"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// _, err = iam.NewRolePolicyAttachment(ctx, "domain_execution", &iam.RolePolicyAttachmentArgs{
/// PolicyArn: pulumi.String(domainExecutionRole.Arn),
/// Role: domainExecution.Name,
/// })
/// if err != nil {
/// return err
/// }
/// // IAM role for Domain Service
/// assumeRoleDomainService, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Actions: []string{
/// "sts:AssumeRole",
/// },
/// Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// {
/// Type: "Service",
/// Identifiers: []string{
/// "datazone.amazonaws.com",
/// },
/// },
/// },
/// Conditions: []iam.GetPolicyDocumentStatementCondition{
/// {
/// Test: "StringEquals",
/// Values: interface{}{
/// current.AccountId,
/// },
/// Variable: "aws:SourceAccount",
/// },
/// },
/// },
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// domainService, err := iam.NewRole(ctx, "domain_service", &iam.RoleArgs{
/// AssumeRolePolicy: pulumi.String(assumeRoleDomainService.Json),
/// Name: pulumi.String("example-domain-service-role"),
/// })
/// if err != nil {
/// return err
/// }
/// domainServiceRole, err := iam.LookupPolicy(ctx, &iam.LookupPolicyArgs{
/// Name: pulumi.StringRef("SageMakerStudioDomainServiceRolePolicy"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// _, err = iam.NewRolePolicyAttachment(ctx, "domain_service", &iam.RolePolicyAttachmentArgs{
/// PolicyArn: pulumi.String(domainServiceRole.Arn),
/// Role: domainService.Name,
/// })
/// if err != nil {
/// return err
/// }
/// // DataZone Domain V2
/// _, err = datazone.NewDomain(ctx, "example", &datazone.DomainArgs{
/// Name: pulumi.String("example-domain"),
/// DomainExecutionRole: domainExecution.Arn,
/// DomainVersion: pulumi.String("V2"),
/// ServiceRole: domainService.Arn,
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyArgs;
/// import com.pulumi.aws.iam.RolePolicyAttachment;
/// import com.pulumi.aws.iam.RolePolicyAttachmentArgs;
/// import com.pulumi.aws.datazone.Domain;
/// import com.pulumi.aws.datazone.DomainArgs;
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
///         final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         // IAM role for Domain Execution
///         final var assumeRoleDomainExecution = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .actions(
///                     "sts:AssumeRole",
///                     "sts:TagSession",
///                     "sts:SetContext")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("datazone.amazonaws.com")
///                     .build())
///                 .conditions(
///                     GetPolicyDocumentStatementConditionArgs.builder()
///                         .test("StringEquals")
///                         .values(current.accountId())
///                         .variable("aws:SourceAccount")
///                         .build(),
///                     GetPolicyDocumentStatementConditionArgs.builder()
///                         .test("ForAllValues:StringLike")
///                         .values("datazone*")
///                         .variable("aws:TagKeys")
///                         .build())
///                 .build())
///             .build());
///
///         var domainExecution = new Role("domainExecution", RoleArgs.builder()
///             .assumeRolePolicy(assumeRoleDomainExecution.json())
///             .name("example-domain-execution-role")
///             .build());
///
///         final var domainExecutionRole = IamFunctions.getPolicy(GetPolicyArgs.builder()
///             .name("SageMakerStudioDomainExecutionRolePolicy")
///             .build());
///
///         var domainExecutionRolePolicyAttachment = new RolePolicyAttachment("domainExecutionRolePolicyAttachment", RolePolicyAttachmentArgs.builder()
///             .policyArn(domainExecutionRole.arn())
///             .role(domainExecution.name())
///             .build());
///
///         // IAM role for Domain Service
///         final var assumeRoleDomainService = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .actions("sts:AssumeRole")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("datazone.amazonaws.com")
///                     .build())
///                 .conditions(GetPolicyDocumentStatementConditionArgs.builder()
///                     .test("StringEquals")
///                     .values(current.accountId())
///                     .variable("aws:SourceAccount")
///                     .build())
///                 .build())
///             .build());
///
///         var domainService = new Role("domainService", RoleArgs.builder()
///             .assumeRolePolicy(assumeRoleDomainService.json())
///             .name("example-domain-service-role")
///             .build());
///
///         final var domainServiceRole = IamFunctions.getPolicy(GetPolicyArgs.builder()
///             .name("SageMakerStudioDomainServiceRolePolicy")
///             .build());
///
///         var domainServiceRolePolicyAttachment = new RolePolicyAttachment("domainServiceRolePolicyAttachment", RolePolicyAttachmentArgs.builder()
///             .policyArn(domainServiceRole.arn())
///             .role(domainService.name())
///             .build());
///
///         // DataZone Domain V2
///         var example = new Domain("example", DomainArgs.builder()
///             .name("example-domain")
///             .domainExecutionRole(domainExecution.arn())
///             .domainVersion("V2")
///             .serviceRole(domainService.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   domainExecution:
///     type: aws:iam:Role
///     name: domain_execution
///     properties:
///       assumeRolePolicy: ${assumeRoleDomainExecution.json}
///       name: example-domain-execution-role
///   domainExecutionRolePolicyAttachment:
///     type: aws:iam:RolePolicyAttachment
///     name: domain_execution
///     properties:
///       policyArn: ${domainExecutionRole.arn}
///       role: ${domainExecution.name}
///   domainService:
///     type: aws:iam:Role
///     name: domain_service
///     properties:
///       assumeRolePolicy: ${assumeRoleDomainService.json}
///       name: example-domain-service-role
///   domainServiceRolePolicyAttachment:
///     type: aws:iam:RolePolicyAttachment
///     name: domain_service
///     properties:
///       policyArn: ${domainServiceRole.arn}
///       role: ${domainService.name}
///   # DataZone Domain V2
///   example:
///     type: aws:datazone:Domain
///     properties:
///       name: example-domain
///       domainExecutionRole: ${domainExecution.arn}
///       domainVersion: V2
///       serviceRole: ${domainService.arn}
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
///   # IAM role for Domain Execution
///   assumeRoleDomainExecution:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - actions:
///               - sts:AssumeRole
///               - sts:TagSession
///               - sts:SetContext
///             principals:
///               - type: Service
///                 identifiers:
///                   - datazone.amazonaws.com
///             conditions:
///               - test: StringEquals
///                 values:
///                   - ${current.accountId}
///                 variable: aws:SourceAccount
///               - test: ForAllValues:StringLike
///                 values:
///                   - datazone*
///                 variable: aws:TagKeys
///   domainExecutionRole:
///     fn::invoke:
///       function: aws:iam:getPolicy
///       arguments:
///         name: SageMakerStudioDomainExecutionRolePolicy
///   # IAM role for Domain Service
///   assumeRoleDomainService:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - actions:
///               - sts:AssumeRole
///             principals:
///               - type: Service
///                 identifiers:
///                   - datazone.amazonaws.com
///             conditions:
///               - test: StringEquals
///                 values:
///                   - ${current.accountId}
///                 variable: aws:SourceAccount
///   domainServiceRole:
///     fn::invoke:
///       function: aws:iam:getPolicy
///       arguments:
///         name: SageMakerStudioDomainServiceRolePolicy
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import DataZone Domain using the `domain_id`. For example:
///
/// ```sh
/// $ pulumi import aws:datazone/domain:Domain example domain-id-12345678
/// ```
class Domain extends pulumi.CustomResource {
  /// ARN of the Domain.
  late final pulumi.Output<String> arn;

  /// Description of the Domain.
  late final pulumi.Output<String?> description;

  /// ARN of the role used by DataZone to configure the Domain.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> domainExecutionRole;

  /// Version of the Domain. Valid values are `V1` and `V2`. Defaults to `V1`.
  late final pulumi.Output<String> domainVersion;

  /// ARN of the KMS key used to encrypt the Amazon DataZone domain, metadata and reporting data.
  late final pulumi.Output<String?> kmsKeyIdentifier;

  /// Name of the Domain.
  late final pulumi.Output<String> name;

  /// URL of the data portal for the Domain.
  late final pulumi.Output<String> portalUrl;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// ID of the root domain unit.
  late final pulumi.Output<String> rootDomainUnitId;

  /// ARN of the service role used by DataZone. Required when `domain_version` is set to `V2`.
  late final pulumi.Output<String?> serviceRole;

  /// Single sign on options, used to [enable AWS IAM Identity Center](https://docs.aws.amazon.com/datazone/latest/userguide/enable-IAM-identity-center-for-datazone.html) for DataZone.
  late final pulumi.Output<DomainSingleSignOn?> singleSignOn;

  /// Whether to skip the deletion check for the Domain.
  late final pulumi.Output<bool?> skipDeletionCheck;
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<DomainTimeouts?> timeouts;

  /// Creates a new [Domain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Domain]. {@macro pulumi_datazone_domain_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Domain(String name, {DomainArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'aws:datazone/domain:Domain',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.domainExecutionRole = registerOutput<String>('domainExecutionRole');
    this.domainVersion = registerOutput<String>('domainVersion');
    this.kmsKeyIdentifier = registerOutput<String?>('kmsKeyIdentifier');
    this.name = registerOutput<String>('name');
    this.portalUrl = registerOutput<String>('portalUrl');
    this.region = registerOutput<String>('region');
    this.rootDomainUnitId = registerOutput<String>('rootDomainUnitId');
    this.serviceRole = registerOutput<String?>('serviceRole');
    this.singleSignOn = registerOutput<DomainSingleSignOn?>('singleSignOn');
    this.skipDeletionCheck = registerOutput<bool?>('skipDeletionCheck');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<DomainTimeouts?>('timeouts');
  }
}
