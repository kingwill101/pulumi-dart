import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_args.dart';
import 'access_posix_profile.dart';
import 'access_state.dart';

/// Provides a AWS Transfer Access resource.
///
/// &gt; **NOTE:** We suggest using explicit JSON encoding or `aws.iam.getPolicyDocument` when assigning a value to `policy`. They seamlessly translate configuration to JSON, enabling you to maintain consistency within your configuration without the need for context switches. Also, you can sidestep potential complications arising from formatting discrepancies, whitespace inconsistencies, and other nuances inherent to JSON.
///
/// ## Example Usage
///
/// ### Basic S3
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.transfer.Access("example", {
///     externalId: "S-1-1-12-1234567890-123456789-1234567890-1234",
///     serverId: exampleAwsTransferServer.id,
///     role: exampleAwsIamRole.arn,
///     homeDirectory: `/${exampleAwsS3Bucket.id}/`,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.transfer.Access("example",
///     external_id="S-1-1-12-1234567890-123456789-1234567890-1234",
///     server_id=example_aws_transfer_server["id"],
///     role=example_aws_iam_role["arn"],
///     home_directory=f"/{example_aws_s3_bucket['id']}/")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Transfer.Access("example", new()
///     {
///         ExternalId = "S-1-1-12-1234567890-123456789-1234567890-1234",
///         ServerId = exampleAwsTransferServer.Id,
///         Role = exampleAwsIamRole.Arn,
///         HomeDirectory = $"/{exampleAwsS3Bucket.Id}/",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/transfer"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := transfer.NewAccess(ctx, "example", &transfer.AccessArgs{
/// 			ExternalId:    pulumi.String("S-1-1-12-1234567890-123456789-1234567890-1234"),
/// 			ServerId:      pulumi.Any(exampleAwsTransferServer.Id),
/// 			Role:          pulumi.Any(exampleAwsIamRole.Arn),
/// 			HomeDirectory: pulumi.Sprintf("/%v/", exampleAwsS3Bucket.Id),
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
/// resource "aws_transfer_access" "example" {
///   external_id    = "S-1-1-12-1234567890-123456789-1234567890-1234"
///   server_id      = exampleAwsTransferServer.id
///   role           = exampleAwsIamRole.arn
///   home_directory ="/${exampleAwsS3Bucket.id}/"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.transfer.Access;
/// import com.pulumi.aws.transfer.AccessArgs;
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
///         var example = new Access("example", AccessArgs.builder()
///             .externalId("S-1-1-12-1234567890-123456789-1234567890-1234")
///             .serverId(exampleAwsTransferServer.id())
///             .role(exampleAwsIamRole.arn())
///             .homeDirectory(String.format("/%s/", exampleAwsS3Bucket.id()))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:transfer:Access
///     properties:
///       externalId: S-1-1-12-1234567890-123456789-1234567890-1234
///       serverId: ${exampleAwsTransferServer.id}
///       role: ${exampleAwsIamRole.arn}
///       homeDirectory: /${exampleAwsS3Bucket.id}/
/// ```
///
///
/// ### Basic EFS
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.transfer.Access("test", {
///     externalId: "S-1-1-12-1234567890-123456789-1234567890-1234",
///     serverId: testAwsTransferServer.id,
///     role: testAwsIamRole.arn,
///     homeDirectory: `/${testAwsEfsFileSystem.id}/`,
///     posixProfile: {
///         gid: 1000,
///         uid: 1000,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.transfer.Access("test",
///     external_id="S-1-1-12-1234567890-123456789-1234567890-1234",
///     server_id=test_aws_transfer_server["id"],
///     role=test_aws_iam_role["arn"],
///     home_directory=f"/{test_aws_efs_file_system['id']}/",
///     posix_profile={
///         "gid": 1000,
///         "uid": 1000,
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
///     var test = new Aws.Transfer.Access("test", new()
///     {
///         ExternalId = "S-1-1-12-1234567890-123456789-1234567890-1234",
///         ServerId = testAwsTransferServer.Id,
///         Role = testAwsIamRole.Arn,
///         HomeDirectory = $"/{testAwsEfsFileSystem.Id}/",
///         PosixProfile = new Aws.Transfer.Inputs.AccessPosixProfileArgs
///         {
///             Gid = 1000,
///             Uid = 1000,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/transfer"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := transfer.NewAccess(ctx, "test", &transfer.AccessArgs{
/// 			ExternalId:    pulumi.String("S-1-1-12-1234567890-123456789-1234567890-1234"),
/// 			ServerId:      pulumi.Any(testAwsTransferServer.Id),
/// 			Role:          pulumi.Any(testAwsIamRole.Arn),
/// 			HomeDirectory: pulumi.Sprintf("/%v/", testAwsEfsFileSystem.Id),
/// 			PosixProfile: &transfer.AccessPosixProfileArgs{
/// 				Gid: pulumi.Int(1000),
/// 				Uid: pulumi.Int(1000),
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
/// resource "aws_transfer_access" "test" {
///   external_id    = "S-1-1-12-1234567890-123456789-1234567890-1234"
///   server_id      = testAwsTransferServer.id
///   role           = testAwsIamRole.arn
///   home_directory ="/${testAwsEfsFileSystem.id}/"
///   posix_profile = {
///     gid = 1000
///     uid = 1000
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.transfer.Access;
/// import com.pulumi.aws.transfer.AccessArgs;
/// import com.pulumi.aws.transfer.inputs.AccessPosixProfileArgs;
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
///         var test = new Access("test", AccessArgs.builder()
///             .externalId("S-1-1-12-1234567890-123456789-1234567890-1234")
///             .serverId(testAwsTransferServer.id())
///             .role(testAwsIamRole.arn())
///             .homeDirectory(String.format("/%s/", testAwsEfsFileSystem.id()))
///             .posixProfile(AccessPosixProfileArgs.builder()
///                 .gid(1000)
///                 .uid(1000)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:transfer:Access
///     properties:
///       externalId: S-1-1-12-1234567890-123456789-1234567890-1234
///       serverId: ${testAwsTransferServer.id}
///       role: ${testAwsIamRole.arn}
///       homeDirectory: /${testAwsEfsFileSystem.id}/
///       posixProfile:
///         gid: 1000
///         uid: 1000
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Transfer Accesses using the `serverId` and `externalId`. For example:
///
/// ```sh
/// $ pulumi import aws:transfer/access:Access example s-12345678/S-1-1-12-1234567890-123456789-1234567890-1234
/// ```
class Access extends pulumi.CustomResource {
  /// SID of a group in the directory connected to the Transfer Server (e.g., `S-1-1-12-1234567890-123456789-1234567890-1234`)
  late final pulumi.Output<String> externalId;
  /// Landing directory (folder) for a user when they log in to the server using their SFTP client.  It should begin with a `/`.  The first item in the path is the name of the home bucket (accessible as `${Transfer:HomeBucket}` in the policy) and the rest is the home directory (accessible as `${Transfer:HomeDirectory}` in the policy). For example, `/example-bucket-1234/username` would set the home bucket to `example-bucket-1234` and the home directory to `username`.
  late final pulumi.Output<String?> homeDirectory;
  /// Logical directory mappings that specify what S3 paths and keys should be visible to your user and how you want to make them visible. See `homeDirectoryMappings` Block below.
  late final pulumi.Output<List<Map<String, dynamic>>?> homeDirectoryMappings;
  /// Type of landing directory (folder) you mapped for your users' home directory. Valid values are `PATH` and `LOGICAL`.
  late final pulumi.Output<String?> homeDirectoryType;
  /// IAM JSON policy document that scopes down user access to portions of their Amazon S3 bucket. IAM variables you can use inside this policy include `${Transfer:UserName}`, `${Transfer:HomeDirectory}`, and `${Transfer:HomeBucket}`. These are evaluated on-the-fly when navigating the bucket.
  late final pulumi.Output<String?> policy;
  /// Full POSIX identity, including user ID (Uid), group ID (Gid), and any secondary groups IDs (SecondaryGids), that controls your users' access to your Amazon EFS file systems. See `posixProfile` Block below.
  late final pulumi.Output<AccessPosixProfile?> posixProfile;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Amazon Resource Name (ARN) of an IAM role that allows the service to controls your user’s access to your Amazon S3 bucket.
  late final pulumi.Output<String?> role;
  /// Server ID of the Transfer Server (e.g., `s-12345678`)
  late final pulumi.Output<String> serverId;

  /// Creates a new [Access].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Access]. {@macro pulumi_transfer_access_access_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Access(
    String name, {
    AccessArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:transfer/access:Access',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    externalId = registerOutput<String>('externalId');
    homeDirectory = registerOutput<String?>('homeDirectory');
    homeDirectoryMappings = registerOutput<List<Map<String, dynamic>>?>('homeDirectoryMappings');
    homeDirectoryType = registerOutput<String?>('homeDirectoryType');
    policy = registerOutput<String?>('policy');
    posixProfile = registerOutput<AccessPosixProfile?>('posixProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessPosixProfile.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    role = registerOutput<String?>('role');
    serverId = registerOutput<String>('serverId');
  }

  /// Gets an existing [Access] resource's state with the given [name] and [id].
  static Access get(
    String name,
    pulumi.Input<String> id, {
    AccessState? state,
  }) {
    return Access._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Access._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:transfer/access:Access',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    externalId = registerOutput<String>('externalId');
    homeDirectory = registerOutput<String?>('homeDirectory');
    homeDirectoryMappings = registerOutput<List<Map<String, dynamic>>?>('homeDirectoryMappings');
    homeDirectoryType = registerOutput<String?>('homeDirectoryType');
    policy = registerOutput<String?>('policy');
    posixProfile = registerOutput<AccessPosixProfile?>('posixProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessPosixProfile.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    role = registerOutput<String?>('role');
    serverId = registerOutput<String>('serverId');
  }
}
