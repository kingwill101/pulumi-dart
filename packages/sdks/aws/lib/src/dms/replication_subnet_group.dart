import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication_subnet_group_args.dart';
import 'replication_subnet_group_state.dart';

/// Provides a DMS (Data Migration Service) replication subnet group resource. DMS replication subnet groups can be created, updated, deleted, and imported.
///
/// > **Note:** AWS requires a special IAM role called `dms-vpc-role` when using this resource. See the example below to create it as part of your configuration.
///
/// ## Example Usage
///
/// ### Basic
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Create a new replication subnet group
/// const example = new aws.dms.ReplicationSubnetGroup("example", {
///     replicationSubnetGroupDescription: "Example replication subnet group",
///     replicationSubnetGroupId: "example-dms-replication-subnet-group-tf",
///     subnetIds: [
///         "subnet-12345678",
///         "subnet-12345679",
///     ],
///     tags: {
///         Name: "example",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Create a new replication subnet group
/// example = aws.dms.ReplicationSubnetGroup("example",
///     replication_subnet_group_description="Example replication subnet group",
///     replication_subnet_group_id="example-dms-replication-subnet-group-tf",
///     subnet_ids=[
///         "subnet-12345678",
///         "subnet-12345679",
///     ],
///     tags={
///         "Name": "example",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Create a new replication subnet group
///     var example = new Aws.Dms.ReplicationSubnetGroup("example", new()
///     {
///         ReplicationSubnetGroupDescription = "Example replication subnet group",
///         ReplicationSubnetGroupId = "example-dms-replication-subnet-group-tf",
///         SubnetIds = new[]
///         {
///             "subnet-12345678",
///             "subnet-12345679",
///         },
///         Tags =
///         {
///             { "Name", "example" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/dms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Create a new replication subnet group
/// 		_, err := dms.NewReplicationSubnetGroup(ctx, "example", &dms.ReplicationSubnetGroupArgs{
/// 			ReplicationSubnetGroupDescription: pulumi.String("Example replication subnet group"),
/// 			ReplicationSubnetGroupId:          pulumi.String("example-dms-replication-subnet-group-tf"),
/// 			SubnetIds: pulumi.StringArray{
/// 				pulumi.String("subnet-12345678"),
/// 				pulumi.String("subnet-12345679"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("example"),
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
/// import com.pulumi.aws.dms.ReplicationSubnetGroup;
/// import com.pulumi.aws.dms.ReplicationSubnetGroupArgs;
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
///         // Create a new replication subnet group
///         var example = new ReplicationSubnetGroup("example", ReplicationSubnetGroupArgs.builder()
///             .replicationSubnetGroupDescription("Example replication subnet group")
///             .replicationSubnetGroupId("example-dms-replication-subnet-group-tf")
///             .subnetIds(
///                 "subnet-12345678",
///                 "subnet-12345679")
///             .tags(Map.of("Name", "example"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Create a new replication subnet group
///   example:
///     type: aws:dms:ReplicationSubnetGroup
///     properties:
///       replicationSubnetGroupDescription: Example replication subnet group
///       replicationSubnetGroupId: example-dms-replication-subnet-group-tf
///       subnetIds:
///         - subnet-12345678
///         - subnet-12345679
///       tags:
///         Name: example
/// ```
///
///
/// ### Creating special IAM role
///
/// If your account does not already include the `dms-vpc-role` IAM role, you will need to create it to allow DMS to manage subnets in the VPC.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const dms_vpc_role = new aws.iam.Role("dms-vpc-role", {
///     name: "dms-vpc-role",
///     description: "Allows DMS to manage VPC",
///     assumeRolePolicy: JSON.stringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Effect: "Allow",
///             Principal: {
///                 Service: "dms.amazonaws.com",
///             },
///             Action: "sts:AssumeRole",
///         }],
///     }),
/// });
/// const example = new aws.iam.RolePolicyAttachment("example", {
///     role: dms_vpc_role.name,
///     policyArn: "arn:aws:iam::aws:policy/service-role/AmazonDMSVPCManagementRole",
/// });
/// const exampleReplicationSubnetGroup = new aws.dms.ReplicationSubnetGroup("example", {
///     replicationSubnetGroupDescription: "Example",
///     replicationSubnetGroupId: "example-id",
///     subnetIds: [
///         "subnet-12345678",
///         "subnet-12345679",
///     ],
///     tags: {
///         Name: "example-id",
///     },
/// }, {
///     dependsOn: [example],
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// dms_vpc_role = aws.iam.Role("dms-vpc-role",
///     name="dms-vpc-role",
///     description="Allows DMS to manage VPC",
///     assume_role_policy=json.dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Effect": "Allow",
///             "Principal": {
///                 "Service": "dms.amazonaws.com",
///             },
///             "Action": "sts:AssumeRole",
///         }],
///     }))
/// example = aws.iam.RolePolicyAttachment("example",
///     role=dms_vpc_role.name,
///     policy_arn="arn:aws:iam::aws:policy/service-role/AmazonDMSVPCManagementRole")
/// example_replication_subnet_group = aws.dms.ReplicationSubnetGroup("example",
///     replication_subnet_group_description="Example",
///     replication_subnet_group_id="example-id",
///     subnet_ids=[
///         "subnet-12345678",
///         "subnet-12345679",
///     ],
///     tags={
///         "Name": "example-id",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[example]))
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
///     var dms_vpc_role = new Aws.Iam.Role("dms-vpc-role", new()
///     {
///         Name = "dms-vpc-role",
///         Description = "Allows DMS to manage VPC",
///         AssumeRolePolicy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Effect"] = "Allow",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["Service"] = "dms.amazonaws.com",
///                     },
///                     ["Action"] = "sts:AssumeRole",
///                 },
///             },
///         }),
///     });
///
///     var example = new Aws.Iam.RolePolicyAttachment("example", new()
///     {
///         Role = dms_vpc_role.Name,
///         PolicyArn = "arn:aws:iam::aws:policy/service-role/AmazonDMSVPCManagementRole",
///     });
///
///     var exampleReplicationSubnetGroup = new Aws.Dms.ReplicationSubnetGroup("example", new()
///     {
///         ReplicationSubnetGroupDescription = "Example",
///         ReplicationSubnetGroupId = "example-id",
///         SubnetIds = new[]
///         {
///             "subnet-12345678",
///             "subnet-12345679",
///         },
///         Tags =
///         {
///             { "Name", "example-id" },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             example,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/dms"
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
/// 					"Effect": "Allow",
/// 					"Principal": map[string]interface{}{
/// 						"Service": "dms.amazonaws.com",
/// 					},
/// 					"Action": "sts:AssumeRole",
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		dms_vpc_role, err := iam.NewRole(ctx, "dms-vpc-role", &iam.RoleArgs{
/// 			Name:             pulumi.String("dms-vpc-role"),
/// 			Description:      pulumi.String("Allows DMS to manage VPC"),
/// 			AssumeRolePolicy: pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := iam.NewRolePolicyAttachment(ctx, "example", &iam.RolePolicyAttachmentArgs{
/// 			Role:      dms_vpc_role.Name,
/// 			PolicyArn: pulumi.String("arn:aws:iam::aws:policy/service-role/AmazonDMSVPCManagementRole"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dms.NewReplicationSubnetGroup(ctx, "example", &dms.ReplicationSubnetGroupArgs{
/// 			ReplicationSubnetGroupDescription: pulumi.String("Example"),
/// 			ReplicationSubnetGroupId:          pulumi.String("example-id"),
/// 			SubnetIds: pulumi.StringArray{
/// 				pulumi.String("subnet-12345678"),
/// 				pulumi.String("subnet-12345679"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("example-id"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			example,
/// 		}))
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
/// import com.pulumi.aws.iam.RolePolicyAttachment;
/// import com.pulumi.aws.iam.RolePolicyAttachmentArgs;
/// import com.pulumi.aws.dms.ReplicationSubnetGroup;
/// import com.pulumi.aws.dms.ReplicationSubnetGroupArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var dms_vpc_role = new Role("dms-vpc-role", RoleArgs.builder()
///             .name("dms-vpc-role")
///             .description("Allows DMS to manage VPC")
///             .assumeRolePolicy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Principal", jsonObject(
///                             jsonProperty("Service", "dms.amazonaws.com")
///                         )),
///                         jsonProperty("Action", "sts:AssumeRole")
///                     )))
///                 )))
///             .build());
///
///         var example = new RolePolicyAttachment("example", RolePolicyAttachmentArgs.builder()
///             .role(dms_vpc_role.name())
///             .policyArn("arn:aws:iam::aws:policy/service-role/AmazonDMSVPCManagementRole")
///             .build());
///
///         var exampleReplicationSubnetGroup = new ReplicationSubnetGroup("exampleReplicationSubnetGroup", ReplicationSubnetGroupArgs.builder()
///             .replicationSubnetGroupDescription("Example")
///             .replicationSubnetGroupId("example-id")
///             .subnetIds(
///                 "subnet-12345678",
///                 "subnet-12345679")
///             .tags(Map.of("Name", "example-id"))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(example)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   dms-vpc-role:
///     type: aws:iam:Role
///     properties:
///       name: dms-vpc-role
///       description: Allows DMS to manage VPC
///       assumeRolePolicy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Effect: Allow
///               Principal:
///                 Service: dms.amazonaws.com
///               Action: sts:AssumeRole
///   example:
///     type: aws:iam:RolePolicyAttachment
///     properties:
///       role: ${["dms-vpc-role"].name}
///       policyArn: arn:aws:iam::aws:policy/service-role/AmazonDMSVPCManagementRole
///   exampleReplicationSubnetGroup:
///     type: aws:dms:ReplicationSubnetGroup
///     name: example
///     properties:
///       replicationSubnetGroupDescription: Example
///       replicationSubnetGroupId: example-id
///       subnetIds:
///         - subnet-12345678
///         - subnet-12345679
///       tags:
///         Name: example-id
///     options:
///       dependsOn:
///         - ${example}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import replication subnet groups using the `replication_subnet_group_id`. For example:
///
/// ```sh
/// $ pulumi import aws:dms/replicationSubnetGroup:ReplicationSubnetGroup test test-dms-replication-subnet-group-tf
/// ```
class ReplicationSubnetGroup extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  late final pulumi.Output<String> replicationSubnetGroupArn;
  /// Description for the subnet group.
  late final pulumi.Output<String> replicationSubnetGroupDescription;
  /// Name for the replication subnet group. This value is stored as a lowercase string. It must contain no more than 255 alphanumeric characters, periods, spaces, underscores, or hyphens and cannot be `default`.
  late final pulumi.Output<String> replicationSubnetGroupId;
  /// List of at least 2 EC2 subnet IDs for the subnet group. The subnets must cover at least 2 availability zones.
  late final pulumi.Output<List<String>> subnetIds;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The ID of the VPC the subnet group is in.
  late final pulumi.Output<String> vpcId;

  /// Creates a new [ReplicationSubnetGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReplicationSubnetGroup]. {@macro pulumi_dms_replication_subnet_group_replication_subnet_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReplicationSubnetGroup(
    String name, {
    ReplicationSubnetGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:dms/replicationSubnetGroup:ReplicationSubnetGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.replicationSubnetGroupArn = registerOutput<String>('replicationSubnetGroupArn');
    this.replicationSubnetGroupDescription = registerOutput<String>('replicationSubnetGroupDescription');
    this.replicationSubnetGroupId = registerOutput<String>('replicationSubnetGroupId');
    this.subnetIds = registerOutput<List<String>>('subnetIds');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcId = registerOutput<String>('vpcId');
  }

  /// Gets an existing [ReplicationSubnetGroup] resource's state with the given [name] and [id].
  static ReplicationSubnetGroup get(
    String name,
    pulumi.Input<String> id, {
    ReplicationSubnetGroupState? state,
  }) {
    return ReplicationSubnetGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ReplicationSubnetGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:dms/replicationSubnetGroup:ReplicationSubnetGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.replicationSubnetGroupArn = registerOutput<String>('replicationSubnetGroupArn');
    this.replicationSubnetGroupDescription = registerOutput<String>('replicationSubnetGroupDescription');
    this.replicationSubnetGroupId = registerOutput<String>('replicationSubnetGroupId');
    this.subnetIds = registerOutput<List<String>>('subnetIds');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
