import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_profile_args.dart';
import 'instance_profile_state.dart';

/// Manages an AWS DMS (Database Migration) Instance Profile. An instance profile provides network and encryption information to DMS Schema Conversion for use in connecting to a data provider.
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
/// const example = new aws.dms.InstanceProfile("example", {name: "example"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.dms.InstanceProfile("example", name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Dms.InstanceProfile("example", new()
///     {
///         Name = "example",
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
/// 		_, err := dms.NewInstanceProfile(ctx, "example", &dms.InstanceProfileArgs{
/// 			Name: pulumi.String("example"),
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
/// resource "aws_dms_instanceprofile" "example" {
///   name = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.dms.InstanceProfile;
/// import com.pulumi.aws.dms.InstanceProfileArgs;
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
///         var example = new InstanceProfile("example", InstanceProfileArgs.builder()
///             .name("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:dms:InstanceProfile
///     properties:
///       name: example
/// ```
///
///
/// ### With Networking Configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.dms.InstanceProfile("example", {
///     name: "example",
///     description: "example instance profile",
///     networkType: "IPV4",
///     publiclyAccessible: false,
///     subnetGroupIdentifier: exampleAwsDmsReplicationSubnetGroup.id,
///     vpcSecurityGroupIds: [exampleAwsSecurityGroup.id],
///     kmsKeyArn: exampleAwsKmsKey.arn,
///     tags: {
///         Name: "example",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.dms.InstanceProfile("example",
///     name="example",
///     description="example instance profile",
///     network_type="IPV4",
///     publicly_accessible=False,
///     subnet_group_identifier=example_aws_dms_replication_subnet_group["id"],
///     vpc_security_group_ids=[example_aws_security_group["id"]],
///     kms_key_arn=example_aws_kms_key["arn"],
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
///     var example = new Aws.Dms.InstanceProfile("example", new()
///     {
///         Name = "example",
///         Description = "example instance profile",
///         NetworkType = "IPV4",
///         PubliclyAccessible = false,
///         SubnetGroupIdentifier = exampleAwsDmsReplicationSubnetGroup.Id,
///         VpcSecurityGroupIds = new[]
///         {
///             exampleAwsSecurityGroup.Id,
///         },
///         KmsKeyArn = exampleAwsKmsKey.Arn,
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
/// 		_, err := dms.NewInstanceProfile(ctx, "example", &dms.InstanceProfileArgs{
/// 			Name:                  pulumi.String("example"),
/// 			Description:           pulumi.String("example instance profile"),
/// 			NetworkType:           pulumi.String("IPV4"),
/// 			PubliclyAccessible:    pulumi.Bool(false),
/// 			SubnetGroupIdentifier: pulumi.Any(exampleAwsDmsReplicationSubnetGroup.Id),
/// 			VpcSecurityGroupIds: pulumi.StringArray{
/// 				exampleAwsSecurityGroup.Id,
/// 			},
/// 			KmsKeyArn: pulumi.Any(exampleAwsKmsKey.Arn),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_dms_instanceprofile" "example" {
///   name                    = "example"
///   description             = "example instance profile"
///   network_type            = "IPV4"
///   publicly_accessible     = false
///   subnet_group_identifier = exampleAwsDmsReplicationSubnetGroup.id
///   vpc_security_group_ids  = [exampleAwsSecurityGroup.id]
///   kms_key_arn             = exampleAwsKmsKey.arn
///   tags = {
///     "Name" = "example"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.dms.InstanceProfile;
/// import com.pulumi.aws.dms.InstanceProfileArgs;
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
///         var example = new InstanceProfile("example", InstanceProfileArgs.builder()
///             .name("example")
///             .description("example instance profile")
///             .networkType("IPV4")
///             .publiclyAccessible(false)
///             .subnetGroupIdentifier(exampleAwsDmsReplicationSubnetGroup.id())
///             .vpcSecurityGroupIds(exampleAwsSecurityGroup.id())
///             .kmsKeyArn(exampleAwsKmsKey.arn())
///             .tags(Map.of("Name", "example"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:dms:InstanceProfile
///     properties:
///       name: example
///       description: example instance profile
///       networkType: IPV4
///       publiclyAccessible: false
///       subnetGroupIdentifier: ${exampleAwsDmsReplicationSubnetGroup.id}
///       vpcSecurityGroupIds:
///         - ${exampleAwsSecurityGroup.id}
///       kmsKeyArn: ${exampleAwsKmsKey.arn}
///       tags:
///         Name: example
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `arn` (String) ARN of the instance profile.
///
///
/// Using `pulumi import`, import DMS (Database Migration) Instance Profile using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:dms/instanceProfile:InstanceProfile example arn:aws:dms:us-east-1:123456789012:instance-profile:ABCDEFGHIJKLMNOPQRSTUVWXYZ123456
/// ```
class InstanceProfile extends pulumi.CustomResource {
  /// ARN of the instance profile.
  late final pulumi.Output<String> arn;
  /// Availability Zone where the instance profile runs. Default is a random, system-chosen Availability Zone.
  late final pulumi.Output<String> availabilityZone;
  /// Description for the instance profile.
  late final pulumi.Output<String?> description;
  /// ARN of the KMS key used to encrypt the connection parameters for the instance profile. If you don't specify a value, DMS uses your default encryption key.
  late final pulumi.Output<String> kmsKeyArn;
  /// Name for the instance profile. If omitted, DMS assigns a generated name.
  late final pulumi.Output<String> name;
  /// Network type for the instance profile. Valid values are `IPV4`, `IPV6`, and `DUAL`.
  late final pulumi.Output<String> networkType;
  /// Whether the instance profile is publicly accessible. Default is `true`.
  late final pulumi.Output<bool> publiclyAccessible;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Subnet group to associate with the instance profile.
  late final pulumi.Output<String> subnetGroupIdentifier;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// VPC security group IDs to be used with the instance profile. The VPC security groups must work with the VPC containing the instance profile.
  late final pulumi.Output<List<String>> vpcSecurityGroupIds;

  /// Creates a new [InstanceProfile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InstanceProfile]. {@macro pulumi_dms_instance_profile_instance_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InstanceProfile(
    String name, {
    InstanceProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:dms/instanceProfile:InstanceProfile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.47.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    availabilityZone = registerOutput<String>('availabilityZone');
    description = registerOutput<String?>('description');
    kmsKeyArn = registerOutput<String>('kmsKeyArn');
    this.name = registerOutput<String>('name');
    networkType = registerOutput<String>('networkType');
    publiclyAccessible = registerOutput<bool>('publiclyAccessible');
    region = registerOutput<String>('region');
    subnetGroupIdentifier = registerOutput<String>('subnetGroupIdentifier');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    vpcSecurityGroupIds = registerOutput<List<String>>('vpcSecurityGroupIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Gets an existing [InstanceProfile] resource's state with the given [name] and [id].
  static InstanceProfile get(
    String name,
    pulumi.Input<String> id, {
    InstanceProfileState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return InstanceProfile._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  InstanceProfile._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:dms/instanceProfile:InstanceProfile',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    availabilityZone = registerOutput<String>('availabilityZone');
    description = registerOutput<String?>('description');
    kmsKeyArn = registerOutput<String>('kmsKeyArn');
    this.name = registerOutput<String>('name');
    networkType = registerOutput<String>('networkType');
    publiclyAccessible = registerOutput<bool>('publiclyAccessible');
    region = registerOutput<String>('region');
    subnetGroupIdentifier = registerOutput<String>('subnetGroupIdentifier');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    vpcSecurityGroupIds = registerOutput<List<String>>('vpcSecurityGroupIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Creates a typed reference to an existing [InstanceProfile] resource.
  InstanceProfile.reference(String urn)
    : super(
        'aws:dms/instanceProfile:InstanceProfile',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    availabilityZone = registerOutput<String>('availabilityZone');
    description = registerOutput<String?>('description');
    kmsKeyArn = registerOutput<String>('kmsKeyArn');
    this.name = registerOutput<String>('name');
    networkType = registerOutput<String>('networkType');
    publiclyAccessible = registerOutput<bool>('publiclyAccessible');
    region = registerOutput<String>('region');
    subnetGroupIdentifier = registerOutput<String>('subnetGroupIdentifier');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    vpcSecurityGroupIds = registerOutput<List<String>>('vpcSecurityGroupIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }
}
