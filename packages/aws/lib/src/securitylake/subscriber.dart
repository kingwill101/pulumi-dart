import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscriber_args.dart';
import 'subscriber_source.dart';
import 'subscriber_subscriber_identity.dart';
import 'subscriber_timeouts.dart';

/// Resource for managing an AWS Security Lake Subscriber.
///
/// > **NOTE:** The underlying `aws.securitylake.DataLake` must be configured before creating the `aws.securitylake.Subscriber`. Use a `depends_on` statement.
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
/// const example = new aws.securitylake.Subscriber("example", {
///     subscriberName: "example-name",
///     accessType: "S3",
///     sources: [{
///         awsLogSourceResource: {
///             sourceName: "ROUTE53",
///             sourceVersion: "1.0",
///         },
///     }],
///     subscriberIdentity: {
///         externalId: "example",
///         principal: "1234567890",
///     },
/// }, {
///     dependsOn: [exampleAwsSecuritylakeDataLake],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.securitylake.Subscriber("example",
///     subscriber_name="example-name",
///     access_type="S3",
///     sources=[{
///         "aws_log_source_resource": {
///             "source_name": "ROUTE53",
///             "source_version": "1.0",
///         },
///     }],
///     subscriber_identity={
///         "external_id": "example",
///         "principal": "1234567890",
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
///     var example = new Aws.SecurityLake.Subscriber("example", new()
///     {
///         SubscriberName = "example-name",
///         AccessType = "S3",
///         Sources = new[]
///         {
///             new Aws.SecurityLake.Inputs.SubscriberSourceArgs
///             {
///                 AwsLogSourceResource = new Aws.SecurityLake.Inputs.SubscriberSourceAwsLogSourceResourceArgs
///                 {
///                     SourceName = "ROUTE53",
///                     SourceVersion = "1.0",
///                 },
///             },
///         },
///         SubscriberIdentity = new Aws.SecurityLake.Inputs.SubscriberSubscriberIdentityArgs
///         {
///             ExternalId = "example",
///             Principal = "1234567890",
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
/// 		_, err := securitylake.NewSubscriber(ctx, "example", &securitylake.SubscriberArgs{
/// 			SubscriberName: pulumi.String("example-name"),
/// 			AccessType:     pulumi.String("S3"),
/// 			Sources: securitylake.SubscriberSourceArray{
/// 				&securitylake.SubscriberSourceArgs{
/// 					AwsLogSourceResource: &securitylake.SubscriberSourceAwsLogSourceResourceArgs{
/// 						SourceName:    pulumi.String("ROUTE53"),
/// 						SourceVersion: pulumi.String("1.0"),
/// 					},
/// 				},
/// 			},
/// 			SubscriberIdentity: &securitylake.SubscriberSubscriberIdentityArgs{
/// 				ExternalId: pulumi.String("example"),
/// 				Principal:  pulumi.String("1234567890"),
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
/// import com.pulumi.aws.securitylake.Subscriber;
/// import com.pulumi.aws.securitylake.SubscriberArgs;
/// import com.pulumi.aws.securitylake.inputs.SubscriberSourceArgs;
/// import com.pulumi.aws.securitylake.inputs.SubscriberSourceAwsLogSourceResourceArgs;
/// import com.pulumi.aws.securitylake.inputs.SubscriberSubscriberIdentityArgs;
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
///         var example = new Subscriber("example", SubscriberArgs.builder()
///             .subscriberName("example-name")
///             .accessType("S3")
///             .sources(SubscriberSourceArgs.builder()
///                 .awsLogSourceResource(SubscriberSourceAwsLogSourceResourceArgs.builder()
///                     .sourceName("ROUTE53")
///                     .sourceVersion("1.0")
///                     .build())
///                 .build())
///             .subscriberIdentity(SubscriberSubscriberIdentityArgs.builder()
///                 .externalId("example")
///                 .principal("1234567890")
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
///     type: aws:securitylake:Subscriber
///     properties:
///       subscriberName: example-name
///       accessType: S3
///       sources:
///         - awsLogSourceResource:
///             sourceName: ROUTE53
///             sourceVersion: '1.0'
///       subscriberIdentity:
///         externalId: example
///         principal: '1234567890'
///     options:
///       dependsOn:
///         - ${exampleAwsSecuritylakeDataLake}
/// ```
///
///
/// ### Multiple Log Sources
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.securitylake.Subscriber("example", {
///     subscriberName: "example-name",
///     accessType: "S3",
///     sources: [
///         {
///             awsLogSourceResource: {
///                 sourceName: "SH_FINDINGS",
///                 sourceVersion: "2.0",
///             },
///         },
///         {
///             awsLogSourceResource: {
///                 sourceName: "ROUTE53",
///                 sourceVersion: "2.0",
///             },
///         },
///     ],
///     subscriberIdentity: {
///         externalId: "example",
///         principal: "1234567890",
///     },
/// }, {
///     dependsOn: [exampleAwsSecuritylakeDataLake],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.securitylake.Subscriber("example",
///     subscriber_name="example-name",
///     access_type="S3",
///     sources=[
///         {
///             "aws_log_source_resource": {
///                 "source_name": "SH_FINDINGS",
///                 "source_version": "2.0",
///             },
///         },
///         {
///             "aws_log_source_resource": {
///                 "source_name": "ROUTE53",
///                 "source_version": "2.0",
///             },
///         },
///     ],
///     subscriber_identity={
///         "external_id": "example",
///         "principal": "1234567890",
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
///     var example = new Aws.SecurityLake.Subscriber("example", new()
///     {
///         SubscriberName = "example-name",
///         AccessType = "S3",
///         Sources = new[]
///         {
///             new Aws.SecurityLake.Inputs.SubscriberSourceArgs
///             {
///                 AwsLogSourceResource = new Aws.SecurityLake.Inputs.SubscriberSourceAwsLogSourceResourceArgs
///                 {
///                     SourceName = "SH_FINDINGS",
///                     SourceVersion = "2.0",
///                 },
///             },
///             new Aws.SecurityLake.Inputs.SubscriberSourceArgs
///             {
///                 AwsLogSourceResource = new Aws.SecurityLake.Inputs.SubscriberSourceAwsLogSourceResourceArgs
///                 {
///                     SourceName = "ROUTE53",
///                     SourceVersion = "2.0",
///                 },
///             },
///         },
///         SubscriberIdentity = new Aws.SecurityLake.Inputs.SubscriberSubscriberIdentityArgs
///         {
///             ExternalId = "example",
///             Principal = "1234567890",
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
/// 		_, err := securitylake.NewSubscriber(ctx, "example", &securitylake.SubscriberArgs{
/// 			SubscriberName: pulumi.String("example-name"),
/// 			AccessType:     pulumi.String("S3"),
/// 			Sources: securitylake.SubscriberSourceArray{
/// 				&securitylake.SubscriberSourceArgs{
/// 					AwsLogSourceResource: &securitylake.SubscriberSourceAwsLogSourceResourceArgs{
/// 						SourceName:    pulumi.String("SH_FINDINGS"),
/// 						SourceVersion: pulumi.String("2.0"),
/// 					},
/// 				},
/// 				&securitylake.SubscriberSourceArgs{
/// 					AwsLogSourceResource: &securitylake.SubscriberSourceAwsLogSourceResourceArgs{
/// 						SourceName:    pulumi.String("ROUTE53"),
/// 						SourceVersion: pulumi.String("2.0"),
/// 					},
/// 				},
/// 			},
/// 			SubscriberIdentity: &securitylake.SubscriberSubscriberIdentityArgs{
/// 				ExternalId: pulumi.String("example"),
/// 				Principal:  pulumi.String("1234567890"),
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
/// import com.pulumi.aws.securitylake.Subscriber;
/// import com.pulumi.aws.securitylake.SubscriberArgs;
/// import com.pulumi.aws.securitylake.inputs.SubscriberSourceArgs;
/// import com.pulumi.aws.securitylake.inputs.SubscriberSourceAwsLogSourceResourceArgs;
/// import com.pulumi.aws.securitylake.inputs.SubscriberSubscriberIdentityArgs;
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
///         var example = new Subscriber("example", SubscriberArgs.builder()
///             .subscriberName("example-name")
///             .accessType("S3")
///             .sources(
///                 SubscriberSourceArgs.builder()
///                     .awsLogSourceResource(SubscriberSourceAwsLogSourceResourceArgs.builder()
///                         .sourceName("SH_FINDINGS")
///                         .sourceVersion("2.0")
///                         .build())
///                     .build(),
///                 SubscriberSourceArgs.builder()
///                     .awsLogSourceResource(SubscriberSourceAwsLogSourceResourceArgs.builder()
///                         .sourceName("ROUTE53")
///                         .sourceVersion("2.0")
///                         .build())
///                     .build())
///             .subscriberIdentity(SubscriberSubscriberIdentityArgs.builder()
///                 .externalId("example")
///                 .principal("1234567890")
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
///     type: aws:securitylake:Subscriber
///     properties:
///       subscriberName: example-name
///       accessType: S3
///       sources:
///         - awsLogSourceResource:
///             sourceName: SH_FINDINGS
///             sourceVersion: '2.0'
///         - awsLogSourceResource:
///             sourceName: ROUTE53
///             sourceVersion: '2.0'
///       subscriberIdentity:
///         externalId: example
///         principal: '1234567890'
///     options:
///       dependsOn:
///         - ${exampleAwsSecuritylakeDataLake}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Security Lake subscriber using the subscriber ID. For example:
///
/// ```sh
/// $ pulumi import aws:securitylake/subscriber:Subscriber example 9f3bfe79-d543-474d-a93c-f3846805d208
/// ```
class Subscriber extends pulumi.CustomResource {
  /// The Amazon S3 or Lake Formation access type.
  late final pulumi.Output<String> accessType;

  /// ARN of the Data Lake.
  late final pulumi.Output<String> arn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The Amazon Resource Name (ARN) which uniquely defines the AWS RAM resource share. Before accepting the RAM resource share invitation, you can view details related to the RAM resource share.
  late final pulumi.Output<String> resourceShareArn;

  /// The name of the resource share.
  late final pulumi.Output<String> resourceShareName;

  /// The ARN of the IAM role to be used by the entity putting logs into your custom source partition.
  late final pulumi.Output<String> roleArn;

  /// The ARN for the Amazon Security Lake Amazon S3 bucket.
  late final pulumi.Output<String> s3BucketArn;

  /// The supported AWS services from which logs and events are collected. Security Lake supports log and event collection for natively supported AWS services. See `source` Blocks below.
  late final pulumi.Output<List<SubscriberSource>> sources;

  /// The description for your subscriber account in Security Lake.
  late final pulumi.Output<String?> subscriberDescription;

  /// The subscriber endpoint to which exception messages are posted.
  late final pulumi.Output<String> subscriberEndpoint;

  /// The AWS identity used to access your data. See `subscriber_identity` Block below.
  late final pulumi.Output<SubscriberSubscriberIdentity> subscriberIdentity;

  /// The name of your Security Lake subscriber account.
  late final pulumi.Output<String?> subscriberName;

  /// The subscriber status of the Amazon Security Lake subscriber account.
  late final pulumi.Output<String> subscriberStatus;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<SubscriberTimeouts?> timeouts;

  /// Creates a new [Subscriber].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Subscriber]. {@macro pulumi_securitylake_subscriber_subscriber_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Subscriber(
    String name, {
    SubscriberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:securitylake/subscriber:Subscriber',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessType = registerOutput<String>('accessType');
    this.arn = registerOutput<String>('arn');
    this.region = registerOutput<String>('region');
    this.resourceShareArn = registerOutput<String>('resourceShareArn');
    this.resourceShareName = registerOutput<String>('resourceShareName');
    this.roleArn = registerOutput<String>('roleArn');
    this.s3BucketArn = registerOutput<String>('s3BucketArn');
    this.sources = registerOutput<List<SubscriberSource>>('sources');
    this.subscriberDescription =
        registerOutput<String?>('subscriberDescription');
    this.subscriberEndpoint = registerOutput<String>('subscriberEndpoint');
    this.subscriberIdentity =
        registerOutput<SubscriberSubscriberIdentity>('subscriberIdentity');
    this.subscriberName = registerOutput<String?>('subscriberName');
    this.subscriberStatus = registerOutput<String>('subscriberStatus');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<SubscriberTimeouts?>('timeouts');
  }
}
