import 'package:pulumi/pulumi.dart';
import '../access_point_posix_user/access_point_posix_user.dart';
import '../access_point_root_directory/access_point_root_directory.dart';
import 'access_point_args.dart';

/// Provides an Elastic File System (EFS) access point.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.efs.AccessPoint("test", {fileSystemId: foo.id});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.efs.AccessPoint("test", file_system_id=foo["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = new Aws.Efs.AccessPoint("test", new()
/// {
/// FileSystemId = foo.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/efs"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := efs.NewAccessPoint(ctx, "test", &efs.AccessPointArgs{
/// FileSystemId: pulumi.Any(foo.Id),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.efs.AccessPoint;
/// import com.pulumi.aws.efs.AccessPointArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var test = new AccessPoint("test", AccessPointArgs.builder()
/// .fileSystemId(foo.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:efs:AccessPoint
/// properties:
/// fileSystemId: ${foo.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import the EFS access points using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:efs/accessPoint:AccessPoint test fsap-52a643fb
/// ```
class AccessPoint extends CustomResource {
  /// ARN of the access point.
  late final Output<String> arn;

  /// ARN of the file system.
  late final Output<String> fileSystemArn;

  /// ID of the file system for which the access point is intended.
  late final Output<String> fileSystemId;
  late final Output<String> ownerId;

  /// Operating system user and group applied to all file system requests made using the access point. Detailed below.
  late final Output<AccessPointPosixUser?> posixUser;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Directory on the Amazon EFS file system that the access point provides access to. Detailed below.
  late final Output<AccessPointRootDirectory> rootDirectory;

  /// Key-value mapping of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  AccessPoint(
    String name, {
    AccessPointArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:efs/accessPoint:AccessPoint',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.fileSystemArn = Output.createUnknown<String>();
    this.fileSystemId = Output.createUnknown<String>();
    this.ownerId = Output.createUnknown<String>();
    this.posixUser = Output.createUnknown<AccessPointPosixUser?>();
    this.region = Output.createUnknown<String>();
    this.rootDirectory = Output.createUnknown<AccessPointRootDirectory>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
