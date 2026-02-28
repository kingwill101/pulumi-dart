import 'package:pulumi/pulumi.dart' as pulumi;
import 'worker_configuration_args.dart';

/// Provides an Amazon MSK Connect Worker Configuration Resource.
///
/// ## Example Usage
///
/// ### Basic configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.mskconnect.WorkerConfiguration("example", {
///     name: "example",
///     propertiesFileContent: `key.converter=org.apache.kafka.connect.storage.StringConverter
/// value.converter=org.apache.kafka.connect.storage.StringConverter
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.mskconnect.WorkerConfiguration("example",
///     name="example",
///     properties_file_content="""key.converter=org.apache.kafka.connect.storage.StringConverter
/// value.converter=org.apache.kafka.connect.storage.StringConverter
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.MskConnect.WorkerConfiguration("example", new()
///     {
///         Name = "example",
///         PropertiesFileContent = @"key.converter=org.apache.kafka.connect.storage.StringConverter
/// value.converter=org.apache.kafka.connect.storage.StringConverter
/// ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/mskconnect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := mskconnect.NewWorkerConfiguration(ctx, "example", &mskconnect.WorkerConfigurationArgs{
/// 			Name:                  pulumi.String("example"),
/// 			PropertiesFileContent: pulumi.String("key.converter=org.apache.kafka.connect.storage.StringConverter\nvalue.converter=org.apache.kafka.connect.storage.StringConverter\n"),
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
/// import com.pulumi.aws.mskconnect.WorkerConfiguration;
/// import com.pulumi.aws.mskconnect.WorkerConfigurationArgs;
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
///         var example = new WorkerConfiguration("example", WorkerConfigurationArgs.builder()
///             .name("example")
///             .propertiesFileContent("""
/// key.converter=org.apache.kafka.connect.storage.StringConverter
/// value.converter=org.apache.kafka.connect.storage.StringConverter
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:mskconnect:WorkerConfiguration
///     properties:
///       name: example
///       propertiesFileContent: |
///         key.converter=org.apache.kafka.connect.storage.StringConverter
///         value.converter=org.apache.kafka.connect.storage.StringConverter
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import MSK Connect Worker Configuration using the plugin's `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:mskconnect/workerConfiguration:WorkerConfiguration example 'arn:aws:kafkaconnect:eu-central-1:123456789012:worker-configuration/example/8848493b-7fcc-478c-a646-4a52634e3378-4'
/// ```
class WorkerConfiguration extends pulumi.CustomResource {
  /// the Amazon Resource Name (ARN) of the worker configuration.
  late final pulumi.Output<String> arn;

  /// A summary description of the worker configuration.
  late final pulumi.Output<String?> description;

  /// an ID of the latest successfully created revision of the worker configuration.
  late final pulumi.Output<int> latestRevision;

  /// The name of the worker configuration.
  late final pulumi.Output<String> name;

  /// Contents of connect-distributed.properties file. The value can be either base64 encoded or in raw format.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> propertiesFileContent;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [WorkerConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkerConfiguration]. {@macro pulumi_mskconnect_worker_configuration_worker_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkerConfiguration(
    String name, {
    WorkerConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:mskconnect/workerConfiguration:WorkerConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.latestRevision = registerOutput<int>('latestRevision');
    this.name = registerOutput<String>('name');
    this.propertiesFileContent =
        registerOutput<String>('propertiesFileContent');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
