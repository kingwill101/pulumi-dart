import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_stream_args.dart';

/// Provides a CloudWatch Log Stream resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const yada = new aws.cloudwatch.LogGroup("yada", {name: "Yada"});
/// const foo = new aws.cloudwatch.LogStream("foo", {
///     name: "SampleLogStream1234",
///     logGroupName: yada.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// yada = aws.cloudwatch.LogGroup("yada", name="Yada")
/// foo = aws.cloudwatch.LogStream("foo",
///     name="SampleLogStream1234",
///     log_group_name=yada.name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var yada = new Aws.CloudWatch.LogGroup("yada", new()
///     {
///         Name = "Yada",
///     });
///
///     var foo = new Aws.CloudWatch.LogStream("foo", new()
///     {
///         Name = "SampleLogStream1234",
///         LogGroupName = yada.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		yada, err := cloudwatch.NewLogGroup(ctx, "yada", &cloudwatch.LogGroupArgs{
/// 			Name: pulumi.String("Yada"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudwatch.NewLogStream(ctx, "foo", &cloudwatch.LogStreamArgs{
/// 			Name:         pulumi.String("SampleLogStream1234"),
/// 			LogGroupName: yada.Name,
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
/// import com.pulumi.aws.cloudwatch.LogGroup;
/// import com.pulumi.aws.cloudwatch.LogGroupArgs;
/// import com.pulumi.aws.cloudwatch.LogStream;
/// import com.pulumi.aws.cloudwatch.LogStreamArgs;
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
///         var yada = new LogGroup("yada", LogGroupArgs.builder()
///             .name("Yada")
///             .build());
///
///         var foo = new LogStream("foo", LogStreamArgs.builder()
///             .name("SampleLogStream1234")
///             .logGroupName(yada.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   yada:
///     type: aws:cloudwatch:LogGroup
///     properties:
///       name: Yada
///   foo:
///     type: aws:cloudwatch:LogStream
///     properties:
///       name: SampleLogStream1234
///       logGroupName: ${yada.name}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Cloudwatch Log Stream using the stream's `log_group_name` and `name`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/logStream:LogStream foo Yada:SampleLogStream1234
/// ```
class LogStream extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) specifying the log stream.
  late final pulumi.Output<String> arn;
  /// The name of the log group under which the log stream is to be created.
  late final pulumi.Output<String> logGroupName;
  /// The name of the log stream. Must not be longer than 512 characters and must not contain `:`
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [LogStream].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LogStream]. {@macro pulumi_cloudwatch_log_stream_log_stream_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LogStream(
    String name, {
    LogStreamArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/logStream:LogStream',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.logGroupName = registerOutput<String>('logGroupName');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
  }
}
