import 'package:pulumi/pulumi.dart' as pulumi;
import 'glossary_args.dart';

/// Resource for managing an AWS DataZone Glossary.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const domainExecutionRole = new aws.iam.Role("domain_execution_role", {
///     name: "example_name",
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
///         name: "example_name",
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
/// const test = new aws.datazone.Domain("test", {
///     name: "example_name",
///     domainExecutionRole: domainExecutionRole.arn,
/// });
/// const testSecurityGroup = new aws.ec2.SecurityGroup("test", {name: "example_name"});
/// const testProject = new aws.datazone.Project("test", {
///     domainIdentifier: test.id,
///     glossaryTerms: ["2N8w6XJCwZf"],
///     name: "example_name",
///     description: "desc",
///     skipDeletionCheck: true,
/// });
/// const testGlossary = new aws.datazone.Glossary("test", {
///     description: "description",
///     name: "example_name",
///     owningProjectIdentifier: testProject.id,
///     status: "DISABLED",
///     domainIdentifier: testProject.domainIdentifier,
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// domain_execution_role = aws.iam.Role("domain_execution_role",
///     name="example_name",
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
///         "name": "example_name",
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
/// test = aws.datazone.Domain("test",
///     name="example_name",
///     domain_execution_role=domain_execution_role.arn)
/// test_security_group = aws.ec2.SecurityGroup("test", name="example_name")
/// test_project = aws.datazone.Project("test",
///     domain_identifier=test.id,
///     glossary_terms=["2N8w6XJCwZf"],
///     name="example_name",
///     description="desc",
///     skip_deletion_check=True)
/// test_glossary = aws.datazone.Glossary("test",
///     description="description",
///     name="example_name",
///     owning_project_identifier=test_project.id,
///     status="DISABLED",
///     domain_identifier=test_project.domain_identifier)
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
///         Name = "example_name",
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
///                 Name = "example_name",
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
///     var test = new Aws.DataZone.Domain("test", new()
///     {
///         Name = "example_name",
///         DomainExecutionRole = domainExecutionRole.Arn,
///     });
///
///     var testSecurityGroup = new Aws.Ec2.SecurityGroup("test", new()
///     {
///         Name = "example_name",
///     });
///
///     var testProject = new Aws.DataZone.Project("test", new()
///     {
///         DomainIdentifier = test.Id,
///         GlossaryTerms = new[]
///         {
///             "2N8w6XJCwZf",
///         },
///         Name = "example_name",
///         Description = "desc",
///         SkipDeletionCheck = true,
///     });
///
///     var testGlossary = new Aws.DataZone.Glossary("test", new()
///     {
///         Description = "description",
///         Name = "example_name",
///         OwningProjectIdentifier = testProject.Id,
///         Status = "DISABLED",
///         DomainIdentifier = testProject.DomainIdentifier,
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
/// 			Name:             pulumi.String("example_name"),
/// 			AssumeRolePolicy: pulumi.String(json0),
/// 			InlinePolicies: iam.RoleInlinePolicyArray{
/// 				&iam.RoleInlinePolicyArgs{
/// 					Name:   pulumi.String("example_name"),
/// 					Policy: pulumi.String(json1),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		test, err := datazone.NewDomain(ctx, "test", &datazone.DomainArgs{
/// 			Name:                pulumi.String("example_name"),
/// 			DomainExecutionRole: domainExecutionRole.Arn,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewSecurityGroup(ctx, "test", &ec2.SecurityGroupArgs{
/// 			Name: pulumi.String("example_name"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testProject, err := datazone.NewProject(ctx, "test", &datazone.ProjectArgs{
/// 			DomainIdentifier: test.ID(),
/// 			GlossaryTerms: pulumi.StringArray{
/// 				pulumi.String("2N8w6XJCwZf"),
/// 			},
/// 			Name:              pulumi.String("example_name"),
/// 			Description:       pulumi.String("desc"),
/// 			SkipDeletionCheck: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datazone.NewGlossary(ctx, "test", &datazone.GlossaryArgs{
/// 			Description:             pulumi.String("description"),
/// 			Name:                    pulumi.String("example_name"),
/// 			OwningProjectIdentifier: testProject.ID(),
/// 			Status:                  pulumi.String("DISABLED"),
/// 			DomainIdentifier:        testProject.DomainIdentifier,
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
/// import com.pulumi.aws.datazone.Glossary;
/// import com.pulumi.aws.datazone.GlossaryArgs;
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
///             .name("example_name")
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
///                 .name("example_name")
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
///         var test = new Domain("test", DomainArgs.builder()
///             .name("example_name")
///             .domainExecutionRole(domainExecutionRole.arn())
///             .build());
///
///         var testSecurityGroup = new SecurityGroup("testSecurityGroup", SecurityGroupArgs.builder()
///             .name("example_name")
///             .build());
///
///         var testProject = new Project("testProject", ProjectArgs.builder()
///             .domainIdentifier(test.id())
///             .glossaryTerms("2N8w6XJCwZf")
///             .name("example_name")
///             .description("desc")
///             .skipDeletionCheck(true)
///             .build());
///
///         var testGlossary = new Glossary("testGlossary", GlossaryArgs.builder()
///             .description("description")
///             .name("example_name")
///             .owningProjectIdentifier(testProject.id())
///             .status("DISABLED")
///             .domainIdentifier(testProject.domainIdentifier())
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
///       name: example_name
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
///         - name: example_name
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
///   test:
///     type: aws:datazone:Domain
///     properties:
///       name: example_name
///       domainExecutionRole: ${domainExecutionRole.arn}
///   testSecurityGroup:
///     type: aws:ec2:SecurityGroup
///     name: test
///     properties:
///       name: example_name
///   testProject:
///     type: aws:datazone:Project
///     name: test
///     properties:
///       domainIdentifier: ${test.id}
///       glossaryTerms:
///         - 2N8w6XJCwZf
///       name: example_name
///       description: desc
///       skipDeletionCheck: true
///   testGlossary:
///     type: aws:datazone:Glossary
///     name: test
///     properties:
///       description: description
///       name: example_name
///       owningProjectIdentifier: ${testProject.id}
///       status: DISABLED
///       domainIdentifier: ${testProject.domainIdentifier}
/// ```
///
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.datazone.Glossary("test", {
///     description: "description",
///     name: "example_name",
///     owningProjectIdentifier: testAwsDatazoneProject.id,
///     status: "DISABLED",
///     domainIdentifier: testAwsDatazoneProject.domainIdentifier,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.datazone.Glossary("test",
///     description="description",
///     name="example_name",
///     owning_project_identifier=test_aws_datazone_project["id"],
///     status="DISABLED",
///     domain_identifier=test_aws_datazone_project["domainIdentifier"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.DataZone.Glossary("test", new()
///     {
///         Description = "description",
///         Name = "example_name",
///         OwningProjectIdentifier = testAwsDatazoneProject.Id,
///         Status = "DISABLED",
///         DomainIdentifier = testAwsDatazoneProject.DomainIdentifier,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/datazone"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datazone.NewGlossary(ctx, "test", &datazone.GlossaryArgs{
/// 			Description:             pulumi.String("description"),
/// 			Name:                    pulumi.String("example_name"),
/// 			OwningProjectIdentifier: pulumi.Any(testAwsDatazoneProject.Id),
/// 			Status:                  pulumi.String("DISABLED"),
/// 			DomainIdentifier:        pulumi.Any(testAwsDatazoneProject.DomainIdentifier),
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
/// import com.pulumi.aws.datazone.Glossary;
/// import com.pulumi.aws.datazone.GlossaryArgs;
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
///         var test = new Glossary("test", GlossaryArgs.builder()
///             .description("description")
///             .name("example_name")
///             .owningProjectIdentifier(testAwsDatazoneProject.id())
///             .status("DISABLED")
///             .domainIdentifier(testAwsDatazoneProject.domainIdentifier())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:datazone:Glossary
///     properties:
///       description: description
///       name: example_name
///       owningProjectIdentifier: ${testAwsDatazoneProject.id}
///       status: DISABLED
///       domainIdentifier: ${testAwsDatazoneProject.domainIdentifier}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import DataZone Glossary using the import Datazone Glossary using a comma-delimited string combining the domain id, glossary id, and the id of the project it's under. For example:
///
/// ```sh
/// $ pulumi import aws:datazone/glossary:Glossary example domain-id,glossary-id,owning-project-identifier
/// ```
class Glossary extends pulumi.CustomResource {
  /// Description of the glossary. Must have a length between 0 and 4096.
  late final pulumi.Output<String?> description;
  late final pulumi.Output<String> domainIdentifier;
  /// Name of the glossary. Must have length between 1 and 256.
  late final pulumi.Output<String> name;
  /// ID of the project that owns business glossary. Must follow regex of ^[a-zA-Z0-9_-]{1,36}$.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> owningProjectIdentifier;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Status of business glossary. Valid values are DISABLED and ENABLED.
  late final pulumi.Output<String?> status;

  /// Creates a new [Glossary].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Glossary]. {@macro pulumi_datazone_glossary_glossary_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Glossary(
    String name, {
    GlossaryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:datazone/glossary:Glossary',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.domainIdentifier = registerOutput<String>('domainIdentifier');
    this.name = registerOutput<String>('name');
    this.owningProjectIdentifier = registerOutput<String>('owningProjectIdentifier');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String?>('status');
  }
}
