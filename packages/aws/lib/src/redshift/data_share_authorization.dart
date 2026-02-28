import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_share_authorization_args.dart';

/// Resource for managing an AWS Redshift Data Share Authorization.
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
/// const example = new aws.redshift.DataShareAuthorization("example", {
///     consumerIdentifier: "123456789012",
///     dataShareArn: "arn:aws:redshift:us-west-2:123456789012:datashare:3072dae5-022b-4d45-9cd3-01f010aae4b2/example_share",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.redshift.DataShareAuthorization("example",
///     consumer_identifier="123456789012",
///     data_share_arn="arn:aws:redshift:us-west-2:123456789012:datashare:3072dae5-022b-4d45-9cd3-01f010aae4b2/example_share")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.RedShift.DataShareAuthorization("example", new()
///     {
///         ConsumerIdentifier = "123456789012",
///         DataShareArn = "arn:aws:redshift:us-west-2:123456789012:datashare:3072dae5-022b-4d45-9cd3-01f010aae4b2/example_share",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshift"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := redshift.NewDataShareAuthorization(ctx, "example", &redshift.DataShareAuthorizationArgs{
/// 			ConsumerIdentifier: pulumi.String("123456789012"),
/// 			DataShareArn:       pulumi.String("arn:aws:redshift:us-west-2:123456789012:datashare:3072dae5-022b-4d45-9cd3-01f010aae4b2/example_share"),
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
/// import com.pulumi.aws.redshift.DataShareAuthorization;
/// import com.pulumi.aws.redshift.DataShareAuthorizationArgs;
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
///         var example = new DataShareAuthorization("example", DataShareAuthorizationArgs.builder()
///             .consumerIdentifier("123456789012")
///             .dataShareArn("arn:aws:redshift:us-west-2:123456789012:datashare:3072dae5-022b-4d45-9cd3-01f010aae4b2/example_share")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:redshift:DataShareAuthorization
///     properties:
///       consumerIdentifier: '123456789012'
///       dataShareArn: arn:aws:redshift:us-west-2:123456789012:datashare:3072dae5-022b-4d45-9cd3-01f010aae4b2/example_share
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Redshift Data Share Authorization using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:redshift/dataShareAuthorization:DataShareAuthorization example arn:aws:redshift:us-west-2:123456789012:datashare:3072dae5-022b-4d45-9cd3-01f010aae4b2/example_share,123456789012
/// ```
class DataShareAuthorization extends pulumi.CustomResource {
  /// Whether to allow write operations for a datashare.
  late final pulumi.Output<bool?> allowWrites;

  /// Identifier of the data consumer that is authorized to access the datashare. This identifier is an AWS account ID or a keyword, such as `ADX`.
  late final pulumi.Output<String> consumerIdentifier;

  /// Amazon Resource Name (ARN) of the datashare that producers are to authorize sharing for.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> dataShareArn;

  /// Identifier of a datashare to show its managing entity.
  late final pulumi.Output<String> managedBy;

  /// Amazon Resource Name (ARN) of the producer.
  late final pulumi.Output<String> producerArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [DataShareAuthorization].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataShareAuthorization]. {@macro pulumi_redshift_data_share_authorization_data_share_authorization_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataShareAuthorization(
    String name, {
    DataShareAuthorizationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:redshift/dataShareAuthorization:DataShareAuthorization',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allowWrites = registerOutput<bool?>('allowWrites');
    this.consumerIdentifier = registerOutput<String>('consumerIdentifier');
    this.dataShareArn = registerOutput<String>('dataShareArn');
    this.managedBy = registerOutput<String>('managedBy');
    this.producerArn = registerOutput<String>('producerArn');
    this.region = registerOutput<String>('region');
  }
}
