import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication_set_args.dart';
import 'replication_set_region.dart';
import 'replication_set_state.dart';

/// Provides a resource for managing a replication set in AWS Systems Manager Incident Manager.
///
/// &gt; **NOTE:** Deleting a replication set also deletes all Incident Manager related data including response plans, incident records, contacts and escalation plans.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// Create a replication set.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const replicationSetName = new aws.ssmincidents.ReplicationSet("replicationSetName", {
///     regions: [{
///         name: "us-west-2",
///     }],
///     tags: {
///         exampleTag: "exampleValue",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// replication_set_name = aws.ssmincidents.ReplicationSet("replicationSetName",
///     regions=[{
///         "name": "us-west-2",
///     }],
///     tags={
///         "exampleTag": "exampleValue",
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
///     var replicationSetName = new Aws.SsmIncidents.ReplicationSet("replicationSetName", new()
///     {
///         Regions = new[]
///         {
///             new Aws.SsmIncidents.Inputs.ReplicationSetRegionArgs
///             {
///                 Name = "us-west-2",
///             },
///         },
///         Tags =
///         {
///             { "exampleTag", "exampleValue" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssmincidents"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ssmincidents.NewReplicationSet(ctx, "replicationSetName", &ssmincidents.ReplicationSetArgs{
/// 			Regions: ssmincidents.ReplicationSetRegionArray{
/// 				&ssmincidents.ReplicationSetRegionArgs{
/// 					Name: pulumi.String("us-west-2"),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"exampleTag": pulumi.String("exampleValue"),
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
/// resource "aws_ssmincidents_replicationset" "replicationSetName" {
///   regions {
///     name = "us-west-2"
///   }
///   tags = {
///     "exampleTag" = "exampleValue"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ssmincidents.ReplicationSet;
/// import com.pulumi.aws.ssmincidents.ReplicationSetArgs;
/// import com.pulumi.aws.ssmincidents.inputs.ReplicationSetRegionArgs;
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
///         var replicationSetName = new ReplicationSet("replicationSetName", ReplicationSetArgs.builder()
///             .regions(ReplicationSetRegionArgs.builder()
///                 .name("us-west-2")
///                 .build())
///             .tags(Map.of("exampleTag", "exampleValue"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   replicationSetName:
///     type: aws:ssmincidents:ReplicationSet
///     properties:
///       regions:
///         - name: us-west-2
///       tags:
///         exampleTag: exampleValue
/// ```
///
///
/// Add a Region to a replication set. (You can add only one Region at a time.)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const replicationSetName = new aws.ssmincidents.ReplicationSet("replicationSetName", {regions: [
///     {
///         name: "us-west-2",
///     },
///     {
///         name: "ap-southeast-2",
///     },
/// ]});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// replication_set_name = aws.ssmincidents.ReplicationSet("replicationSetName", regions=[
///     {
///         "name": "us-west-2",
///     },
///     {
///         "name": "ap-southeast-2",
///     },
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var replicationSetName = new Aws.SsmIncidents.ReplicationSet("replicationSetName", new()
///     {
///         Regions = new[]
///         {
///             new Aws.SsmIncidents.Inputs.ReplicationSetRegionArgs
///             {
///                 Name = "us-west-2",
///             },
///             new Aws.SsmIncidents.Inputs.ReplicationSetRegionArgs
///             {
///                 Name = "ap-southeast-2",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssmincidents"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ssmincidents.NewReplicationSet(ctx, "replicationSetName", &ssmincidents.ReplicationSetArgs{
/// 			Regions: ssmincidents.ReplicationSetRegionArray{
/// 				&ssmincidents.ReplicationSetRegionArgs{
/// 					Name: pulumi.String("us-west-2"),
/// 				},
/// 				&ssmincidents.ReplicationSetRegionArgs{
/// 					Name: pulumi.String("ap-southeast-2"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_ssmincidents_replicationset" "replicationSetName" {
///   regions {
///     name = "us-west-2"
///   }
///   regions {
///     name = "ap-southeast-2"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ssmincidents.ReplicationSet;
/// import com.pulumi.aws.ssmincidents.ReplicationSetArgs;
/// import com.pulumi.aws.ssmincidents.inputs.ReplicationSetRegionArgs;
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
///         var replicationSetName = new ReplicationSet("replicationSetName", ReplicationSetArgs.builder()
///             .regions(
///                 ReplicationSetRegionArgs.builder()
///                     .name("us-west-2")
///                     .build(),
///                 ReplicationSetRegionArgs.builder()
///                     .name("ap-southeast-2")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   replicationSetName:
///     type: aws:ssmincidents:ReplicationSet
///     properties:
///       regions:
///         - name: us-west-2
///         - name: ap-southeast-2
/// ```
///
///
/// Delete a Region from a replication set. (You can delete only one Region at a time.)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const replicationSetName = new aws.ssmincidents.ReplicationSet("replicationSetName", {regions: [{
///     name: "us-west-2",
/// }]});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// replication_set_name = aws.ssmincidents.ReplicationSet("replicationSetName", regions=[{
///     "name": "us-west-2",
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var replicationSetName = new Aws.SsmIncidents.ReplicationSet("replicationSetName", new()
///     {
///         Regions = new[]
///         {
///             new Aws.SsmIncidents.Inputs.ReplicationSetRegionArgs
///             {
///                 Name = "us-west-2",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssmincidents"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ssmincidents.NewReplicationSet(ctx, "replicationSetName", &ssmincidents.ReplicationSetArgs{
/// 			Regions: ssmincidents.ReplicationSetRegionArray{
/// 				&ssmincidents.ReplicationSetRegionArgs{
/// 					Name: pulumi.String("us-west-2"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_ssmincidents_replicationset" "replicationSetName" {
///   regions {
///     name = "us-west-2"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ssmincidents.ReplicationSet;
/// import com.pulumi.aws.ssmincidents.ReplicationSetArgs;
/// import com.pulumi.aws.ssmincidents.inputs.ReplicationSetRegionArgs;
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
///         var replicationSetName = new ReplicationSet("replicationSetName", ReplicationSetArgs.builder()
///             .regions(ReplicationSetRegionArgs.builder()
///                 .name("us-west-2")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   replicationSetName:
///     type: aws:ssmincidents:ReplicationSet
///     properties:
///       regions:
///         - name: us-west-2
/// ```
///
///
/// ### Basic Usage with an AWS Customer Managed Key
///
/// Create a replication set with a KMS customer manager key:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleKey = new aws.kms.Key("example_key", {});
/// const replicationSetName = new aws.ssmincidents.ReplicationSet("replicationSetName", {
///     regions: [{
///         name: "us-west-2",
///         kmsKeyArn: exampleKey.arn,
///     }],
///     tags: {
///         exampleTag: "exampleValue",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_key = aws.kms.Key("example_key")
/// replication_set_name = aws.ssmincidents.ReplicationSet("replicationSetName",
///     regions=[{
///         "name": "us-west-2",
///         "kms_key_arn": example_key.arn,
///     }],
///     tags={
///         "exampleTag": "exampleValue",
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
///     var exampleKey = new Aws.Kms.Key("example_key");
///
///     var replicationSetName = new Aws.SsmIncidents.ReplicationSet("replicationSetName", new()
///     {
///         Regions = new[]
///         {
///             new Aws.SsmIncidents.Inputs.ReplicationSetRegionArgs
///             {
///                 Name = "us-west-2",
///                 KmsKeyArn = exampleKey.Arn,
///             },
///         },
///         Tags =
///         {
///             { "exampleTag", "exampleValue" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssmincidents"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleKey, err := kms.NewKey(ctx, "example_key", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ssmincidents.NewReplicationSet(ctx, "replicationSetName", &ssmincidents.ReplicationSetArgs{
/// 			Regions: ssmincidents.ReplicationSetRegionArray{
/// 				&ssmincidents.ReplicationSetRegionArgs{
/// 					Name:      pulumi.String("us-west-2"),
/// 					KmsKeyArn: exampleKey.Arn,
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"exampleTag": pulumi.String("exampleValue"),
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
/// resource "aws_kms_key" "example_key" {
/// }
/// resource "aws_ssmincidents_replicationset" "replicationSetName" {
///   regions {
///     name        = "us-west-2"
///     kms_key_arn = aws_kms_key.example_key.arn
///   }
///   tags = {
///     "exampleTag" = "exampleValue"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.ssmincidents.ReplicationSet;
/// import com.pulumi.aws.ssmincidents.ReplicationSetArgs;
/// import com.pulumi.aws.ssmincidents.inputs.ReplicationSetRegionArgs;
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
///         var exampleKey = new Key("exampleKey");
///
///         var replicationSetName = new ReplicationSet("replicationSetName", ReplicationSetArgs.builder()
///             .regions(ReplicationSetRegionArgs.builder()
///                 .name("us-west-2")
///                 .kmsKeyArn(exampleKey.arn())
///                 .build())
///             .tags(Map.of("exampleTag", "exampleValue"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleKey:
///     type: aws:kms:Key
///     name: example_key
///   replicationSetName:
///     type: aws:ssmincidents:ReplicationSet
///     properties:
///       regions:
///         - name: us-west-2
///           kmsKeyArn: ${exampleKey.arn}
///       tags:
///         exampleTag: exampleValue
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import an Incident Manager replication. For example:
///
/// ```sh
/// $ pulumi import aws:ssmincidents/replicationSet:ReplicationSet replicationSetName import
/// ```
class ReplicationSet extends pulumi.CustomResource {
  /// The ARN of the replication set.
  late final pulumi.Output<String> arn;
  /// The ARN of the user who created the replication set.
  late final pulumi.Output<String> createdBy;
  /// If `true`, the last region in a replication set cannot be deleted.
  late final pulumi.Output<bool> deletionProtected;
  /// A timestamp showing when the replication set was last modified.
  late final pulumi.Output<String> lastModifiedBy;
  /// The replication set's Regions. Use `regions` instead.
  late final pulumi.Output<List<ReplicationSetRegion>> region;
  /// The replication set's Regions.
  late final pulumi.Output<List<ReplicationSetRegion>> regions;
  /// The current status of the Region.
  /// * Valid Values: `ACTIVE` | `CREATING` | `UPDATING` | `DELETING` | `FAILED`
  late final pulumi.Output<String> status;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// For information about the maximum allowed number of Regions and tag value constraints, see [CreateReplicationSet in the *AWS Systems Manager Incident Manager API Reference*](https://docs.aws.amazon.com/incident-manager/latest/APIReference/API_CreateReplicationSet.html).
  ///
  /// &gt; **NOTE:** The Region specified by a provider must always be one of the Regions specified for the replication set. This is especially important when you perform complex update operations.
  ///
  /// &gt; **NOTE:** After a replication set is created, you can add or delete only one Region at a time.
  ///
  /// &gt; **NOTE:** Incident Manager does not support updating the customer managed key associated with a replication set. Instead, for a replication set with multiple Regions, you must first delete a Region from the replication set, then re-add it with a different customer managed key in separate deploy operations. For a replication set with only one Region, the entire replication set must be deleted and recreated. To do this, comment out the replication set and all response plans, and then run the deploy command to recreate the replication set with the new customer managed key.
  ///
  /// &gt; **NOTE:** You must either use AWS-owned keys on all regions of a replication set, or customer managed keys. To change between an AWS owned key and a customer managed key, a replication set and it associated data must be deleted and recreated.
  ///
  /// &gt; **NOTE:** If possible, create all the customer managed keys you need (using the deploy command) before you create the replication set, or create the keys and replication set in the same deploy command. Otherwise, to delete a replication set, you must run one deploy command to delete the replication set and another to delete the AWS KMS keys used by the replication set. Deleting the AWS KMS keys before deleting the replication set results in an error. In that case, you must manually reenable the deleted key using the AWS Management Console before you can delete the replication set.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [ReplicationSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReplicationSet]. {@macro pulumi_ssmincidents_replication_set_replication_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReplicationSet(
    String name, {
    ReplicationSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssmincidents/replicationSet:ReplicationSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    createdBy = registerOutput<String>('createdBy');
    deletionProtected = registerOutput<bool>('deletionProtected');
    lastModifiedBy = registerOutput<String>('lastModifiedBy');
    region = registerOutput<List<ReplicationSetRegion>>('region', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ReplicationSetRegion>(guardedValue, (value) => ReplicationSetRegion.fromMap((value as Map).cast<String, dynamic>())); });
    regions = registerOutput<List<ReplicationSetRegion>>('regions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ReplicationSetRegion>(guardedValue, (value) => ReplicationSetRegion.fromMap((value as Map).cast<String, dynamic>())); });
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [ReplicationSet] resource's state with the given [name] and [id].
  static ReplicationSet get(
    String name,
    pulumi.Input<String> id, {
    ReplicationSetState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ReplicationSet._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ReplicationSet._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssmincidents/replicationSet:ReplicationSet',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    createdBy = registerOutput<String>('createdBy');
    deletionProtected = registerOutput<bool>('deletionProtected');
    lastModifiedBy = registerOutput<String>('lastModifiedBy');
    region = registerOutput<List<ReplicationSetRegion>>('region', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ReplicationSetRegion>(guardedValue, (value) => ReplicationSetRegion.fromMap((value as Map).cast<String, dynamic>())); });
    regions = registerOutput<List<ReplicationSetRegion>>('regions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ReplicationSetRegion>(guardedValue, (value) => ReplicationSetRegion.fromMap((value as Map).cast<String, dynamic>())); });
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [ReplicationSet] resource.
  ReplicationSet.reference(String urn)
    : super(
        'aws:ssmincidents/replicationSet:ReplicationSet',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    createdBy = registerOutput<String>('createdBy');
    deletionProtected = registerOutput<bool>('deletionProtected');
    lastModifiedBy = registerOutput<String>('lastModifiedBy');
    region = registerOutput<List<ReplicationSetRegion>>('region', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ReplicationSetRegion>(guardedValue, (value) => ReplicationSetRegion.fromMap((value as Map).cast<String, dynamic>())); });
    regions = registerOutput<List<ReplicationSetRegion>>('regions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ReplicationSetRegion>(guardedValue, (value) => ReplicationSetRegion.fromMap((value as Map).cast<String, dynamic>())); });
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
