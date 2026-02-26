import 'package:pulumi/pulumi.dart';
import '../script_storage_location/script_storage_location.dart';
import 'script_args.dart';

/// Provides an GameLift Script resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.gamelift.Script("example", {
/// name: "example-script",
/// storageLocation: {
/// bucket: exampleAwsS3Bucket.id,
/// key: exampleAwsS3Object.key,
/// roleArn: exampleAwsIamRole.arn,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.gamelift.Script("example",
/// name="example-script",
/// storage_location={
/// "bucket": example_aws_s3_bucket["id"],
/// "key": example_aws_s3_object["key"],
/// "role_arn": example_aws_iam_role["arn"],
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.GameLift.Script("example", new()
/// {
/// Name = "example-script",
/// StorageLocation = new Aws.GameLift.Inputs.ScriptStorageLocationArgs
/// {
/// Bucket = exampleAwsS3Bucket.Id,
/// Key = exampleAwsS3Object.Key,
/// RoleArn = exampleAwsIamRole.Arn,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/gamelift"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := gamelift.NewScript(ctx, "example", &gamelift.ScriptArgs{
/// Name: pulumi.String("example-script"),
/// StorageLocation: &gamelift.ScriptStorageLocationArgs{
/// Bucket:  pulumi.Any(exampleAwsS3Bucket.Id),
/// Key:     pulumi.Any(exampleAwsS3Object.Key),
/// RoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// },
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
/// import com.pulumi.aws.gamelift.Script;
/// import com.pulumi.aws.gamelift.ScriptArgs;
/// import com.pulumi.aws.gamelift.inputs.ScriptStorageLocationArgs;
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
/// var example = new Script("example", ScriptArgs.builder()
/// .name("example-script")
/// .storageLocation(ScriptStorageLocationArgs.builder()
/// .bucket(exampleAwsS3Bucket.id())
/// .key(exampleAwsS3Object.key())
/// .roleArn(exampleAwsIamRole.arn())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:gamelift:Script
/// properties:
/// name: example-script
/// storageLocation:
/// bucket: ${exampleAwsS3Bucket.id}
/// key: ${exampleAwsS3Object.key}
/// roleArn: ${exampleAwsIamRole.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import GameLift Scripts using the ID. For example:
///
/// ```sh
/// $ pulumi import aws:gamelift/script:Script example <script-id>
/// ```
class Script extends CustomResource {
  /// GameLift Script ARN.
  late final Output<String> arn;

  /// Name of the script
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Information indicating where your game script files are stored. See below.
  late final Output<ScriptStorageLocation> storageLocation;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Version that is associated with this script.
  late final Output<String?> version;

  /// A data object containing your Realtime scripts and dependencies as a zip  file. The zip file can have one or multiple files. Maximum size of a zip file is 5 MB.
  late final Output<String?> zipFile;

  Script(
    String name, {
    ScriptArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:gamelift/script:Script',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.storageLocation =
        registerOutput<ScriptStorageLocation>('storageLocation');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.version = registerOutput<String?>('version');
    this.zipFile = registerOutput<String?>('zipFile');
  }
}
