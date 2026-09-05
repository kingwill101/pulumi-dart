import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_policy_args.dart';
import 'cluster_policy_state.dart';
import 'cluster_policy_timeouts.dart';

/// Resource for managing an Amazon Aurora DSQL Cluster resource-based policy.
///
/// &gt; Aurora DSQL resource-based policies can grant access to principals within the same AWS account as the cluster. Cross-account access is not currently supported by Aurora DSQL resource-based policies.
///
/// &gt; Aurora DSQL resource-based policy changes are eventually consistent and typically take effect within one minute.
///
/// ## Example Usage
///
/// ### Block Public Internet Access
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.dsql.Cluster("example", {});
/// const exampleClusterPolicy = new aws.dsql.ClusterPolicy("example", {
///     identifier: example.identifier,
///     policy: JSON.stringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Sid: "DenyAccessFromOutsideVPC",
///             Effect: "Deny",
///             Principal: {
///                 AWS: "*",
///             },
///             Action: [
///                 "dsql:DbConnect",
///                 "dsql:DbConnectAdmin",
///             ],
///             Resource: "*",
///             Condition: {
///                 Null: {
///                     "aws:SourceVpc": "true",
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
/// example = aws.dsql.Cluster("example")
/// example_cluster_policy = aws.dsql.ClusterPolicy("example",
///     identifier=example.identifier,
///     policy=json.dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Sid": "DenyAccessFromOutsideVPC",
///             "Effect": "Deny",
///             "Principal": {
///                 "AWS": "*",
///             },
///             "Action": [
///                 "dsql:DbConnect",
///                 "dsql:DbConnectAdmin",
///             ],
///             "Resource": "*",
///             "Condition": {
///                 "Null": {
///                     "aws:SourceVpc": "true",
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
///     var example = new Aws.Dsql.Cluster("example");
///
///     var exampleClusterPolicy = new Aws.Dsql.ClusterPolicy("example", new()
///     {
///         Identifier = example.Identifier,
///         Policy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Sid"] = "DenyAccessFromOutsideVPC",
///                     ["Effect"] = "Deny",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["AWS"] = "*",
///                     },
///                     ["Action"] = new[]
///                     {
///                         "dsql:DbConnect",
///                         "dsql:DbConnectAdmin",
///                     },
///                     ["Resource"] = "*",
///                     ["Condition"] = new Dictionary<string, object?>
///                     {
///                         ["Null"] = new Dictionary<string, object?>
///                         {
///                             ["aws:SourceVpc"] = "true",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/dsql"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := dsql.NewCluster(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Version": "2012-10-17",
/// 			"Statement": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Sid":    "DenyAccessFromOutsideVPC",
/// 					"Effect": "Deny",
/// 					"Principal": map[string]string{
/// 						"AWS": "*",
/// 					},
/// 					"Action": []string{
/// 						"dsql:DbConnect",
/// 						"dsql:DbConnectAdmin",
/// 					},
/// 					"Resource": "*",
/// 					"Condition": map[string]map[string]string{
/// 						"Null": map[string]string{
/// 							"aws:SourceVpc": "true",
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = dsql.NewClusterPolicy(ctx, "example", &dsql.ClusterPolicyArgs{
/// 			Identifier: example.Identifier,
/// 			Policy:     pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_dsql_cluster" "example" {
/// }
/// resource "aws_dsql_clusterpolicy" "example" {
///   identifier = aws_dsql_cluster.example.identifier
///   policy = jsonencode({
///     "Version" = "2012-10-17"
///     "Statement" = [{
///       "Sid"    = "DenyAccessFromOutsideVPC"
///       "Effect" = "Deny"
///       "Principal" = {
///         "AWS" = "*"
///       }
///       "Action"   = ["dsql:DbConnect", "dsql:DbConnectAdmin"]
///       "Resource" = "*"
///       "Condition" = {
///         "Null" = {
///           "aws:SourceVpc" = "true"
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
/// import com.pulumi.aws.dsql.Cluster;
/// import com.pulumi.aws.dsql.ClusterPolicy;
/// import com.pulumi.aws.dsql.ClusterPolicyArgs;
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
///         var example = new Cluster("example");
///
///         var exampleClusterPolicy = new ClusterPolicy("exampleClusterPolicy", ClusterPolicyArgs.builder()
///             .identifier(example.identifier())
///             .policy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Sid", "DenyAccessFromOutsideVPC"),
///                         jsonProperty("Effect", "Deny"),
///                         jsonProperty("Principal", jsonObject(
///                             jsonProperty("AWS", "*")
///                         )),
///                         jsonProperty("Action", jsonArray(
///                             "dsql:DbConnect",
///                             "dsql:DbConnectAdmin"
///                         )),
///                         jsonProperty("Resource", "*"),
///                         jsonProperty("Condition", jsonObject(
///                             jsonProperty("Null", jsonObject(
///                                 jsonProperty("aws:SourceVpc", "true")
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
///     type: aws:dsql:Cluster
///   exampleClusterPolicy:
///     type: aws:dsql:ClusterPolicy
///     name: example
///     properties:
///       identifier: ${example.identifier}
///       policy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Sid: DenyAccessFromOutsideVPC
///               Effect: Deny
///               Principal:
///                 AWS: '*'
///               Action:
///                 - dsql:DbConnect
///                 - dsql:DbConnectAdmin
///               Resource: '*'
///               Condition:
///                 Null:
///                   aws:SourceVpc: 'true'
/// ```
///
///
/// This policy denies `dsql:DbConnect` and `dsql:DbConnectAdmin` requests from the public internet. It only checks whether the request came from a VPC. To limit access to a specific VPC, use `aws:SourceVpc` with `StringNotEquals`.
///
/// The calling principal still requires an identity-based IAM policy that allows the required Aurora DSQL actions on the cluster.
///
/// ### Restrict Access to a Specific VPC
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.dsql.Cluster("example", {});
/// const exampleClusterPolicy = new aws.dsql.ClusterPolicy("example", {
///     identifier: example.identifier,
///     policy: pulumi.jsonStringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Sid: "DenyAccessFromOtherVPCs",
///             Effect: "Deny",
///             Principal: {
///                 AWS: "*",
///             },
///             Action: [
///                 "dsql:DbConnect",
///                 "dsql:DbConnectAdmin",
///             ],
///             Resource: example.arn,
///             Condition: {
///                 StringNotEquals: {
///                     "aws:SourceVpc": exampleAwsVpc.id,
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
/// example = aws.dsql.Cluster("example")
/// example_cluster_policy = aws.dsql.ClusterPolicy("example",
///     identifier=example.identifier,
///     policy=pulumi.Output.json_dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Sid": "DenyAccessFromOtherVPCs",
///             "Effect": "Deny",
///             "Principal": {
///                 "AWS": "*",
///             },
///             "Action": [
///                 "dsql:DbConnect",
///                 "dsql:DbConnectAdmin",
///             ],
///             "Resource": example.arn,
///             "Condition": {
///                 "StringNotEquals": {
///                     "aws:SourceVpc": example_aws_vpc["id"],
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
///     var example = new Aws.Dsql.Cluster("example");
///
///     var exampleClusterPolicy = new Aws.Dsql.ClusterPolicy("example", new()
///     {
///         Identifier = example.Identifier,
///         Policy = Output.JsonSerialize(Output.Create(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Sid"] = "DenyAccessFromOtherVPCs",
///                     ["Effect"] = "Deny",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["AWS"] = "*",
///                     },
///                     ["Action"] = new[]
///                     {
///                         "dsql:DbConnect",
///                         "dsql:DbConnectAdmin",
///                     },
///                     ["Resource"] = example.Arn,
///                     ["Condition"] = new Dictionary<string, object?>
///                     {
///                         ["StringNotEquals"] = new Dictionary<string, object?>
///                         {
///                             ["aws:SourceVpc"] = exampleAwsVpc.Id,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/dsql"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := dsql.NewCluster(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dsql.NewClusterPolicy(ctx, "example", &dsql.ClusterPolicyArgs{
/// 			Identifier: example.Identifier,
/// 			Policy: example.Arn.ApplyT(func(arn string) (pulumi.String, error) {
/// 				var _zero pulumi.String
/// 				tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 					"Version": "2012-10-17",
/// 					"Statement": []map[string]interface{}{
/// 						map[string]interface{}{
/// 							"Sid":    "DenyAccessFromOtherVPCs",
/// 							"Effect": "Deny",
/// 							"Principal": map[string]string{
/// 								"AWS": "*",
/// 							},
/// 							"Action": []string{
/// 								"dsql:DbConnect",
/// 								"dsql:DbConnectAdmin",
/// 							},
/// 							"Resource": arn,
/// 							"Condition": map[string]map[string]interface{}{
/// 								"StringNotEquals": map[string]interface{}{
/// 									"aws:SourceVpc": exampleAwsVpc.Id,
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
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_dsql_cluster" "example" {
/// }
/// resource "aws_dsql_clusterpolicy" "example" {
///   identifier = aws_dsql_cluster.example.identifier
///   policy = jsonencode({
///     "Version" = "2012-10-17"
///     "Statement" = [{
///       "Sid"    = "DenyAccessFromOtherVPCs"
///       "Effect" = "Deny"
///       "Principal" = {
///         "AWS" = "*"
///       }
///       "Action"   = ["dsql:DbConnect", "dsql:DbConnectAdmin"]
///       "Resource" = aws_dsql_cluster.example.arn
///       "Condition" = {
///         "StringNotEquals" = {
///           "aws:SourceVpc" = exampleAwsVpc.id
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
/// import com.pulumi.aws.dsql.Cluster;
/// import com.pulumi.aws.dsql.ClusterPolicy;
/// import com.pulumi.aws.dsql.ClusterPolicyArgs;
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
///         var example = new Cluster("example");
///
///         var exampleClusterPolicy = new ClusterPolicy("exampleClusterPolicy", ClusterPolicyArgs.builder()
///             .identifier(example.identifier())
///             .policy(example.arn().applyValue(_arn -> serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Sid", "DenyAccessFromOtherVPCs"),
///                         jsonProperty("Effect", "Deny"),
///                         jsonProperty("Principal", jsonObject(
///                             jsonProperty("AWS", "*")
///                         )),
///                         jsonProperty("Action", jsonArray(
///                             "dsql:DbConnect",
///                             "dsql:DbConnectAdmin"
///                         )),
///                         jsonProperty("Resource", _arn),
///                         jsonProperty("Condition", jsonObject(
///                             jsonProperty("StringNotEquals", jsonObject(
///                                 jsonProperty("aws:SourceVpc", exampleAwsVpc.id())
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
///     type: aws:dsql:Cluster
///   exampleClusterPolicy:
///     type: aws:dsql:ClusterPolicy
///     name: example
///     properties:
///       identifier: ${example.identifier}
///       policy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Sid: DenyAccessFromOtherVPCs
///               Effect: Deny
///               Principal:
///                 AWS: '*'
///               Action:
///                 - dsql:DbConnect
///                 - dsql:DbConnectAdmin
///               Resource: ${example.arn}
///               Condition:
///                 StringNotEquals:
///                   aws:SourceVpc: ${exampleAwsVpc.id}
/// ```
///
///
/// ### Restrict Access to an AWS Organization
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.dsql.Cluster("example", {});
/// const exampleClusterPolicy = new aws.dsql.ClusterPolicy("example", {
///     identifier: example.identifier,
///     policy: pulumi.jsonStringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Sid: "DenyAccessFromOutsideOrganization",
///             Effect: "Deny",
///             Principal: {
///                 AWS: "*",
///             },
///             Action: [
///                 "dsql:DbConnect",
///                 "dsql:DbConnectAdmin",
///             ],
///             Resource: example.arn,
///             Condition: {
///                 StringNotEquals: {
///                     "aws:PrincipalOrgID": "o-exampleorgid",
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
/// example = aws.dsql.Cluster("example")
/// example_cluster_policy = aws.dsql.ClusterPolicy("example",
///     identifier=example.identifier,
///     policy=pulumi.Output.json_dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Sid": "DenyAccessFromOutsideOrganization",
///             "Effect": "Deny",
///             "Principal": {
///                 "AWS": "*",
///             },
///             "Action": [
///                 "dsql:DbConnect",
///                 "dsql:DbConnectAdmin",
///             ],
///             "Resource": example.arn,
///             "Condition": {
///                 "StringNotEquals": {
///                     "aws:PrincipalOrgID": "o-exampleorgid",
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
///     var example = new Aws.Dsql.Cluster("example");
///
///     var exampleClusterPolicy = new Aws.Dsql.ClusterPolicy("example", new()
///     {
///         Identifier = example.Identifier,
///         Policy = Output.JsonSerialize(Output.Create(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Sid"] = "DenyAccessFromOutsideOrganization",
///                     ["Effect"] = "Deny",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["AWS"] = "*",
///                     },
///                     ["Action"] = new[]
///                     {
///                         "dsql:DbConnect",
///                         "dsql:DbConnectAdmin",
///                     },
///                     ["Resource"] = example.Arn,
///                     ["Condition"] = new Dictionary<string, object?>
///                     {
///                         ["StringNotEquals"] = new Dictionary<string, object?>
///                         {
///                             ["aws:PrincipalOrgID"] = "o-exampleorgid",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/dsql"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := dsql.NewCluster(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dsql.NewClusterPolicy(ctx, "example", &dsql.ClusterPolicyArgs{
/// 			Identifier: example.Identifier,
/// 			Policy: example.Arn.ApplyT(func(arn string) (pulumi.String, error) {
/// 				var _zero pulumi.String
/// 				tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 					"Version": "2012-10-17",
/// 					"Statement": []map[string]interface{}{
/// 						map[string]interface{}{
/// 							"Sid":    "DenyAccessFromOutsideOrganization",
/// 							"Effect": "Deny",
/// 							"Principal": map[string]string{
/// 								"AWS": "*",
/// 							},
/// 							"Action": []string{
/// 								"dsql:DbConnect",
/// 								"dsql:DbConnectAdmin",
/// 							},
/// 							"Resource": arn,
/// 							"Condition": map[string]map[string]string{
/// 								"StringNotEquals": map[string]string{
/// 									"aws:PrincipalOrgID": "o-exampleorgid",
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
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_dsql_cluster" "example" {
/// }
/// resource "aws_dsql_clusterpolicy" "example" {
///   identifier = aws_dsql_cluster.example.identifier
///   policy = jsonencode({
///     "Version" = "2012-10-17"
///     "Statement" = [{
///       "Sid"    = "DenyAccessFromOutsideOrganization"
///       "Effect" = "Deny"
///       "Principal" = {
///         "AWS" = "*"
///       }
///       "Action"   = ["dsql:DbConnect", "dsql:DbConnectAdmin"]
///       "Resource" = aws_dsql_cluster.example.arn
///       "Condition" = {
///         "StringNotEquals" = {
///           "aws:PrincipalOrgID" = "o-exampleorgid"
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
/// import com.pulumi.aws.dsql.Cluster;
/// import com.pulumi.aws.dsql.ClusterPolicy;
/// import com.pulumi.aws.dsql.ClusterPolicyArgs;
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
///         var example = new Cluster("example");
///
///         var exampleClusterPolicy = new ClusterPolicy("exampleClusterPolicy", ClusterPolicyArgs.builder()
///             .identifier(example.identifier())
///             .policy(example.arn().applyValue(_arn -> serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Sid", "DenyAccessFromOutsideOrganization"),
///                         jsonProperty("Effect", "Deny"),
///                         jsonProperty("Principal", jsonObject(
///                             jsonProperty("AWS", "*")
///                         )),
///                         jsonProperty("Action", jsonArray(
///                             "dsql:DbConnect",
///                             "dsql:DbConnectAdmin"
///                         )),
///                         jsonProperty("Resource", _arn),
///                         jsonProperty("Condition", jsonObject(
///                             jsonProperty("StringNotEquals", jsonObject(
///                                 jsonProperty("aws:PrincipalOrgID", "o-exampleorgid")
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
///     type: aws:dsql:Cluster
///   exampleClusterPolicy:
///     type: aws:dsql:ClusterPolicy
///     name: example
///     properties:
///       identifier: ${example.identifier}
///       policy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Sid: DenyAccessFromOutsideOrganization
///               Effect: Deny
///               Principal:
///                 AWS: '*'
///               Action:
///                 - dsql:DbConnect
///                 - dsql:DbConnectAdmin
///               Resource: ${example.arn}
///               Condition:
///                 StringNotEquals:
///                   aws:PrincipalOrgID: o-exampleorgid
/// ```
///
///
/// For more examples, including specific organizational units and multi-Region cluster policies, see the [Aurora DSQL resource-based policy examples](https://docs.aws.amazon.com/aurora-dsql/latest/userguide/rbp-examples.html).
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `identifier` (String) Identifier of the Aurora DSQL Cluster.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Aurora DSQL Cluster Policies using the cluster `identifier`. For example:
///
/// ```sh
/// $ pulumi import aws:dsql/clusterPolicy:ClusterPolicy example abcde1f234ghijklmnop5qr6st
/// ```
class ClusterPolicy extends pulumi.CustomResource {
  /// Whether to bypass the policy lockout safety check. Setting this value to `true` increases the risk that the cluster becomes unmanageable. Defaults to `false`.
  late final pulumi.Output<bool> bypassPolicyLockoutSafetyCheck;
  /// Identifier of the Aurora DSQL Cluster.
  late final pulumi.Output<String> identifier;
  /// Resource-based policy document as JSON.
  late final pulumi.Output<String> policy;
  /// Version of the policy document.
  late final pulumi.Output<String> policyVersion;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  late final pulumi.Output<ClusterPolicyTimeouts?> timeouts;

  /// Creates a new [ClusterPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ClusterPolicy]. {@macro pulumi_dsql_cluster_policy_cluster_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ClusterPolicy(
    String name, {
    ClusterPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:dsql/clusterPolicy:ClusterPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    bypassPolicyLockoutSafetyCheck = registerOutput<bool>('bypassPolicyLockoutSafetyCheck');
    identifier = registerOutput<String>('identifier');
    policy = registerOutput<String>('policy');
    policyVersion = registerOutput<String>('policyVersion');
    region = registerOutput<String>('region');
    timeouts = registerOutput<ClusterPolicyTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterPolicyTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [ClusterPolicy] resource's state with the given [name] and [id].
  static ClusterPolicy get(
    String name,
    pulumi.Input<String> id, {
    ClusterPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ClusterPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ClusterPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:dsql/clusterPolicy:ClusterPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bypassPolicyLockoutSafetyCheck = registerOutput<bool>('bypassPolicyLockoutSafetyCheck');
    identifier = registerOutput<String>('identifier');
    policy = registerOutput<String>('policy');
    policyVersion = registerOutput<String>('policyVersion');
    region = registerOutput<String>('region');
    timeouts = registerOutput<ClusterPolicyTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterPolicyTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [ClusterPolicy] resource.
  ClusterPolicy.reference(String urn)
    : super(
        'aws:dsql/clusterPolicy:ClusterPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    bypassPolicyLockoutSafetyCheck = registerOutput<bool>('bypassPolicyLockoutSafetyCheck');
    identifier = registerOutput<String>('identifier');
    policy = registerOutput<String>('policy');
    policyVersion = registerOutput<String>('policyVersion');
    region = registerOutput<String>('region');
    timeouts = registerOutput<ClusterPolicyTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterPolicyTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
