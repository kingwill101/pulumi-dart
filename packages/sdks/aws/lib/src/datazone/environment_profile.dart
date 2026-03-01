import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_profile_args.dart';
import 'environment_profile_state.dart';
import 'environment_profile_user_parameter.dart';

/// Resource for managing an AWS DataZone Environment Profile.
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
///     name: "example-name",
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
///     inlinePolicies: [{
///         name: "example-name",
///         policy: JSON.stringify({
///             Version: "2012-10-17",
///             Statement: [{
///                 Action: [
///                     "datazone:*",
///                     "ram:*",
///                     "sso:*",
///                     "kms:*",
///                 ],
///                 Effect: "Allow",
///                 Resource: "*",
///             }],
///         }),
///     }],
/// });
/// const testDomain = new aws.datazone.Domain("test", {
///     name: "example-name",
///     domainExecutionRole: domainExecutionRole.arn,
/// });
/// const testSecurityGroup = new aws.ec2.SecurityGroup("test", {name: "example-name"});
/// const testProject = new aws.datazone.Project("test", {
///     domainIdentifier: testDomain.id,
///     glossaryTerms: ["2N8w6XJCwZf"],
///     name: "example-name",
///     description: "desc",
///     skipDeletionCheck: true,
/// });
/// const test = aws.getCallerIdentity({});
/// const testGetRegion = aws.getRegion({});
/// const testGetEnvironmentBlueprint = aws.datazone.getEnvironmentBlueprintOutput({
///     domainId: testDomain.id,
///     name: "DefaultDataLake",
///     managed: true,
/// });
/// const testEnvironmentBlueprintConfiguration = new aws.datazone.EnvironmentBlueprintConfiguration("test", {
///     domainId: testDomain.id,
///     environmentBlueprintId: testGetEnvironmentBlueprint.apply(testGetEnvironmentBlueprint => testGetEnvironmentBlueprint.id),
///     provisioningRoleArn: domainExecutionRole.arn,
///     enabledRegions: [testGetRegion.then(testGetRegion => testGetRegion.name)],
/// });
/// const testEnvironmentProfile = new aws.datazone.EnvironmentProfile("test", {
///     awsAccountId: test.then(test => test.accountId),
///     awsAccountRegion: testGetRegion.then(testGetRegion => testGetRegion.name),
///     description: "description",
///     environmentBlueprintIdentifier: testGetEnvironmentBlueprint.apply(testGetEnvironmentBlueprint => testGetEnvironmentBlueprint.id),
///     name: "example-name",
///     projectIdentifier: testProject.id,
///     domainIdentifier: testDomain.id,
///     userParameters: [{
///         name: "consumerGlueDbName",
///         value: "value",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// domain_execution_role = aws.iam.Role("domain_execution_role",
///     name="example-name",
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
///     }),
///     inline_policies=[{
///         "name": "example-name",
///         "policy": json.dumps({
///             "Version": "2012-10-17",
///             "Statement": [{
///                 "Action": [
///                     "datazone:*",
///                     "ram:*",
///                     "sso:*",
///                     "kms:*",
///                 ],
///                 "Effect": "Allow",
///                 "Resource": "*",
///             }],
///         }),
///     }])
/// test_domain = aws.datazone.Domain("test",
///     name="example-name",
///     domain_execution_role=domain_execution_role.arn)
/// test_security_group = aws.ec2.SecurityGroup("test", name="example-name")
/// test_project = aws.datazone.Project("test",
///     domain_identifier=test_domain.id,
///     glossary_terms=["2N8w6XJCwZf"],
///     name="example-name",
///     description="desc",
///     skip_deletion_check=True)
/// test = aws.get_caller_identity()
/// test_get_region = aws.get_region()
/// test_get_environment_blueprint = aws.datazone.get_environment_blueprint_output(domain_id=test_domain.id,
///     name="DefaultDataLake",
///     managed=True)
/// test_environment_blueprint_configuration = aws.datazone.EnvironmentBlueprintConfiguration("test",
///     domain_id=test_domain.id,
///     environment_blueprint_id=test_get_environment_blueprint.id,
///     provisioning_role_arn=domain_execution_role.arn,
///     enabled_regions=[test_get_region.name])
/// test_environment_profile = aws.datazone.EnvironmentProfile("test",
///     aws_account_id=test.account_id,
///     aws_account_region=test_get_region.name,
///     description="description",
///     environment_blueprint_identifier=test_get_environment_blueprint.id,
///     name="example-name",
///     project_identifier=test_project.id,
///     domain_identifier=test_domain.id,
///     user_parameters=[{
///         "name": "consumerGlueDbName",
///         "value": "value",
///     }])
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
///         Name = "example-name",
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
///         InlinePolicies = new[]
///         {
///             new Aws.Iam.Inputs.RoleInlinePolicyArgs
///             {
///                 Name = "example-name",
///                 Policy = JsonSerializer.Serialize(new Dictionary<string, object?>
///                 {
///                     ["Version"] = "2012-10-17",
///                     ["Statement"] = new[]
///                     {
///                         new Dictionary<string, object?>
///                         {
///                             ["Action"] = new[]
///                             {
///                                 "datazone:*",
///                                 "ram:*",
///                                 "sso:*",
///                                 "kms:*",
///                             },
///                             ["Effect"] = "Allow",
///                             ["Resource"] = "*",
///                         },
///                     },
///                 }),
///             },
///         },
///     });
///
///     var testDomain = new Aws.DataZone.Domain("test", new()
///     {
///         Name = "example-name",
///         DomainExecutionRole = domainExecutionRole.Arn,
///     });
///
///     var testSecurityGroup = new Aws.Ec2.SecurityGroup("test", new()
///     {
///         Name = "example-name",
///     });
///
///     var testProject = new Aws.DataZone.Project("test", new()
///     {
///         DomainIdentifier = testDomain.Id,
///         GlossaryTerms = new[]
///         {
///             "2N8w6XJCwZf",
///         },
///         Name = "example-name",
///         Description = "desc",
///         SkipDeletionCheck = true,
///     });
///
///     var test = Aws.GetCallerIdentity.Invoke();
///
///     var testGetRegion = Aws.GetRegion.Invoke();
///
///     var testGetEnvironmentBlueprint = Aws.DataZone.GetEnvironmentBlueprint.Invoke(new()
///     {
///         DomainId = testDomain.Id,
///         Name = "DefaultDataLake",
///         Managed = true,
///     });
///
///     var testEnvironmentBlueprintConfiguration = new Aws.DataZone.EnvironmentBlueprintConfiguration("test", new()
///     {
///         DomainId = testDomain.Id,
///         EnvironmentBlueprintId = testGetEnvironmentBlueprint.Apply(getEnvironmentBlueprintResult => getEnvironmentBlueprintResult.Id),
///         ProvisioningRoleArn = domainExecutionRole.Arn,
///         EnabledRegions = new[]
///         {
///             testGetRegion.Apply(getRegionResult => getRegionResult.Name),
///         },
///     });
///
///     var testEnvironmentProfile = new Aws.DataZone.EnvironmentProfile("test", new()
///     {
///         AwsAccountId = test.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId),
///         AwsAccountRegion = testGetRegion.Apply(getRegionResult => getRegionResult.Name),
///         Description = "description",
///         EnvironmentBlueprintIdentifier = testGetEnvironmentBlueprint.Apply(getEnvironmentBlueprintResult => getEnvironmentBlueprintResult.Id),
///         Name = "example-name",
///         ProjectIdentifier = testProject.Id,
///         DomainIdentifier = testDomain.Id,
///         UserParameters = new[]
///         {
///             new Aws.DataZone.Inputs.EnvironmentProfileUserParameterArgs
///             {
///                 Name = "consumerGlueDbName",
///                 Value = "value",
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
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/datazone"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
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
/// 		domainExecutionRole, err := iam.NewRole(ctx, "domain_execution_role", &iam.RoleArgs{
/// 			Name:             pulumi.String("example-name"),
/// 			AssumeRolePolicy: pulumi.String(json0),
/// 			InlinePolicies: iam.RoleInlinePolicyArray{
/// 				&iam.RoleInlinePolicyArgs{
/// 					Name:   pulumi.String("example-name"),
/// 					Policy: pulumi.String(json1),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testDomain, err := datazone.NewDomain(ctx, "test", &datazone.DomainArgs{
/// 			Name:                pulumi.String("example-name"),
/// 			DomainExecutionRole: domainExecutionRole.Arn,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewSecurityGroup(ctx, "test", &ec2.SecurityGroupArgs{
/// 			Name: pulumi.String("example-name"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testProject, err := datazone.NewProject(ctx, "test", &datazone.ProjectArgs{
/// 			DomainIdentifier: testDomain.ID(),
/// 			GlossaryTerms: pulumi.StringArray{
/// 				pulumi.String("2N8w6XJCwZf"),
/// 			},
/// 			Name:              pulumi.String("example-name"),
/// 			Description:       pulumi.String("desc"),
/// 			SkipDeletionCheck: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		test, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testGetRegion, err := aws.GetRegion(ctx, &aws.GetRegionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testGetEnvironmentBlueprint := datazone.GetEnvironmentBlueprintOutput(ctx, datazone.GetEnvironmentBlueprintOutputArgs{
/// 			DomainId: testDomain.ID(),
/// 			Name:     pulumi.String("DefaultDataLake"),
/// 			Managed:  pulumi.Bool(true),
/// 		}, nil)
/// 		_, err = datazone.NewEnvironmentBlueprintConfiguration(ctx, "test", &datazone.EnvironmentBlueprintConfigurationArgs{
/// 			DomainId: testDomain.ID(),
/// 			EnvironmentBlueprintId: pulumi.String(testGetEnvironmentBlueprint.ApplyT(func(testGetEnvironmentBlueprint datazone.GetEnvironmentBlueprintResult) (*string, error) {
/// 				return &testGetEnvironmentBlueprint.Id, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			ProvisioningRoleArn: domainExecutionRole.Arn,
/// 			EnabledRegions: pulumi.StringArray{
/// 				pulumi.String(testGetRegion.Name),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datazone.NewEnvironmentProfile(ctx, "test", &datazone.EnvironmentProfileArgs{
/// 			AwsAccountId:     pulumi.String(test.AccountId),
/// 			AwsAccountRegion: pulumi.String(testGetRegion.Name),
/// 			Description:      pulumi.String("description"),
/// 			EnvironmentBlueprintIdentifier: pulumi.String(testGetEnvironmentBlueprint.ApplyT(func(testGetEnvironmentBlueprint datazone.GetEnvironmentBlueprintResult) (*string, error) {
/// 				return &testGetEnvironmentBlueprint.Id, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			Name:              pulumi.String("example-name"),
/// 			ProjectIdentifier: testProject.ID(),
/// 			DomainIdentifier:  testDomain.ID(),
/// 			UserParameters: datazone.EnvironmentProfileUserParameterArray{
/// 				&datazone.EnvironmentProfileUserParameterArgs{
/// 					Name:  pulumi.String("consumerGlueDbName"),
/// 					Value: pulumi.String("value"),
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
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.iam.inputs.RoleInlinePolicyArgs;
/// import com.pulumi.aws.datazone.Domain;
/// import com.pulumi.aws.datazone.DomainArgs;
/// import com.pulumi.aws.ec2.SecurityGroup;
/// import com.pulumi.aws.ec2.SecurityGroupArgs;
/// import com.pulumi.aws.datazone.Project;
/// import com.pulumi.aws.datazone.ProjectArgs;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.inputs.GetRegionArgs;
/// import com.pulumi.aws.datazone.DatazoneFunctions;
/// import com.pulumi.aws.datazone.inputs.GetEnvironmentBlueprintArgs;
/// import com.pulumi.aws.datazone.EnvironmentBlueprintConfiguration;
/// import com.pulumi.aws.datazone.EnvironmentBlueprintConfigurationArgs;
/// import com.pulumi.aws.datazone.EnvironmentProfile;
/// import com.pulumi.aws.datazone.EnvironmentProfileArgs;
/// import com.pulumi.aws.datazone.inputs.EnvironmentProfileUserParameterArgs;
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
///             .name("example-name")
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
///             .inlinePolicies(RoleInlinePolicyArgs.builder()
///                 .name("example-name")
///                 .policy(serializeJson(
///                     jsonObject(
///                         jsonProperty("Version", "2012-10-17"),
///                         jsonProperty("Statement", jsonArray(jsonObject(
///                             jsonProperty("Action", jsonArray(
///                                 "datazone:*",
///                                 "ram:*",
///                                 "sso:*",
///                                 "kms:*"
///                             )),
///                             jsonProperty("Effect", "Allow"),
///                             jsonProperty("Resource", "*")
///                         )))
///                     )))
///                 .build())
///             .build());
///
///         var testDomain = new Domain("testDomain", DomainArgs.builder()
///             .name("example-name")
///             .domainExecutionRole(domainExecutionRole.arn())
///             .build());
///
///         var testSecurityGroup = new SecurityGroup("testSecurityGroup", SecurityGroupArgs.builder()
///             .name("example-name")
///             .build());
///
///         var testProject = new Project("testProject", ProjectArgs.builder()
///             .domainIdentifier(testDomain.id())
///             .glossaryTerms("2N8w6XJCwZf")
///             .name("example-name")
///             .description("desc")
///             .skipDeletionCheck(true)
///             .build());
///
///         final var test = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         final var testGetRegion = AwsFunctions.getRegion(GetRegionArgs.builder()
///             .build());
///
///         final var testGetEnvironmentBlueprint = DatazoneFunctions.getEnvironmentBlueprint(GetEnvironmentBlueprintArgs.builder()
///             .domainId(testDomain.id())
///             .name("DefaultDataLake")
///             .managed(true)
///             .build());
///
///         var testEnvironmentBlueprintConfiguration = new EnvironmentBlueprintConfiguration("testEnvironmentBlueprintConfiguration", EnvironmentBlueprintConfigurationArgs.builder()
///             .domainId(testDomain.id())
///             .environmentBlueprintId(testGetEnvironmentBlueprint.applyValue(_testGetEnvironmentBlueprint -> _testGetEnvironmentBlueprint.id()))
///             .provisioningRoleArn(domainExecutionRole.arn())
///             .enabledRegions(testGetRegion.name())
///             .build());
///
///         var testEnvironmentProfile = new EnvironmentProfile("testEnvironmentProfile", EnvironmentProfileArgs.builder()
///             .awsAccountId(test.accountId())
///             .awsAccountRegion(testGetRegion.name())
///             .description("description")
///             .environmentBlueprintIdentifier(testGetEnvironmentBlueprint.applyValue(_testGetEnvironmentBlueprint -> _testGetEnvironmentBlueprint.id()))
///             .name("example-name")
///             .projectIdentifier(testProject.id())
///             .domainIdentifier(testDomain.id())
///             .userParameters(EnvironmentProfileUserParameterArgs.builder()
///                 .name("consumerGlueDbName")
///                 .value("value")
///                 .build())
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
///       name: example-name
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
///       inlinePolicies:
///         - name: example-name
///           policy:
///             fn::toJSON:
///               Version: 2012-10-17
///               Statement:
///                 - Action:
///                     - datazone:*
///                     - ram:*
///                     - sso:*
///                     - kms:*
///                   Effect: Allow
///                   Resource: '*'
///   testDomain:
///     type: aws:datazone:Domain
///     name: test
///     properties:
///       name: example-name
///       domainExecutionRole: ${domainExecutionRole.arn}
///   testSecurityGroup:
///     type: aws:ec2:SecurityGroup
///     name: test
///     properties:
///       name: example-name
///   testProject:
///     type: aws:datazone:Project
///     name: test
///     properties:
///       domainIdentifier: ${testDomain.id}
///       glossaryTerms:
///         - 2N8w6XJCwZf
///       name: example-name
///       description: desc
///       skipDeletionCheck: true
///   testEnvironmentBlueprintConfiguration:
///     type: aws:datazone:EnvironmentBlueprintConfiguration
///     name: test
///     properties:
///       domainId: ${testDomain.id}
///       environmentBlueprintId: ${testGetEnvironmentBlueprint.id}
///       provisioningRoleArn: ${domainExecutionRole.arn}
///       enabledRegions:
///         - ${testGetRegion.name}
///   testEnvironmentProfile:
///     type: aws:datazone:EnvironmentProfile
///     name: test
///     properties:
///       awsAccountId: ${test.accountId}
///       awsAccountRegion: ${testGetRegion.name}
///       description: description
///       environmentBlueprintIdentifier: ${testGetEnvironmentBlueprint.id}
///       name: example-name
///       projectIdentifier: ${testProject.id}
///       domainIdentifier: ${testDomain.id}
///       userParameters:
///         - name: consumerGlueDbName
///           value: value
/// variables:
///   test:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
///   testGetRegion:
///     fn::invoke:
///       function: aws:getRegion
///       arguments: {}
///   testGetEnvironmentBlueprint:
///     fn::invoke:
///       function: aws:datazone:getEnvironmentBlueprint
///       arguments:
///         domainId: ${testDomain.id}
///         name: DefaultDataLake
///         managed: true
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import DataZone Environment Profile using a comma-delimited string combining `id` and `domain_identifier`. For example:
///
/// ```sh
/// $ pulumi import aws:datazone/environmentProfile:EnvironmentProfile example environment_profile-id-12345678,domain-id-12345678
/// ```
class EnvironmentProfile extends pulumi.CustomResource {
  /// Id of the AWS account being used.
  late final pulumi.Output<String> awsAccountId;
  /// Desired region for environment profile.
  late final pulumi.Output<String> awsAccountRegion;
  /// Creation time of environment profile.
  late final pulumi.Output<String> createdAt;
  /// Creator of environment profile.
  late final pulumi.Output<String> createdBy;
  /// Description of environment profile.
  late final pulumi.Output<String> description;
  /// Domain Identifier for environment profile.
  late final pulumi.Output<String> domainIdentifier;
  /// ID of the blueprint which the environment will be created with.
  late final pulumi.Output<String> environmentBlueprintIdentifier;
  /// Name of the environment profile.
  late final pulumi.Output<String> name;
  /// Project identifier for environment profile.
  late final pulumi.Output<String> projectIdentifier;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Time of last update to environment profile.
  late final pulumi.Output<String> updatedAt;
  /// Array of user parameters of the environment profile with the following attributes:
  late final pulumi.Output<List<EnvironmentProfileUserParameter>?> userParameters;

  /// Creates a new [EnvironmentProfile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EnvironmentProfile]. {@macro pulumi_datazone_environment_profile_environment_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EnvironmentProfile(
    String name, {
    EnvironmentProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:datazone/environmentProfile:EnvironmentProfile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.awsAccountId = registerOutput<String>('awsAccountId');
    this.awsAccountRegion = registerOutput<String>('awsAccountRegion');
    this.createdAt = registerOutput<String>('createdAt');
    this.createdBy = registerOutput<String>('createdBy');
    this.description = registerOutput<String>('description');
    this.domainIdentifier = registerOutput<String>('domainIdentifier');
    this.environmentBlueprintIdentifier = registerOutput<String>('environmentBlueprintIdentifier');
    this.name = registerOutput<String>('name');
    this.projectIdentifier = registerOutput<String>('projectIdentifier');
    this.region = registerOutput<String>('region');
    this.updatedAt = registerOutput<String>('updatedAt');
    this.userParameters = registerOutput<List<EnvironmentProfileUserParameter>?>('userParameters');
  }

  /// Gets an existing [EnvironmentProfile] resource's state with the given [name] and [id].
  static EnvironmentProfile get(
    String name,
    pulumi.Input<String> id, {
    EnvironmentProfileState? state,
  }) {
    return EnvironmentProfile._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EnvironmentProfile._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:datazone/environmentProfile:EnvironmentProfile',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.awsAccountId = registerOutput<String>('awsAccountId');
    this.awsAccountRegion = registerOutput<String>('awsAccountRegion');
    this.createdAt = registerOutput<String>('createdAt');
    this.createdBy = registerOutput<String>('createdBy');
    this.description = registerOutput<String>('description');
    this.domainIdentifier = registerOutput<String>('domainIdentifier');
    this.environmentBlueprintIdentifier = registerOutput<String>('environmentBlueprintIdentifier');
    this.name = registerOutput<String>('name');
    this.projectIdentifier = registerOutput<String>('projectIdentifier');
    this.region = registerOutput<String>('region');
    this.updatedAt = registerOutput<String>('updatedAt');
    this.userParameters = registerOutput<List<EnvironmentProfileUserParameter>?>('userParameters');
  }
}
