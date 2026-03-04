import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_system_args.dart';
import 'file_system_protection.dart';
import 'file_system_state.dart';

/// Provides an Elastic File System (EFS) File System resource.
///
/// ## Example Usage
///
/// ### EFS File System w/ tags
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const foo = new aws.efs.FileSystem("foo", {
///     creationToken: "my-product",
///     tags: {
///         Name: "MyProduct",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foo = aws.efs.FileSystem("foo",
///     creation_token="my-product",
///     tags={
///         "Name": "MyProduct",
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
///     var foo = new Aws.Efs.FileSystem("foo", new()
///     {
///         CreationToken = "my-product",
///         Tags =
///         {
///             { "Name", "MyProduct" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/efs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := efs.NewFileSystem(ctx, "foo", &efs.FileSystemArgs{
/// 			CreationToken: pulumi.String("my-product"),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("MyProduct"),
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
/// import com.pulumi.aws.efs.FileSystem;
/// import com.pulumi.aws.efs.FileSystemArgs;
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
///         var foo = new FileSystem("foo", FileSystemArgs.builder()
///             .creationToken("my-product")
///             .tags(Map.of("Name", "MyProduct"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: aws:efs:FileSystem
///     properties:
///       creationToken: my-product
///       tags:
///         Name: MyProduct
/// ```
///
///
/// ### Using lifecycle policy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const fooWithLifecylePolicy = new aws.efs.FileSystem("foo_with_lifecyle_policy", {
///     creationToken: "my-product",
///     lifecyclePolicies: [{
///         transitionToIa: "AFTER_30_DAYS",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foo_with_lifecyle_policy = aws.efs.FileSystem("foo_with_lifecyle_policy",
///     creation_token="my-product",
///     lifecycle_policies=[{
///         "transition_to_ia": "AFTER_30_DAYS",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var fooWithLifecylePolicy = new Aws.Efs.FileSystem("foo_with_lifecyle_policy", new()
///     {
///         CreationToken = "my-product",
///         LifecyclePolicies = new[]
///         {
///             new Aws.Efs.Inputs.FileSystemLifecyclePolicyArgs
///             {
///                 TransitionToIa = "AFTER_30_DAYS",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/efs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := efs.NewFileSystem(ctx, "foo_with_lifecyle_policy", &efs.FileSystemArgs{
/// 			CreationToken: pulumi.String("my-product"),
/// 			LifecyclePolicies: efs.FileSystemLifecyclePolicyArray{
/// 				&efs.FileSystemLifecyclePolicyArgs{
/// 					TransitionToIa: pulumi.String("AFTER_30_DAYS"),
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
/// import com.pulumi.aws.efs.FileSystem;
/// import com.pulumi.aws.efs.FileSystemArgs;
/// import com.pulumi.aws.efs.inputs.FileSystemLifecyclePolicyArgs;
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
///         var fooWithLifecylePolicy = new FileSystem("fooWithLifecylePolicy", FileSystemArgs.builder()
///             .creationToken("my-product")
///             .lifecyclePolicies(FileSystemLifecyclePolicyArgs.builder()
///                 .transitionToIa("AFTER_30_DAYS")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   fooWithLifecylePolicy:
///     type: aws:efs:FileSystem
///     name: foo_with_lifecyle_policy
///     properties:
///       creationToken: my-product
///       lifecyclePolicies:
///         - transitionToIa: AFTER_30_DAYS
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import the EFS file systems using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:efs/fileSystem:FileSystem foo fs-6fa144c6
/// ```
class FileSystem extends pulumi.CustomResource {
  /// Amazon Resource Name of the file system.
  late final pulumi.Output<String> arn;

  /// The identifier of the Availability Zone in which the file system's One Zone storage classes exist.
  late final pulumi.Output<String> availabilityZoneId;

  /// the AWS Availability Zone in which to create the file system. Used to create a file system that uses One Zone storage classes. See [user guide](https://docs.aws.amazon.com/efs/latest/ug/availability-durability.html) for more information.
  late final pulumi.Output<String> availabilityZoneName;

  /// A unique name (a maximum of 64 characters are allowed)
  /// used as reference when creating the Elastic File System to ensure idempotent file
  /// system creation. By default generated by this provider. See [Elastic File System]
  /// user guide for more information.
  late final pulumi.Output<String> creationToken;

  /// The DNS name for the filesystem per [documented convention](http://docs.aws.amazon.com/efs/latest/ug/mounting-fs-mount-cmd-dns-name.html).
  late final pulumi.Output<String> dnsName;

  /// If true, the disk will be encrypted.
  late final pulumi.Output<bool> encrypted;

  /// The ARN for the KMS encryption key. When specifying kms_key_id, encrypted needs to be set to true.
  late final pulumi.Output<String> kmsKeyId;

  /// A file system [lifecycle policy](https://docs.aws.amazon.com/efs/latest/ug/API_LifecyclePolicy.html) object. See `lifecycle_policy` block below for details.
  late final pulumi.Output<List<Map<String, dynamic>>?> lifecyclePolicies;

  /// The value of the file system's `Name` tag.
  late final pulumi.Output<String> name;

  /// The current number of mount targets that the file system has.
  late final pulumi.Output<int> numberOfMountTargets;

  /// The AWS account that created the file system. If the file system was createdby an IAM user, the parent account to which the user belongs is the owner.
  late final pulumi.Output<String> ownerId;

  /// The file system performance mode. Can be either `"generalPurpose"` or `"maxIO"` (Default: `"generalPurpose"`).
  late final pulumi.Output<String> performanceMode;

  /// A file system [protection](https://docs.aws.amazon.com/efs/latest/ug/API_FileSystemProtectionDescription.html) object. See `protection` block below for details.
  late final pulumi.Output<FileSystemProtection> protection;

  /// The throughput, measured in MiB/s, that you want to provision for the file system. Only applicable with `throughput_mode` set to `provisioned`.
  late final pulumi.Output<double?> provisionedThroughputInMibps;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The latest known metered size (in bytes) of data stored in the file system, the value is not the exact size that the file system was at any point in time. See Size In Bytes.
  late final pulumi.Output<List<Map<String, dynamic>>> sizeInBytes;

  /// A map of tags to assign to the file system. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Throughput mode for the file system. Defaults to `bursting`. Valid values: `bursting`, `provisioned`, or `elastic`. When using `provisioned`, also set `provisioned_throughput_in_mibps`.
  late final pulumi.Output<String?> throughputMode;

  /// Creates a new [FileSystem].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FileSystem]. {@macro pulumi_efs_file_system_file_system_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FileSystem(
    String name, {
    FileSystemArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:efs/fileSystem:FileSystem',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    availabilityZoneId = registerOutput<String>('availabilityZoneId');
    availabilityZoneName = registerOutput<String>('availabilityZoneName');
    creationToken = registerOutput<String>('creationToken');
    dnsName = registerOutput<String>('dnsName');
    encrypted = registerOutput<bool>('encrypted');
    kmsKeyId = registerOutput<String>('kmsKeyId');
    lifecyclePolicies = registerOutput<List<Map<String, dynamic>>?>(
      'lifecyclePolicies',
    );
    this.name = registerOutput<String>('name');
    numberOfMountTargets = registerOutput<int>('numberOfMountTargets');
    ownerId = registerOutput<String>('ownerId');
    performanceMode = registerOutput<String>('performanceMode');
    protection = registerOutput<FileSystemProtection>('protection');
    provisionedThroughputInMibps = registerOutput<double?>(
      'provisionedThroughputInMibps',
    );
    region = registerOutput<String>('region');
    sizeInBytes = registerOutput<List<Map<String, dynamic>>>('sizeInBytes');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    throughputMode = registerOutput<String?>('throughputMode');
  }

  /// Gets an existing [FileSystem] resource's state with the given [name] and [id].
  static FileSystem get(
    String name,
    pulumi.Input<String> id, {
    FileSystemState? state,
  }) {
    return FileSystem._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FileSystem._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:efs/fileSystem:FileSystem',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    availabilityZoneId = registerOutput<String>('availabilityZoneId');
    availabilityZoneName = registerOutput<String>('availabilityZoneName');
    creationToken = registerOutput<String>('creationToken');
    dnsName = registerOutput<String>('dnsName');
    encrypted = registerOutput<bool>('encrypted');
    kmsKeyId = registerOutput<String>('kmsKeyId');
    lifecyclePolicies = registerOutput<List<Map<String, dynamic>>?>(
      'lifecyclePolicies',
    );
    this.name = registerOutput<String>('name');
    numberOfMountTargets = registerOutput<int>('numberOfMountTargets');
    ownerId = registerOutput<String>('ownerId');
    performanceMode = registerOutput<String>('performanceMode');
    protection = registerOutput<FileSystemProtection>('protection');
    provisionedThroughputInMibps = registerOutput<double?>(
      'provisionedThroughputInMibps',
    );
    region = registerOutput<String>('region');
    sizeInBytes = registerOutput<List<Map<String, dynamic>>>('sizeInBytes');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    throughputMode = registerOutput<String?>('throughputMode');
  }
}
