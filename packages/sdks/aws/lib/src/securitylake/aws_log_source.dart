import 'package:pulumi/pulumi.dart' as pulumi;
import 'aws_log_source_args.dart';
import 'aws_log_source_source.dart';
import 'aws_log_source_state.dart';

/// Resource for managing an Amazon Security Lake AWS Log Source.
///
/// &gt; **NOTE:** A single `aws.securitylake.AwsLogSource` should be used to configure a log source across all regions and accounts.
///
/// &gt; **NOTE:** The underlying `aws.securitylake.DataLake` must be configured before creating the `aws.securitylake.AwsLogSource`. Use a `dependsOn` statement.
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
/// const example = new aws.securitylake.AwsLogSource("example", {source: {
///     accounts: ["123456789012"],
///     regions: ["eu-west-1"],
///     sourceName: "ROUTE53",
/// }}, {
///     dependsOn: [exampleAwsSecuritylakeDataLake],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.securitylake.AwsLogSource("example", source={
///     "accounts": ["123456789012"],
///     "regions": ["eu-west-1"],
///     "source_name": "ROUTE53",
/// },
/// opts = pulumi.ResourceOptions(depends_on=[example_aws_securitylake_data_lake]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.SecurityLake.AwsLogSource("example", new()
///     {
///         Source = new Aws.SecurityLake.Inputs.AwsLogSourceSourceArgs
///         {
///             Accounts = new[]
///             {
///                 "123456789012",
///             },
///             Regions = new[]
///             {
///                 "eu-west-1",
///             },
///             SourceName = "ROUTE53",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleAwsSecuritylakeDataLake,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/securitylake"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := securitylake.NewAwsLogSource(ctx, "example", &securitylake.AwsLogSourceArgs{
/// 			Source: &securitylake.AwsLogSourceSourceArgs{
/// 				Accounts: pulumi.StringArray{
/// 					pulumi.String("123456789012"),
/// 				},
/// 				Regions: pulumi.StringArray{
/// 					pulumi.String("eu-west-1"),
/// 				},
/// 				SourceName: pulumi.String("ROUTE53"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleAwsSecuritylakeDataLake,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_securitylake_awslogsource" "example" {
///   depends_on = [exampleAwsSecuritylakeDataLake]
///   source = {
///     accounts    = ["123456789012"]
///     regions     = ["eu-west-1"]
///     source_name = "ROUTE53"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.securitylake.AwsLogSource;
/// import com.pulumi.aws.securitylake.AwsLogSourceArgs;
/// import com.pulumi.aws.securitylake.inputs.AwsLogSourceSourceArgs;
/// import com.pulumi.resources.CustomResourceOptions;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new AwsLogSource("example", AwsLogSourceArgs.builder()
///             .source(AwsLogSourceSourceArgs.builder()
///                 .accounts("123456789012")
///                 .regions("eu-west-1")
///                 .sourceName("ROUTE53")
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleAwsSecuritylakeDataLake)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:securitylake:AwsLogSource
///     properties:
///       source:
///         accounts:
///           - '123456789012'
///         regions:
///           - eu-west-1
///         sourceName: ROUTE53
///     options:
///       dependsOn:
///         - ${exampleAwsSecuritylakeDataLake}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import AWS log sources using the source name. For example:
///
/// ```sh
/// $ pulumi import aws:securitylake/awsLogSource:AwsLogSource example ROUTE53
/// ```
class AwsLogSource extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Specify the natively-supported AWS service to add as a source in Security Lake.
  late final pulumi.Output<AwsLogSourceSource> source;

  /// Creates a new [AwsLogSource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AwsLogSource]. {@macro pulumi_securitylake_aws_log_source_aws_log_source_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AwsLogSource(
    String name, {
    AwsLogSourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:securitylake/awsLogSource:AwsLogSource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    region = registerOutput<String>('region');
    source = registerOutput<AwsLogSourceSource>('source', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsLogSourceSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [AwsLogSource] resource's state with the given [name] and [id].
  static AwsLogSource get(
    String name,
    pulumi.Input<String> id, {
    AwsLogSourceState? state,
  }) {
    return AwsLogSource._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AwsLogSource._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:securitylake/awsLogSource:AwsLogSource',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    region = registerOutput<String>('region');
    source = registerOutput<AwsLogSourceSource>('source', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AwsLogSourceSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
