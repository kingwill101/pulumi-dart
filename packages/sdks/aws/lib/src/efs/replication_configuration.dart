import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication_configuration_args.dart';
import 'replication_configuration_destination.dart';
import 'replication_configuration_state.dart';

/// Creates a replica of an existing EFS file system in the same or another region. Creating this resource causes the source EFS file system to be replicated to a new read-only destination EFS file system (unless using the `destination.file_system_id` attribute). Deleting this resource will cause the replication from source to destination to stop and the destination file system will no longer be read only.
///
/// &gt; **NOTE:** Deleting this resource does **not** delete the destination file system that was created.
///
/// ## Example Usage
///
/// Will create a replica using regional storage in us-west-2 that will be encrypted by the default EFS KMS key `/aws/elasticfilesystem`.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.efs.FileSystem("example", {});
/// const exampleReplicationConfiguration = new aws.efs.ReplicationConfiguration("example", {
///     sourceFileSystemId: example.id,
///     destination: {
///         region: "us-west-2",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.efs.FileSystem("example")
/// example_replication_configuration = aws.efs.ReplicationConfiguration("example",
///     source_file_system_id=example.id,
///     destination={
///         "region": "us-west-2",
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
///     var example = new Aws.Efs.FileSystem("example");
///
///     var exampleReplicationConfiguration = new Aws.Efs.ReplicationConfiguration("example", new()
///     {
///         SourceFileSystemId = example.Id,
///         Destination = new Aws.Efs.Inputs.ReplicationConfigurationDestinationArgs
///         {
///             Region = "us-west-2",
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
/// 		example, err := efs.NewFileSystem(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = efs.NewReplicationConfiguration(ctx, "example", &efs.ReplicationConfigurationArgs{
/// 			SourceFileSystemId: example.ID(),
/// 			Destination: &efs.ReplicationConfigurationDestinationArgs{
/// 				Region: pulumi.String("us-west-2"),
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
/// import com.pulumi.aws.efs.ReplicationConfiguration;
/// import com.pulumi.aws.efs.ReplicationConfigurationArgs;
/// import com.pulumi.aws.efs.inputs.ReplicationConfigurationDestinationArgs;
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
///         var example = new FileSystem("example");
///
///         var exampleReplicationConfiguration = new ReplicationConfiguration("exampleReplicationConfiguration", ReplicationConfigurationArgs.builder()
///             .sourceFileSystemId(example.id())
///             .destination(ReplicationConfigurationDestinationArgs.builder()
///                 .region("us-west-2")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:efs:FileSystem
///   exampleReplicationConfiguration:
///     type: aws:efs:ReplicationConfiguration
///     name: example
///     properties:
///       sourceFileSystemId: ${example.id}
///       destination:
///         region: us-west-2
/// ```
///
///
/// Replica will be created as One Zone storage in the us-west-2b Availability Zone and encrypted with the specified KMS key.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.efs.FileSystem("example", {});
/// const exampleReplicationConfiguration = new aws.efs.ReplicationConfiguration("example", {
///     sourceFileSystemId: example.id,
///     destination: {
///         availabilityZoneName: "us-west-2b",
///         kmsKeyId: "1234abcd-12ab-34cd-56ef-1234567890ab",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.efs.FileSystem("example")
/// example_replication_configuration = aws.efs.ReplicationConfiguration("example",
///     source_file_system_id=example.id,
///     destination={
///         "availability_zone_name": "us-west-2b",
///         "kms_key_id": "1234abcd-12ab-34cd-56ef-1234567890ab",
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
///     var example = new Aws.Efs.FileSystem("example");
///
///     var exampleReplicationConfiguration = new Aws.Efs.ReplicationConfiguration("example", new()
///     {
///         SourceFileSystemId = example.Id,
///         Destination = new Aws.Efs.Inputs.ReplicationConfigurationDestinationArgs
///         {
///             AvailabilityZoneName = "us-west-2b",
///             KmsKeyId = "1234abcd-12ab-34cd-56ef-1234567890ab",
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
/// 		example, err := efs.NewFileSystem(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = efs.NewReplicationConfiguration(ctx, "example", &efs.ReplicationConfigurationArgs{
/// 			SourceFileSystemId: example.ID(),
/// 			Destination: &efs.ReplicationConfigurationDestinationArgs{
/// 				AvailabilityZoneName: pulumi.String("us-west-2b"),
/// 				KmsKeyId:             pulumi.String("1234abcd-12ab-34cd-56ef-1234567890ab"),
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
/// import com.pulumi.aws.efs.ReplicationConfiguration;
/// import com.pulumi.aws.efs.ReplicationConfigurationArgs;
/// import com.pulumi.aws.efs.inputs.ReplicationConfigurationDestinationArgs;
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
///         var example = new FileSystem("example");
///
///         var exampleReplicationConfiguration = new ReplicationConfiguration("exampleReplicationConfiguration", ReplicationConfigurationArgs.builder()
///             .sourceFileSystemId(example.id())
///             .destination(ReplicationConfigurationDestinationArgs.builder()
///                 .availabilityZoneName("us-west-2b")
///                 .kmsKeyId("1234abcd-12ab-34cd-56ef-1234567890ab")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:efs:FileSystem
///   exampleReplicationConfiguration:
///     type: aws:efs:ReplicationConfiguration
///     name: example
///     properties:
///       sourceFileSystemId: ${example.id}
///       destination:
///         availabilityZoneName: us-west-2b
///         kmsKeyId: 1234abcd-12ab-34cd-56ef-1234567890ab
/// ```
///
///
/// Will create a replica and set the existing file system with id `fs-1234567890` in us-west-2 as destination.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.efs.FileSystem("example", {});
/// const exampleReplicationConfiguration = new aws.efs.ReplicationConfiguration("example", {
///     sourceFileSystemId: example.id,
///     destination: {
///         fileSystemId: "fs-1234567890",
///         region: "us-west-2",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.efs.FileSystem("example")
/// example_replication_configuration = aws.efs.ReplicationConfiguration("example",
///     source_file_system_id=example.id,
///     destination={
///         "file_system_id": "fs-1234567890",
///         "region": "us-west-2",
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
///     var example = new Aws.Efs.FileSystem("example");
///
///     var exampleReplicationConfiguration = new Aws.Efs.ReplicationConfiguration("example", new()
///     {
///         SourceFileSystemId = example.Id,
///         Destination = new Aws.Efs.Inputs.ReplicationConfigurationDestinationArgs
///         {
///             FileSystemId = "fs-1234567890",
///             Region = "us-west-2",
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
/// 		example, err := efs.NewFileSystem(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = efs.NewReplicationConfiguration(ctx, "example", &efs.ReplicationConfigurationArgs{
/// 			SourceFileSystemId: example.ID(),
/// 			Destination: &efs.ReplicationConfigurationDestinationArgs{
/// 				FileSystemId: pulumi.String("fs-1234567890"),
/// 				Region:       pulumi.String("us-west-2"),
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
/// import com.pulumi.aws.efs.ReplicationConfiguration;
/// import com.pulumi.aws.efs.ReplicationConfigurationArgs;
/// import com.pulumi.aws.efs.inputs.ReplicationConfigurationDestinationArgs;
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
///         var example = new FileSystem("example");
///
///         var exampleReplicationConfiguration = new ReplicationConfiguration("exampleReplicationConfiguration", ReplicationConfigurationArgs.builder()
///             .sourceFileSystemId(example.id())
///             .destination(ReplicationConfigurationDestinationArgs.builder()
///                 .fileSystemId("fs-1234567890")
///                 .region("us-west-2")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:efs:FileSystem
///   exampleReplicationConfiguration:
///     type: aws:efs:ReplicationConfiguration
///     name: example
///     properties:
///       sourceFileSystemId: ${example.id}
///       destination:
///         fileSystemId: fs-1234567890
///         region: us-west-2
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import EFS Replication Configurations using the file system ID of either the source or destination file system. When importing, the `availability_zone_name` and `kms_key_id` attributes must **not** be set in the configuration. The AWS API does not return these values when querying the replication configuration and their presence will therefore show as a diff in a subsequent plan. For example:
///
/// ```sh
/// $ pulumi import aws:efs/replicationConfiguration:ReplicationConfiguration example fs-id
/// ```
class ReplicationConfiguration extends pulumi.CustomResource {
  /// When the replication configuration was created.
  /// * `destination[0].file_system_id` - The fs ID of the replica.
  /// * `destination[0].status` - The status of the replication.
  late final pulumi.Output<String> creationTime;

  /// A destination configuration block (documented below).
  late final pulumi.Output<ReplicationConfigurationDestination> destination;

  /// The Amazon Resource Name (ARN) of the original source Amazon EFS file system in the replication configuration.
  late final pulumi.Output<String> originalSourceFileSystemArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The Amazon Resource Name (ARN) of the current source file system in the replication configuration.
  late final pulumi.Output<String> sourceFileSystemArn;

  /// The ID of the file system that is to be replicated.
  late final pulumi.Output<String> sourceFileSystemId;

  /// The AWS Region in which the source Amazon EFS file system is located.
  late final pulumi.Output<String> sourceFileSystemRegion;

  /// Creates a new [ReplicationConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReplicationConfiguration]. {@macro pulumi_efs_replication_configuration_replication_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReplicationConfiguration(
    String name, {
    ReplicationConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:efs/replicationConfiguration:ReplicationConfiguration',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    creationTime = registerOutput<String>('creationTime');
    destination = registerOutput<ReplicationConfigurationDestination>(
      'destination',
    );
    originalSourceFileSystemArn = registerOutput<String>(
      'originalSourceFileSystemArn',
    );
    region = registerOutput<String>('region');
    sourceFileSystemArn = registerOutput<String>('sourceFileSystemArn');
    sourceFileSystemId = registerOutput<String>('sourceFileSystemId');
    sourceFileSystemRegion = registerOutput<String>('sourceFileSystemRegion');
  }

  /// Gets an existing [ReplicationConfiguration] resource's state with the given [name] and [id].
  static ReplicationConfiguration get(
    String name,
    pulumi.Input<String> id, {
    ReplicationConfigurationState? state,
  }) {
    return ReplicationConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ReplicationConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:efs/replicationConfiguration:ReplicationConfiguration',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    creationTime = registerOutput<String>('creationTime');
    destination = registerOutput<ReplicationConfigurationDestination>(
      'destination',
    );
    originalSourceFileSystemArn = registerOutput<String>(
      'originalSourceFileSystemArn',
    );
    region = registerOutput<String>('region');
    sourceFileSystemArn = registerOutput<String>('sourceFileSystemArn');
    sourceFileSystemId = registerOutput<String>('sourceFileSystemId');
    sourceFileSystemRegion = registerOutput<String>('sourceFileSystemRegion');
  }
}
