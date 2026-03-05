import 'package:pulumi/pulumi.dart' as pulumi;
import 'build_args.dart';
import 'build_state.dart';
import 'build_storage_location.dart';

/// Provides an GameLift Build resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.gamelift.Build("test", {
///     name: "example-build",
///     operatingSystem: "WINDOWS_2012",
///     storageLocation: {
///         bucket: testAwsS3Bucket.id,
///         key: testAwsS3Object.key,
///         roleArn: testAwsIamRole.arn,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.gamelift.Build("test",
///     name="example-build",
///     operating_system="WINDOWS_2012",
///     storage_location={
///         "bucket": test_aws_s3_bucket["id"],
///         "key": test_aws_s3_object["key"],
///         "role_arn": test_aws_iam_role["arn"],
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
///     var test = new Aws.GameLift.Build("test", new()
///     {
///         Name = "example-build",
///         OperatingSystem = "WINDOWS_2012",
///         StorageLocation = new Aws.GameLift.Inputs.BuildStorageLocationArgs
///         {
///             Bucket = testAwsS3Bucket.Id,
///             Key = testAwsS3Object.Key,
///             RoleArn = testAwsIamRole.Arn,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/gamelift"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := gamelift.NewBuild(ctx, "test", &gamelift.BuildArgs{
/// 			Name:            pulumi.String("example-build"),
/// 			OperatingSystem: pulumi.String("WINDOWS_2012"),
/// 			StorageLocation: &gamelift.BuildStorageLocationArgs{
/// 				Bucket:  pulumi.Any(testAwsS3Bucket.Id),
/// 				Key:     pulumi.Any(testAwsS3Object.Key),
/// 				RoleArn: pulumi.Any(testAwsIamRole.Arn),
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
/// import com.pulumi.aws.gamelift.Build;
/// import com.pulumi.aws.gamelift.BuildArgs;
/// import com.pulumi.aws.gamelift.inputs.BuildStorageLocationArgs;
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
///         var test = new Build("test", BuildArgs.builder()
///             .name("example-build")
///             .operatingSystem("WINDOWS_2012")
///             .storageLocation(BuildStorageLocationArgs.builder()
///                 .bucket(testAwsS3Bucket.id())
///                 .key(testAwsS3Object.key())
///                 .roleArn(testAwsIamRole.arn())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:gamelift:Build
///     properties:
///       name: example-build
///       operatingSystem: WINDOWS_2012
///       storageLocation:
///         bucket: ${testAwsS3Bucket.id}
///         key: ${testAwsS3Object.key}
///         roleArn: ${testAwsIamRole.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import GameLift Builds using the ID. For example:
///
/// ```sh
/// $ pulumi import aws:gamelift/build:Build example <build-id>
/// ```
class Build extends pulumi.CustomResource {
  /// GameLift Build ARN.
  late final pulumi.Output<String> arn;
  /// Name of the build
  late final pulumi.Output<String> name;
  /// Operating system that the game server binaries are built to run on. Valid values: `WINDOWS_2012`, `AMAZON_LINUX`, `AMAZON_LINUX_2`, `WINDOWS_2016`, `AMAZON_LINUX_2023`.
  late final pulumi.Output<String> operatingSystem;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Information indicating where your game build files are stored. See below.
  late final pulumi.Output<BuildStorageLocation> storageLocation;
  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Version that is associated with this build.
  late final pulumi.Output<String?> version;

  /// Creates a new [Build].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Build]. {@macro pulumi_gamelift_build_build_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Build(
    String name, {
    BuildArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:gamelift/build:Build',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    operatingSystem = registerOutput<String>('operatingSystem');
    region = registerOutput<String>('region');
    storageLocation = registerOutput<BuildStorageLocation>('storageLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BuildStorageLocation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    version = registerOutput<String?>('version');
  }

  /// Gets an existing [Build] resource's state with the given [name] and [id].
  static Build get(
    String name,
    pulumi.Input<String> id, {
    BuildState? state,
  }) {
    return Build._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Build._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:gamelift/build:Build',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    operatingSystem = registerOutput<String>('operatingSystem');
    region = registerOutput<String>('region');
    storageLocation = registerOutput<BuildStorageLocation>('storageLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BuildStorageLocation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    version = registerOutput<String?>('version');
  }
}
