import 'package:pulumi/pulumi.dart';
import 'appregistry_application_args.dart';

/// Resource for managing an AWS Service Catalog AppRegistry Application.
///
/// > An AWS Service Catalog AppRegistry Application is displayed in the AWS Console under "MyApplications".
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.servicecatalog.AppregistryApplication("example", {name: "example-app"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.servicecatalog.AppregistryApplication("example", name="example-app")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.ServiceCatalog.AppregistryApplication("example", new()
/// {
/// Name = "example-app",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/servicecatalog"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := servicecatalog.NewAppregistryApplication(ctx, "example", &servicecatalog.AppregistryApplicationArgs{
/// Name: pulumi.String("example-app"),
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
/// import com.pulumi.aws.servicecatalog.AppregistryApplication;
/// import com.pulumi.aws.servicecatalog.AppregistryApplicationArgs;
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
/// var example = new AppregistryApplication("example", AppregistryApplicationArgs.builder()
/// .name("example-app")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:servicecatalog:AppregistryApplication
/// properties:
/// name: example-app
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Connecting Resources
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.servicecatalog.AppregistryApplication("example", {name: "example-app"});
/// const bucket = new aws.s3.Bucket("bucket", {
/// bucket: "example-bucket",
/// tags: example.applicationTag,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.servicecatalog.AppregistryApplication("example", name="example-app")
/// bucket = aws.s3.Bucket("bucket",
/// bucket="example-bucket",
/// tags=example.application_tag)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.ServiceCatalog.AppregistryApplication("example", new()
/// {
/// Name = "example-app",
/// });
///
/// var bucket = new Aws.S3.Bucket("bucket", new()
/// {
/// BucketName = "example-bucket",
/// Tags = example.ApplicationTag,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/servicecatalog"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := servicecatalog.NewAppregistryApplication(ctx, "example", &servicecatalog.AppregistryApplicationArgs{
/// Name: pulumi.String("example-app"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = s3.NewBucket(ctx, "bucket", &s3.BucketArgs{
/// Bucket: pulumi.String("example-bucket"),
/// Tags:   example.ApplicationTag,
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
/// import com.pulumi.aws.servicecatalog.AppregistryApplication;
/// import com.pulumi.aws.servicecatalog.AppregistryApplicationArgs;
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
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
/// var example = new AppregistryApplication("example", AppregistryApplicationArgs.builder()
/// .name("example-app")
/// .build());
///
/// var bucket = new Bucket("bucket", BucketArgs.builder()
/// .bucket("example-bucket")
/// .tags(example.applicationTag())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:servicecatalog:AppregistryApplication
/// properties:
/// name: example-app
/// bucket:
/// type: aws:s3:Bucket
/// properties:
/// bucket: example-bucket
/// tags: ${example.applicationTag}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import AWS Service Catalog AppRegistry Application using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:servicecatalog/appregistryApplication:AppregistryApplication example application-id-12345678
/// ```
class AppregistryApplication extends CustomResource {
  /// A map with a single tag key-value pair used to associate resources with the application. This attribute can be passed directly into the <span pulumi-lang-nodejs="`tags`" pulumi-lang-dotnet="`Tags`" pulumi-lang-go="`tags`" pulumi-lang-python="`tags`" pulumi-lang-yaml="`tags`" pulumi-lang-java="`tags`">`tags`</span> argument of another resource, or merged into a map of existing tags.
  late final Output<Map<String, String>> applicationTag;

  /// ARN (Amazon Resource Name) of the application.
  late final Output<String> arn;

  /// Description of the application.
  late final Output<String?> description;

  /// Name of the application. The name must be unique within an AWS region.
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags assigned to the Application. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  AppregistryApplication(
    String name, {
    AppregistryApplicationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:servicecatalog/appregistryApplication:AppregistryApplication',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.applicationTag = registerOutput<Map<String, String>>('applicationTag');
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
