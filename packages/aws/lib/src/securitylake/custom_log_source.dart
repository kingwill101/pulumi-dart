import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_log_source_args.dart';
import 'custom_log_source_attribute.dart';
import 'custom_log_source_configuration.dart';
import 'custom_log_source_provider_detail.dart';

/// Resource for managing an AWS Security Lake Custom Log Source.
///
/// > **NOTE:** The underlying `aws.securitylake.DataLake` must be configured before creating the `aws.securitylake.CustomLogSource`. Use a `depends_on` statement.
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
/// const example = new aws.securitylake.CustomLogSource("example", {
///     sourceName: "example-name",
///     sourceVersion: "1.0",
///     eventClasses: ["FILE_ACTIVITY"],
///     configuration: {
///         crawlerConfiguration: {
///             roleArn: customLog.arn,
///         },
///         providerIdentity: {
///             externalId: "example-id",
///             principal: "123456789012",
///         },
///     },
/// }, {
///     dependsOn: [exampleAwsSecuritylakeDataLake],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.securitylake.CustomLogSource("example",
///     source_name="example-name",
///     source_version="1.0",
///     event_classes=["FILE_ACTIVITY"],
///     configuration={
///         "crawler_configuration": {
///             "role_arn": custom_log["arn"],
///         },
///         "provider_identity": {
///             "external_id": "example-id",
///             "principal": "123456789012",
///         },
///     },
///     opts = pulumi.ResourceOptions(depends_on=[example_aws_securitylake_data_lake]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.SecurityLake.CustomLogSource("example", new()
///     {
///         SourceName = "example-name",
///         SourceVersion = "1.0",
///         EventClasses = new[]
///         {
///             "FILE_ACTIVITY",
///         },
///         Configuration = new Aws.SecurityLake.Inputs.CustomLogSourceConfigurationArgs
///         {
///             CrawlerConfiguration = new Aws.SecurityLake.Inputs.CustomLogSourceConfigurationCrawlerConfigurationArgs
///             {
///                 RoleArn = customLog.Arn,
///             },
///             ProviderIdentity = new Aws.SecurityLake.Inputs.CustomLogSourceConfigurationProviderIdentityArgs
///             {
///                 ExternalId = "example-id",
///                 Principal = "123456789012",
///             },
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
/// 		_, err := securitylake.NewCustomLogSource(ctx, "example", &securitylake.CustomLogSourceArgs{
/// 			SourceName:    pulumi.String("example-name"),
/// 			SourceVersion: pulumi.String("1.0"),
/// 			EventClasses: pulumi.StringArray{
/// 				pulumi.String("FILE_ACTIVITY"),
/// 			},
/// 			Configuration: &securitylake.CustomLogSourceConfigurationArgs{
/// 				CrawlerConfiguration: &securitylake.CustomLogSourceConfigurationCrawlerConfigurationArgs{
/// 					RoleArn: pulumi.Any(customLog.Arn),
/// 				},
/// 				ProviderIdentity: &securitylake.CustomLogSourceConfigurationProviderIdentityArgs{
/// 					ExternalId: pulumi.String("example-id"),
/// 					Principal:  pulumi.String("123456789012"),
/// 				},
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.securitylake.CustomLogSource;
/// import com.pulumi.aws.securitylake.CustomLogSourceArgs;
/// import com.pulumi.aws.securitylake.inputs.CustomLogSourceConfigurationArgs;
/// import com.pulumi.aws.securitylake.inputs.CustomLogSourceConfigurationCrawlerConfigurationArgs;
/// import com.pulumi.aws.securitylake.inputs.CustomLogSourceConfigurationProviderIdentityArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var example = new CustomLogSource("example", CustomLogSourceArgs.builder()
///             .sourceName("example-name")
///             .sourceVersion("1.0")
///             .eventClasses("FILE_ACTIVITY")
///             .configuration(CustomLogSourceConfigurationArgs.builder()
///                 .crawlerConfiguration(CustomLogSourceConfigurationCrawlerConfigurationArgs.builder()
///                     .roleArn(customLog.arn())
///                     .build())
///                 .providerIdentity(CustomLogSourceConfigurationProviderIdentityArgs.builder()
///                     .externalId("example-id")
///                     .principal("123456789012")
///                     .build())
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
///     type: aws:securitylake:CustomLogSource
///     properties:
///       sourceName: example-name
///       sourceVersion: '1.0'
///       eventClasses:
///         - FILE_ACTIVITY
///       configuration:
///         crawlerConfiguration:
///           roleArn: ${customLog.arn}
///         providerIdentity:
///           externalId: example-id
///           principal: '123456789012'
///     options:
///       dependsOn:
///         - ${exampleAwsSecuritylakeDataLake}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Custom log sources using the source name. For example:
///
/// ```sh
/// $ pulumi import aws:securitylake/customLogSource:CustomLogSource example example-name
/// ```
class CustomLogSource extends pulumi.CustomResource {
  /// The attributes of a third-party custom source.
  late final pulumi.Output<List<CustomLogSourceAttribute>> attributes;
  /// The configuration for the third-party custom source.
  late final pulumi.Output<CustomLogSourceConfiguration> configuration;
  /// The Open Cybersecurity Schema Framework (OCSF) event classes which describes the type of data that the custom source will send to Security Lake.
  late final pulumi.Output<List<String>?> eventClasses;
  /// The details of the log provider for a third-party custom source.
  late final pulumi.Output<List<CustomLogSourceProviderDetail>> providerDetails;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Specify the name for a third-party custom source.
  /// This must be a Regionally unique value.
  /// Has a maximum length of 20.
  late final pulumi.Output<String> sourceName;
  /// Specify the source version for the third-party custom source, to limit log collection to a specific version of custom data source.
  late final pulumi.Output<String> sourceVersion;

  /// Creates a new [CustomLogSource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomLogSource]. {@macro pulumi_securitylake_custom_log_source_custom_log_source_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomLogSource(
    String name, {
    CustomLogSourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:securitylake/customLogSource:CustomLogSource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.attributes = registerOutput<List<CustomLogSourceAttribute>>('attributes');
    this.configuration = registerOutput<CustomLogSourceConfiguration>('configuration');
    this.eventClasses = registerOutput<List<String>?>('eventClasses');
    this.providerDetails = registerOutput<List<CustomLogSourceProviderDetail>>('providerDetails');
    this.region = registerOutput<String>('region');
    this.sourceName = registerOutput<String>('sourceName');
    this.sourceVersion = registerOutput<String>('sourceVersion');
  }
}
