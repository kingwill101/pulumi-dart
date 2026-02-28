import 'package:pulumi/pulumi.dart' as pulumi;
import 'upload_args.dart';

/// Provides a resource to manage AWS Device Farm Uploads.
///
/// > **NOTE:** AWS currently has limited regional support for Device Farm (e.g., `us-west-2`). See [AWS Device Farm endpoints and quotas](https://docs.aws.amazon.com/general/latest/gr/devicefarm.html) for information on supported regions.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.devicefarm.Project("example", {name: "example"});
/// const exampleUpload = new aws.devicefarm.Upload("example", {
///     name: "example",
///     projectArn: example.arn,
///     type: "APPIUM_JAVA_TESTNG_TEST_SPEC",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.devicefarm.Project("example", name="example")
/// example_upload = aws.devicefarm.Upload("example",
///     name="example",
///     project_arn=example.arn,
///     type="APPIUM_JAVA_TESTNG_TEST_SPEC")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.DeviceFarm.Project("example", new()
///     {
///         Name = "example",
///     });
///
///     var exampleUpload = new Aws.DeviceFarm.Upload("example", new()
///     {
///         Name = "example",
///         ProjectArn = example.Arn,
///         Type = "APPIUM_JAVA_TESTNG_TEST_SPEC",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/devicefarm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := devicefarm.NewProject(ctx, "example", &devicefarm.ProjectArgs{
/// 			Name: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = devicefarm.NewUpload(ctx, "example", &devicefarm.UploadArgs{
/// 			Name:       pulumi.String("example"),
/// 			ProjectArn: example.Arn,
/// 			Type:       pulumi.String("APPIUM_JAVA_TESTNG_TEST_SPEC"),
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
/// import com.pulumi.aws.devicefarm.Project;
/// import com.pulumi.aws.devicefarm.ProjectArgs;
/// import com.pulumi.aws.devicefarm.Upload;
/// import com.pulumi.aws.devicefarm.UploadArgs;
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
///         var example = new Project("example", ProjectArgs.builder()
///             .name("example")
///             .build());
///
///         var exampleUpload = new Upload("exampleUpload", UploadArgs.builder()
///             .name("example")
///             .projectArn(example.arn())
///             .type("APPIUM_JAVA_TESTNG_TEST_SPEC")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:devicefarm:Project
///     properties:
///       name: example
///   exampleUpload:
///     type: aws:devicefarm:Upload
///     name: example
///     properties:
///       name: example
///       projectArn: ${example.arn}
///       type: APPIUM_JAVA_TESTNG_TEST_SPEC
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the Device Farm upload.
///
///
/// Using `pulumi import`, import DeviceFarm Uploads using their ARN. For example:
///
/// ```sh
/// $ pulumi import aws:devicefarm/upload:Upload example arn:aws:devicefarm:us-west-2:123456789012:upload:4fa784c7-ccb4-4dbf-ba4f-02198320daa1
/// ```
class Upload extends pulumi.CustomResource {
  /// The Amazon Resource Name of this upload.
  late final pulumi.Output<String> arn;
  /// The upload's category.
  late final pulumi.Output<String> category;
  /// The upload's content type (for example, application/octet-stream).
  late final pulumi.Output<String?> contentType;
  /// The upload's metadata. For example, for Android, this contains information that is parsed from the manifest and is displayed in the AWS Device Farm console after the associated app is uploaded.
  late final pulumi.Output<String> metadata;
  /// The upload's file name. The name should not contain any forward slashes (/). If you are uploading an iOS app, the file name must end with the .ipa extension. If you are uploading an Android app, the file name must end with the .apk extension. For all others, the file name must end with the .zip file extension.
  late final pulumi.Output<String> name;
  /// The ARN of the project for the upload.
  late final pulumi.Output<String> projectArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The upload's upload type. See [AWS Docs](https://docs.aws.amazon.com/devicefarm/latest/APIReference/API_CreateUpload.html#API_CreateUpload_RequestSyntax) for valid list of values.
  late final pulumi.Output<String> type;
  /// The presigned Amazon S3 URL that was used to store a file using a PUT request.
  late final pulumi.Output<String> url;

  /// Creates a new [Upload].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Upload]. {@macro pulumi_devicefarm_upload_upload_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Upload(
    String name, {
    UploadArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:devicefarm/upload:Upload',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.category = registerOutput<String>('category');
    this.contentType = registerOutput<String?>('contentType');
    this.metadata = registerOutput<String>('metadata');
    this.name = registerOutput<String>('name');
    this.projectArn = registerOutput<String>('projectArn');
    this.region = registerOutput<String>('region');
    this.type = registerOutput<String>('type');
    this.url = registerOutput<String>('url');
  }
}
