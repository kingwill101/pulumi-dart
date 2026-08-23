import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_default_kms_key_args.dart';
import 'get_default_kms_key_result.dart';
import 'get_ebs_volumes_args.dart';
import 'get_ebs_volumes_result.dart';
import 'get_encryption_by_default_args.dart';
import 'get_encryption_by_default_result.dart';
import 'get_snapshot_args.dart';
import 'get_snapshot_ids_args.dart';
import 'get_snapshot_ids_result.dart';
import 'get_snapshot_result.dart';
import 'get_volume_args.dart';
import 'get_volume_result.dart';

/// Use this data source to get the default EBS encryption KMS key in the current region.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.ebs.getDefaultKmsKey({});
/// const example = new aws.ebs.Volume("example", {
///     availabilityZone: "us-west-2a",
///     encrypted: true,
///     kmsKeyId: current.then(current => current.keyArn),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.ebs.get_default_kms_key()
/// example = aws.ebs.Volume("example",
///     availability_zone="us-west-2a",
///     encrypted=True,
///     kms_key_id=current.key_arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.Ebs.GetDefaultKmsKey.Invoke();
///
///     var example = new Aws.Ebs.Volume("example", new()
///     {
///         AvailabilityZone = "us-west-2a",
///         Encrypted = true,
///         KmsKeyId = current.Apply(getDefaultKmsKeyResult => getDefaultKmsKeyResult.KeyArn),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ebs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := ebs.LookupDefaultKmsKey(ctx, &ebs.LookupDefaultKmsKeyArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ebs.NewVolume(ctx, "example", &ebs.VolumeArgs{
/// 			AvailabilityZone: pulumi.String("us-west-2a"),
/// 			Encrypted:        pulumi.Bool(true),
/// 			KmsKeyId:         pulumi.String(current.KeyArn),
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
/// data "aws_ebs_getdefaultkmskey" "current" {
/// }
///
/// resource "aws_ebs_volume" "example" {
///   availability_zone = "us-west-2a"
///   encrypted         = true
///   kms_key_id        = data.aws_ebs_getdefaultkmskey.current.key_arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ebs.EbsFunctions;
/// import com.pulumi.aws.ebs.inputs.GetDefaultKmsKeyArgs;
/// import com.pulumi.aws.ebs.Volume;
/// import com.pulumi.aws.ebs.VolumeArgs;
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
///         final var current = EbsFunctions.getDefaultKmsKey(GetDefaultKmsKeyArgs.builder()
///             .build());
///
///         var example = new Volume("example", VolumeArgs.builder()
///             .availabilityZone("us-west-2a")
///             .encrypted(true)
///             .kmsKeyId(current.keyArn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ebs:Volume
///     properties:
///       availabilityZone: us-west-2a
///       encrypted: true
///       kmsKeyId: ${current.keyArn}
/// variables:
///   current:
///     fn::invoke:
///       function: aws:ebs:getDefaultKmsKey
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ebs_get_default_kms_key_get_default_kms_key_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDefaultKmsKeyResult> getDefaultKmsKey(
  GetDefaultKmsKeyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ebs/getDefaultKmsKey:getDefaultKmsKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDefaultKmsKeyResult.fromMap(result);
}

/// `aws.ebs.getEbsVolumes` provides identifying information for EBS volumes matching given criteria.
///
/// This data source can be useful for getting a list of volume IDs with (for example) matching tags.
///
/// ## Example Usage
///
/// The following demonstrates obtaining a map of availability zone to EBS volume ID for volumes with a given tag value.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ebs.getEbsVolumes({
///     tags: {
///         VolumeSet: "TestVolumeSet",
///     },
/// });
/// const exampleGetVolume = example.then(example => .reduce((__obj, [__key, __value]) => ({ ...__obj, [String(__key)]: aws.ebs.getVolume({
///     filters: [{
///         name: "volume-id",
///         values: [__value],
///     }],
/// }) }), {}));
/// export const availabilityZoneToVolumeId = exampleGetVolume.apply(exampleGetVolume => Object.values(exampleGetVolume).reduce((__obj, s) => ({ ...__obj, [String(s.id)]: s.availabilityZone }), {}));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ebs.get_ebs_volumes(tags={
///     "VolumeSet": "TestVolumeSet",
/// })
/// example_get_volume = {str(__key): aws.ebs.get_volume(filters=[{
///     "name": "volume-id",
///     "values": [__value],
/// }]) for __key, __value in enumerate(example.ids)}
/// pulumi.export("availabilityZoneToVolumeId", {s.id: s.availability_zone for s in example_get_volume.values()})
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ebs.GetEbsVolumes.Invoke(new()
///     {
///         Tags =
///         {
///             { "VolumeSet", "TestVolumeSet" },
///         },
///     });
///
///     var exampleGetVolume = ;
///
///     return new Dictionary<string, object?>
///     {
///         ["availabilityZoneToVolumeId"] = exampleGetVolume.Apply(exampleGetVolume => (exampleGetVolume).Values.ToDictionary(item => {
///             var s = item.Value;
///             return s.Id;
///         }, item => {
///             var s = item.Value;
///             return s.AvailabilityZone;
///         })),
///     };
/// });
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
/// data "aws_ebs_getebsvolumes" "example" {
///   tags = {
///     "VolumeSet" = "TestVolumeSet"
///   }
/// }
/// data "aws_ebs_getvolume" "invoke_1" {
///   for_each = data.aws_ebs_getebsvolumes.example.ids
///   filters {
///     name   = "volume-id"
///     values = [each.value]
///   }
/// }
///
/// locals {
///   exampleGetVolume = {for __key, __value in data.aws_ebs_getebsvolumes.example.ids : __key => data.aws_ebs_getvolume.invoke_1[__key]}
/// }
/// output "availabilityZoneToVolumeId" {
///   value = {for s in local.exampleGetVolume : s.id => s.availabilityZone}
/// }
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ebs_get_ebs_volumes_get_ebs_volumes_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEbsVolumesResult> getEbsVolumes(
  GetEbsVolumesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ebs/getEbsVolumes:getEbsVolumes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEbsVolumesResult.fromMap(result);
}

/// Provides a way to check whether default EBS encryption is enabled for your AWS account in the current AWS region.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.ebs.getEncryptionByDefault({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.ebs.get_encryption_by_default()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.Ebs.GetEncryptionByDefault.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ebs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ebs.LookupEncryptionByDefault(ctx, &ebs.LookupEncryptionByDefaultArgs{}, nil)
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
/// data "aws_ebs_getencryptionbydefault" "current" {
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ebs.EbsFunctions;
/// import com.pulumi.aws.ebs.inputs.GetEncryptionByDefaultArgs;
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
///         final var current = EbsFunctions.getEncryptionByDefault(GetEncryptionByDefaultArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   current:
///     fn::invoke:
///       function: aws:ebs:getEncryptionByDefault
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ebs_get_encryption_by_default_get_encryption_by_default_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEncryptionByDefaultResult> getEncryptionByDefault(
  GetEncryptionByDefaultArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ebs/getEncryptionByDefault:getEncryptionByDefault',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEncryptionByDefaultResult.fromMap(result);
}

/// Use this data source to get information about an EBS Snapshot for use when provisioning EBS Volumes
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const ebsVolume = aws.ebs.getSnapshot({
///     mostRecent: true,
///     owners: ["self"],
///     filters: [
///         {
///             name: "volume-size",
///             values: ["40"],
///         },
///         {
///             name: "tag:Name",
///             values: ["Example"],
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// ebs_volume = aws.ebs.get_snapshot(most_recent=True,
///     owners=["self"],
///     filters=[
///         {
///             "name": "volume-size",
///             "values": ["40"],
///         },
///         {
///             "name": "tag:Name",
///             "values": ["Example"],
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ebsVolume = Aws.Ebs.GetSnapshot.Invoke(new()
///     {
///         MostRecent = true,
///         Owners = new[]
///         {
///             "self",
///         },
///         Filters = new[]
///         {
///             new Aws.Ebs.Inputs.GetSnapshotFilterInputArgs
///             {
///                 Name = "volume-size",
///                 Values = new[]
///                 {
///                     "40",
///                 },
///             },
///             new Aws.Ebs.Inputs.GetSnapshotFilterInputArgs
///             {
///                 Name = "tag:Name",
///                 Values = new[]
///                 {
///                     "Example",
///                 },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ebs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ebs.LookupSnapshot(ctx, &ebs.LookupSnapshotArgs{
/// 			MostRecent: pulumi.BoolRef(true),
/// 			Owners: []string{
/// 				"self",
/// 			},
/// 			Filters: []ebs.GetSnapshotFilter{
/// 				{
/// 					Name: "volume-size",
/// 					Values: []string{
/// 						"40",
/// 					},
/// 				},
/// 				{
/// 					Name: "tag:Name",
/// 					Values: []string{
/// 						"Example",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
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
/// data "aws_ebs_getsnapshot" "ebsVolume" {
///   most_recent = true
///   owners      = ["self"]
///   filters {
///     name   = "volume-size"
///     values = ["40"]
///   }
///   filters {
///     name   = "tag:Name"
///     values = ["Example"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ebs.EbsFunctions;
/// import com.pulumi.aws.ebs.inputs.GetSnapshotArgs;
/// import com.pulumi.aws.ebs.inputs.GetSnapshotFilterArgs;
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
///         final var ebsVolume = EbsFunctions.getSnapshot(GetSnapshotArgs.builder()
///             .mostRecent(true)
///             .owners("self")
///             .filters(
///                 GetSnapshotFilterArgs.builder()
///                     .name("volume-size")
///                     .values("40")
///                     .build(),
///                 GetSnapshotFilterArgs.builder()
///                     .name("tag:Name")
///                     .values("Example")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ebsVolume:
///     fn::invoke:
///       function: aws:ebs:getSnapshot
///       arguments:
///         mostRecent: true
///         owners:
///           - self
///         filters:
///           - name: volume-size
///             values:
///               - '40'
///           - name: tag:Name
///             values:
///               - Example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ebs_get_snapshot_get_snapshot_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSnapshotResult> getSnapshot(
  GetSnapshotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ebs/getSnapshot:getSnapshot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSnapshotResult.fromMap(result);
}

/// Use this data source to get a list of EBS Snapshot IDs matching the specified
/// criteria.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const ebsVolumes = aws.ebs.getSnapshotIds({
///     owners: ["self"],
///     filters: [
///         {
///             name: "volume-size",
///             values: ["40"],
///         },
///         {
///             name: "tag:Name",
///             values: ["Example"],
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// ebs_volumes = aws.ebs.get_snapshot_ids(owners=["self"],
///     filters=[
///         {
///             "name": "volume-size",
///             "values": ["40"],
///         },
///         {
///             "name": "tag:Name",
///             "values": ["Example"],
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ebsVolumes = Aws.Ebs.GetSnapshotIds.Invoke(new()
///     {
///         Owners = new[]
///         {
///             "self",
///         },
///         Filters = new[]
///         {
///             new Aws.Ebs.Inputs.GetSnapshotIdsFilterInputArgs
///             {
///                 Name = "volume-size",
///                 Values = new[]
///                 {
///                     "40",
///                 },
///             },
///             new Aws.Ebs.Inputs.GetSnapshotIdsFilterInputArgs
///             {
///                 Name = "tag:Name",
///                 Values = new[]
///                 {
///                     "Example",
///                 },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ebs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ebs.GetSnapshotIds(ctx, &ebs.GetSnapshotIdsArgs{
/// 			Owners: []string{
/// 				"self",
/// 			},
/// 			Filters: []ebs.GetSnapshotIdsFilter{
/// 				{
/// 					Name: "volume-size",
/// 					Values: []string{
/// 						"40",
/// 					},
/// 				},
/// 				{
/// 					Name: "tag:Name",
/// 					Values: []string{
/// 						"Example",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
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
/// data "aws_ebs_getsnapshotids" "ebsVolumes" {
///   owners = ["self"]
///   filters {
///     name   = "volume-size"
///     values = ["40"]
///   }
///   filters {
///     name   = "tag:Name"
///     values = ["Example"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ebs.EbsFunctions;
/// import com.pulumi.aws.ebs.inputs.GetSnapshotIdsArgs;
/// import com.pulumi.aws.ebs.inputs.GetSnapshotIdsFilterArgs;
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
///         final var ebsVolumes = EbsFunctions.getSnapshotIds(GetSnapshotIdsArgs.builder()
///             .owners("self")
///             .filters(
///                 GetSnapshotIdsFilterArgs.builder()
///                     .name("volume-size")
///                     .values("40")
///                     .build(),
///                 GetSnapshotIdsFilterArgs.builder()
///                     .name("tag:Name")
///                     .values("Example")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ebsVolumes:
///     fn::invoke:
///       function: aws:ebs:getSnapshotIds
///       arguments:
///         owners:
///           - self
///         filters:
///           - name: volume-size
///             values:
///               - '40'
///           - name: tag:Name
///             values:
///               - Example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ebs_get_snapshot_ids_get_snapshot_ids_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSnapshotIdsResult> getSnapshotIds(
  GetSnapshotIdsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ebs/getSnapshotIds:getSnapshotIds',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSnapshotIdsResult.fromMap(result);
}

/// Use this data source to get information about an EBS volume for use in other
/// resources.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const ebsVolume = aws.ebs.getVolume({
///     mostRecent: true,
///     filters: [
///         {
///             name: "volume-type",
///             values: ["gp2"],
///         },
///         {
///             name: "tag:Name",
///             values: ["Example"],
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// ebs_volume = aws.ebs.get_volume(most_recent=True,
///     filters=[
///         {
///             "name": "volume-type",
///             "values": ["gp2"],
///         },
///         {
///             "name": "tag:Name",
///             "values": ["Example"],
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ebsVolume = Aws.Ebs.GetVolume.Invoke(new()
///     {
///         MostRecent = true,
///         Filters = new[]
///         {
///             new Aws.Ebs.Inputs.GetVolumeFilterInputArgs
///             {
///                 Name = "volume-type",
///                 Values = new[]
///                 {
///                     "gp2",
///                 },
///             },
///             new Aws.Ebs.Inputs.GetVolumeFilterInputArgs
///             {
///                 Name = "tag:Name",
///                 Values = new[]
///                 {
///                     "Example",
///                 },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ebs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ebs.LookupVolume(ctx, &ebs.LookupVolumeArgs{
/// 			MostRecent: pulumi.BoolRef(true),
/// 			Filters: []ebs.GetVolumeFilter{
/// 				{
/// 					Name: "volume-type",
/// 					Values: []string{
/// 						"gp2",
/// 					},
/// 				},
/// 				{
/// 					Name: "tag:Name",
/// 					Values: []string{
/// 						"Example",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
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
/// data "aws_ebs_getvolume" "ebsVolume" {
///   most_recent = true
///   filters {
///     name   = "volume-type"
///     values = ["gp2"]
///   }
///   filters {
///     name   = "tag:Name"
///     values = ["Example"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ebs.EbsFunctions;
/// import com.pulumi.aws.ebs.inputs.GetVolumeArgs;
/// import com.pulumi.aws.ebs.inputs.GetVolumeFilterArgs;
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
///         final var ebsVolume = EbsFunctions.getVolume(GetVolumeArgs.builder()
///             .mostRecent(true)
///             .filters(
///                 GetVolumeFilterArgs.builder()
///                     .name("volume-type")
///                     .values("gp2")
///                     .build(),
///                 GetVolumeFilterArgs.builder()
///                     .name("tag:Name")
///                     .values("Example")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ebsVolume:
///     fn::invoke:
///       function: aws:ebs:getVolume
///       arguments:
///         mostRecent: true
///         filters:
///           - name: volume-type
///             values:
///               - gp2
///           - name: tag:Name
///             values:
///               - Example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ebs_get_volume_get_volume_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVolumeResult> getVolume(
  GetVolumeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ebs/getVolume:getVolume',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVolumeResult.fromMap(result);
}
