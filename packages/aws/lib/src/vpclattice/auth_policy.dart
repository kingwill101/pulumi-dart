import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_policy_args.dart';

/// Resource for managing an AWS VPC Lattice Auth Policy.
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
/// const example = new aws.vpclattice.Service("example", {
///     name: "example-vpclattice-service",
///     authType: "AWS_IAM",
///     customDomainName: "example.com",
/// });
/// const exampleAuthPolicy = new aws.vpclattice.AuthPolicy("example", {
///     resourceIdentifier: example.arn,
///     policy: JSON.stringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Action: "*",
///             Effect: "Allow",
///             Principal: "*",
///             Resource: "*",
///             Condition: {
///                 StringNotEqualsIgnoreCase: {
///                     "aws:PrincipalType": "anonymous",
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
/// example = aws.vpclattice.Service("example",
///     name="example-vpclattice-service",
///     auth_type="AWS_IAM",
///     custom_domain_name="example.com")
/// example_auth_policy = aws.vpclattice.AuthPolicy("example",
///     resource_identifier=example.arn,
///     policy=json.dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Action": "*",
///             "Effect": "Allow",
///             "Principal": "*",
///             "Resource": "*",
///             "Condition": {
///                 "StringNotEqualsIgnoreCase": {
///                     "aws:PrincipalType": "anonymous",
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
///     var example = new Aws.VpcLattice.Service("example", new()
///     {
///         Name = "example-vpclattice-service",
///         AuthType = "AWS_IAM",
///         CustomDomainName = "example.com",
///     });
///
///     var exampleAuthPolicy = new Aws.VpcLattice.AuthPolicy("example", new()
///     {
///         ResourceIdentifier = example.Arn,
///         Policy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Action"] = "*",
///                     ["Effect"] = "Allow",
///                     ["Principal"] = "*",
///                     ["Resource"] = "*",
///                     ["Condition"] = new Dictionary<string, object?>
///                     {
///                         ["StringNotEqualsIgnoreCase"] = new Dictionary<string, object?>
///                         {
///                             ["aws:PrincipalType"] = "anonymous",
///                         },
///                     },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/vpclattice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := vpclattice.NewService(ctx, "example", &vpclattice.ServiceArgs{
/// 			Name:             pulumi.String("example-vpclattice-service"),
/// 			AuthType:         pulumi.String("AWS_IAM"),
/// 			CustomDomainName: pulumi.String("example.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Version": "2012-10-17",
/// 			"Statement": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Action":    "*",
/// 					"Effect":    "Allow",
/// 					"Principal": "*",
/// 					"Resource":  "*",
/// 					"Condition": map[string]interface{}{
/// 						"StringNotEqualsIgnoreCase": map[string]interface{}{
/// 							"aws:PrincipalType": "anonymous",
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = vpclattice.NewAuthPolicy(ctx, "example", &vpclattice.AuthPolicyArgs{
/// 			ResourceIdentifier: example.Arn,
/// 			Policy:             pulumi.String(json0),
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
/// import com.pulumi.aws.vpclattice.Service;
/// import com.pulumi.aws.vpclattice.ServiceArgs;
/// import com.pulumi.aws.vpclattice.AuthPolicy;
/// import com.pulumi.aws.vpclattice.AuthPolicyArgs;
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
///         var example = new Service("example", ServiceArgs.builder()
///             .name("example-vpclattice-service")
///             .authType("AWS_IAM")
///             .customDomainName("example.com")
///             .build());
///
///         var exampleAuthPolicy = new AuthPolicy("exampleAuthPolicy", AuthPolicyArgs.builder()
///             .resourceIdentifier(example.arn())
///             .policy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Action", "*"),
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Principal", "*"),
///                         jsonProperty("Resource", "*"),
///                         jsonProperty("Condition", jsonObject(
///                             jsonProperty("StringNotEqualsIgnoreCase", jsonObject(
///                                 jsonProperty("aws:PrincipalType", "anonymous")
///                             ))
///                         ))
///                     )))
///                 )))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:vpclattice:Service
///     properties:
///       name: example-vpclattice-service
///       authType: AWS_IAM
///       customDomainName: example.com
///   exampleAuthPolicy:
///     type: aws:vpclattice:AuthPolicy
///     name: example
///     properties:
///       resourceIdentifier: ${example.arn}
///       policy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Action: '*'
///               Effect: Allow
///               Principal: '*'
///               Resource: '*'
///               Condition:
///                 StringNotEqualsIgnoreCase:
///                   aws:PrincipalType: anonymous
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import VPC Lattice Auth Policy using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:vpclattice/authPolicy:AuthPolicy example abcd-12345678
/// ```
class AuthPolicy extends pulumi.CustomResource {
  /// The auth policy. The policy string in JSON must not contain newlines or blank lines.
  late final pulumi.Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The ID or Amazon Resource Name (ARN) of the service network or service for which the policy is created.
  late final pulumi.Output<String> resourceIdentifier;

  /// The state of the auth policy. The auth policy is only active when the auth type is set to `AWS_IAM`. If you provide a policy, then authentication and authorization decisions are made based on this policy and the client's IAM policy. If the Auth type is `NONE`, then, any auth policy you provide will remain inactive.
  late final pulumi.Output<String?> state;

  /// Creates a new [AuthPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AuthPolicy]. {@macro pulumi_vpclattice_auth_policy_auth_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AuthPolicy(
    String name, {
    AuthPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:vpclattice/authPolicy:AuthPolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
    this.resourceIdentifier = registerOutput<String>('resourceIdentifier');
    this.state = registerOutput<String?>('state');
  }
}
