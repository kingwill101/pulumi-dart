import 'package:pulumi/pulumi.dart' as pulumi;
import 'appregistry_application_args.dart';
import 'appregistry_application_state.dart';

/// Resource for managing an AWS Service Catalog AppRegistry Application.
///
/// &gt; An AWS Service Catalog AppRegistry Application is displayed in the AWS Console under "MyApplications".
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
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
///     var example = new Aws.ServiceCatalog.AppregistryApplication("example", new()
///     {
///         Name = "example-app",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/servicecatalog"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := servicecatalog.NewAppregistryApplication(ctx, "example", &servicecatalog.AppregistryApplicationArgs{
/// 			Name: pulumi.String("example-app"),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new AppregistryApplication("example", AppregistryApplicationArgs.builder()
///             .name("example-app")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:servicecatalog:AppregistryApplication
///     properties:
///       name: example-app
/// ```
///
///
/// ### Connecting Resources
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.servicecatalog.AppregistryApplication("example", {name: "example-app"});
/// const bucket = new aws.s3.Bucket("bucket", {
///     bucket: "example-bucket",
///     tags: example.applicationTag,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.servicecatalog.AppregistryApplication("example", name="example-app")
/// bucket = aws.s3.Bucket("bucket",
///     bucket="example-bucket",
///     tags=example.application_tag)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.ServiceCatalog.AppregistryApplication("example", new()
///     {
///         Name = "example-app",
///     });
///
///     var bucket = new Aws.S3.Bucket("bucket", new()
///     {
///         BucketName = "example-bucket",
///         Tags = example.ApplicationTag,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/servicecatalog"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := servicecatalog.NewAppregistryApplication(ctx, "example", &servicecatalog.AppregistryApplicationArgs{
/// 			Name: pulumi.String("example-app"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucket(ctx, "bucket", &s3.BucketArgs{
/// 			Bucket: pulumi.String("example-bucket"),
/// 			Tags:   example.ApplicationTag,
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new AppregistryApplication("example", AppregistryApplicationArgs.builder()
///             .name("example-app")
///             .build());
///
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .bucket("example-bucket")
///             .tags(example.applicationTag())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:servicecatalog:AppregistryApplication
///     properties:
///       name: example-app
///   bucket:
///     type: aws:s3:Bucket
///     properties:
///       bucket: example-bucket
///       tags: ${example.applicationTag}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import AWS Service Catalog AppRegistry Application using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:servicecatalog/appregistryApplication:AppregistryApplication example application-id-12345678
/// ```
class AppregistryApplication extends pulumi.CustomResource {
  /// A map with a single tag key-value pair used to associate resources with the application. This attribute can be passed directly into the `tags` argument of another resource, or merged into a map of existing tags.
  late final pulumi.Output<Map<String, String>> applicationTag;

  /// ARN (Amazon Resource Name) of the application.
  late final pulumi.Output<String> arn;

  /// Description of the application.
  late final pulumi.Output<String?> description;

  /// Name of the application. The name must be unique within an AWS region.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags assigned to the Application. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [AppregistryApplication].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AppregistryApplication]. {@macro pulumi_servicecatalog_appregistry_application_appregistry_application_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AppregistryApplication(
    String name, {
    AppregistryApplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:servicecatalog/appregistryApplication:AppregistryApplication',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    applicationTag = registerOutput<Map<String, String>>('applicationTag');
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [AppregistryApplication] resource's state with the given [name] and [id].
  static AppregistryApplication get(
    String name,
    pulumi.Input<String> id, {
    AppregistryApplicationState? state,
  }) {
    return AppregistryApplication._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AppregistryApplication._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:servicecatalog/appregistryApplication:AppregistryApplication',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    applicationTag = registerOutput<Map<String, String>>('applicationTag');
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
