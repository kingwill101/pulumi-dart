import 'package:pulumi/pulumi.dart' as pulumi;
import 'location_fsx_lustre_args.dart';
import 'location_fsx_lustre_state.dart';

/// Manages an AWS DataSync FSx Lustre Location.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.datasync.LocationFsxLustre("example", {
///     fsxFilesystemArn: exampleAwsFsxLustreFileSystem.arn,
///     securityGroupArns: [exampleAwsSecurityGroup.arn],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.datasync.LocationFsxLustre("example",
///     fsx_filesystem_arn=example_aws_fsx_lustre_file_system["arn"],
///     security_group_arns=[example_aws_security_group["arn"]])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.DataSync.LocationFsxLustre("example", new()
///     {
///         FsxFilesystemArn = exampleAwsFsxLustreFileSystem.Arn,
///         SecurityGroupArns = new[]
///         {
///             exampleAwsSecurityGroup.Arn,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/datasync"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datasync.NewLocationFsxLustre(ctx, "example", &datasync.LocationFsxLustreArgs{
/// 			FsxFilesystemArn: pulumi.Any(exampleAwsFsxLustreFileSystem.Arn),
/// 			SecurityGroupArns: pulumi.StringArray{
/// 				exampleAwsSecurityGroup.Arn,
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
/// import com.pulumi.aws.datasync.LocationFsxLustre;
/// import com.pulumi.aws.datasync.LocationFsxLustreArgs;
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
///         var example = new LocationFsxLustre("example", LocationFsxLustreArgs.builder()
///             .fsxFilesystemArn(exampleAwsFsxLustreFileSystem.arn())
///             .securityGroupArns(exampleAwsSecurityGroup.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:datasync:LocationFsxLustre
///     properties:
///       fsxFilesystemArn: ${exampleAwsFsxLustreFileSystem.arn}
///       securityGroupArns:
///         - ${exampleAwsSecurityGroup.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.datasync.LocationFsxLustre` using the `DataSync-ARN#FSx-Lustre-ARN`. For example:
///
/// ```sh
/// $ pulumi import aws:datasync/locationFsxLustre:LocationFsxLustre example arn:aws:datasync:us-west-2:123456789012:location/loc-12345678901234567#arn:aws:fsx:us-west-2:476956259333:file-system/fs-08e04cd442c1bb94a
/// ```
class LocationFsxLustre extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the DataSync Location.
  late final pulumi.Output<String> arn;
  /// The time that the FSx for Lustre location was created.
  late final pulumi.Output<String> creationTime;
  /// The Amazon Resource Name (ARN) for the FSx for Lustre file system.
  late final pulumi.Output<String> fsxFilesystemArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The Amazon Resource Names (ARNs) of the security groups that are to use to configure the FSx for Lustre file system.
  late final pulumi.Output<List<String>> securityGroupArns;
  /// Subdirectory to perform actions as source or destination.
  late final pulumi.Output<String> subdirectory;
  /// Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The URL of the FSx for Lustre location that was described.
  late final pulumi.Output<String> uri;

  /// Creates a new [LocationFsxLustre].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LocationFsxLustre]. {@macro pulumi_datasync_location_fsx_lustre_location_fsx_lustre_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LocationFsxLustre(
    String name, {
    LocationFsxLustreArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:datasync/locationFsxLustre:LocationFsxLustre',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.creationTime = registerOutput<String>('creationTime');
    this.fsxFilesystemArn = registerOutput<String>('fsxFilesystemArn');
    this.region = registerOutput<String>('region');
    this.securityGroupArns = registerOutput<List<String>>('securityGroupArns');
    this.subdirectory = registerOutput<String>('subdirectory');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.uri = registerOutput<String>('uri');
  }

  /// Gets an existing [LocationFsxLustre] resource's state with the given [name] and [id].
  static LocationFsxLustre get(
    String name,
    pulumi.Input<String> id, {
    LocationFsxLustreState? state,
  }) {
    return LocationFsxLustre._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LocationFsxLustre._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:datasync/locationFsxLustre:LocationFsxLustre',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.creationTime = registerOutput<String>('creationTime');
    this.fsxFilesystemArn = registerOutput<String>('fsxFilesystemArn');
    this.region = registerOutput<String>('region');
    this.securityGroupArns = registerOutput<List<String>>('securityGroupArns');
    this.subdirectory = registerOutput<String>('subdirectory');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.uri = registerOutput<String>('uri');
  }
}
