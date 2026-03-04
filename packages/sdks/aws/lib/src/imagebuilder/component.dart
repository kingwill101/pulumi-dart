import 'package:pulumi/pulumi.dart' as pulumi;
import 'component_args.dart';
import 'component_state.dart';

/// Manages an Image Builder Component.
///
/// ## Example Usage
///
/// ### URI Document
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.imagebuilder.Component("example", {
///     name: "example",
///     platform: "Linux",
///     uri: `s3://${exampleAwsS3Object.bucket}/${exampleAwsS3Object.key}`,
///     version: "1.0.0",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.imagebuilder.Component("example",
///     name="example",
///     platform="Linux",
///     uri=f"s3://{example_aws_s3_object['bucket']}/{example_aws_s3_object['key']}",
///     version="1.0.0")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.ImageBuilder.Component("example", new()
///     {
///         Name = "example",
///         Platform = "Linux",
///         Uri = $"s3://{exampleAwsS3Object.Bucket}/{exampleAwsS3Object.Key}",
///         Version = "1.0.0",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/imagebuilder"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := imagebuilder.NewComponent(ctx, "example", &imagebuilder.ComponentArgs{
/// 			Name:     pulumi.String("example"),
/// 			Platform: pulumi.String("Linux"),
/// 			Uri:      pulumi.Sprintf("s3://%v/%v", exampleAwsS3Object.Bucket, exampleAwsS3Object.Key),
/// 			Version:  pulumi.String("1.0.0"),
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
/// import com.pulumi.aws.imagebuilder.Component;
/// import com.pulumi.aws.imagebuilder.ComponentArgs;
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
///         var example = new Component("example", ComponentArgs.builder()
///             .name("example")
///             .platform("Linux")
///             .uri(String.format("s3://%s/%s", exampleAwsS3Object.bucket(),exampleAwsS3Object.key()))
///             .version("1.0.0")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:imagebuilder:Component
///     properties:
///       name: example
///       platform: Linux
///       uri: s3://${exampleAwsS3Object.bucket}/${exampleAwsS3Object.key}
///       version: 1.0.0
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.imagebuilder.getComponents` resources using the Amazon Resource Name (ARN). For example:
///
/// ```sh
/// $ pulumi import aws:imagebuilder/component:Component example arn:aws:imagebuilder:us-east-1:123456789012:component/example/1.0.0/1
/// ```
///
/// Certain resource arguments, such as `uri`, cannot be read via the API and imported into the provider. The provider will display a difference for these arguments the first run after import if declared in the the provider configuration for an imported resource.
class Component extends pulumi.CustomResource {
  /// (Required) Amazon Resource Name (ARN) of the component.
  late final pulumi.Output<String> arn;

  /// Change description of the component.
  late final pulumi.Output<String?> changeDescription;

  /// Inline YAML string with data of the component. Exactly one of `data` and `uri` can be specified. the provider will only perform drift detection of its value when present in a configuration.
  late final pulumi.Output<String> data;

  /// Date the component was created.
  late final pulumi.Output<String> dateCreated;

  /// Description of the component.
  late final pulumi.Output<String?> description;

  /// Encryption status of the component.
  late final pulumi.Output<bool> encrypted;

  /// Amazon Resource Name (ARN) of the Key Management Service (KMS) Key used to encrypt the component.
  late final pulumi.Output<String?> kmsKeyId;

  /// Name of the component.
  late final pulumi.Output<String> name;

  /// Owner of the component.
  late final pulumi.Output<String> owner;

  /// Platform of the component.
  late final pulumi.Output<String> platform;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Whether to retain the old version when the resource is destroyed or replacement is necessary. Defaults to `false`.
  late final pulumi.Output<bool?> skipDestroy;

  /// Set of Operating Systems (OS) supported by the component.
  late final pulumi.Output<List<String>?> supportedOsVersions;

  /// Key-value map of resource tags for the component. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Type of the component.
  late final pulumi.Output<String> type;

  /// S3 URI with data of the component. Exactly one of `data` and `uri` can be specified.
  ///
  /// &gt; **NOTE:** Updating `data` or `uri` requires specifying a new `version`. This causes replacement of the resource. The `skip_destroy` argument can be used to retain the old version.
  late final pulumi.Output<String?> uri;

  /// Version of the component.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> version;

  /// Creates a new [Component].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Component]. {@macro pulumi_imagebuilder_component_component_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Component(
    String name, {
    ComponentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:imagebuilder/component:Component',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    changeDescription = registerOutput<String?>('changeDescription');
    data = registerOutput<String>('data');
    dateCreated = registerOutput<String>('dateCreated');
    description = registerOutput<String?>('description');
    encrypted = registerOutput<bool>('encrypted');
    kmsKeyId = registerOutput<String?>('kmsKeyId');
    this.name = registerOutput<String>('name');
    owner = registerOutput<String>('owner');
    platform = registerOutput<String>('platform');
    region = registerOutput<String>('region');
    skipDestroy = registerOutput<bool?>('skipDestroy');
    supportedOsVersions = registerOutput<List<String>?>('supportedOsVersions');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    type = registerOutput<String>('type');
    uri = registerOutput<String?>('uri');
    version = registerOutput<String>('version');
  }

  /// Gets an existing [Component] resource's state with the given [name] and [id].
  static Component get(
    String name,
    pulumi.Input<String> id, {
    ComponentState? state,
  }) {
    return Component._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Component._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:imagebuilder/component:Component',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    changeDescription = registerOutput<String?>('changeDescription');
    data = registerOutput<String>('data');
    dateCreated = registerOutput<String>('dateCreated');
    description = registerOutput<String?>('description');
    encrypted = registerOutput<bool>('encrypted');
    kmsKeyId = registerOutput<String?>('kmsKeyId');
    this.name = registerOutput<String>('name');
    owner = registerOutput<String>('owner');
    platform = registerOutput<String>('platform');
    region = registerOutput<String>('region');
    skipDestroy = registerOutput<bool?>('skipDestroy');
    supportedOsVersions = registerOutput<List<String>?>('supportedOsVersions');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    type = registerOutput<String>('type');
    uri = registerOutput<String?>('uri');
    version = registerOutput<String>('version');
  }
}
