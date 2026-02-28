import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_share_consumer_association_args.dart';

/// Resource for managing an AWS Redshift Data Share Consumer Association.
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
/// const example = new aws.redshift.DataShareConsumerAssociation("example", {
///     dataShareArn: "arn:aws:redshift:us-west-2:123456789012:datashare:b3bfde75-73fd-408b-9086-d6fccfd6d588/example",
///     associateEntireAccount: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.redshift.DataShareConsumerAssociation("example",
///     data_share_arn="arn:aws:redshift:us-west-2:123456789012:datashare:b3bfde75-73fd-408b-9086-d6fccfd6d588/example",
///     associate_entire_account=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.RedShift.DataShareConsumerAssociation("example", new()
///     {
///         DataShareArn = "arn:aws:redshift:us-west-2:123456789012:datashare:b3bfde75-73fd-408b-9086-d6fccfd6d588/example",
///         AssociateEntireAccount = true,
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
/// 		_, err := redshift.NewDataShareConsumerAssociation(ctx, "example", &redshift.DataShareConsumerAssociationArgs{
/// 			DataShareArn:           pulumi.String("arn:aws:redshift:us-west-2:123456789012:datashare:b3bfde75-73fd-408b-9086-d6fccfd6d588/example"),
/// 			AssociateEntireAccount: pulumi.Bool(true),
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
/// import com.pulumi.aws.redshift.DataShareConsumerAssociation;
/// import com.pulumi.aws.redshift.DataShareConsumerAssociationArgs;
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
///         var example = new DataShareConsumerAssociation("example", DataShareConsumerAssociationArgs.builder()
///             .dataShareArn("arn:aws:redshift:us-west-2:123456789012:datashare:b3bfde75-73fd-408b-9086-d6fccfd6d588/example")
///             .associateEntireAccount(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:redshift:DataShareConsumerAssociation
///     properties:
///       dataShareArn: arn:aws:redshift:us-west-2:123456789012:datashare:b3bfde75-73fd-408b-9086-d6fccfd6d588/example
///       associateEntireAccount: true
/// ```
///
///
/// ### Consumer Region
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.redshift.DataShareConsumerAssociation("example", {
///     dataShareArn: "arn:aws:redshift:us-west-2:123456789012:datashare:b3bfde75-73fd-408b-9086-d6fccfd6d588/example",
///     consumerRegion: "us-west-2",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.redshift.DataShareConsumerAssociation("example",
///     data_share_arn="arn:aws:redshift:us-west-2:123456789012:datashare:b3bfde75-73fd-408b-9086-d6fccfd6d588/example",
///     consumer_region="us-west-2")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.RedShift.DataShareConsumerAssociation("example", new()
///     {
///         DataShareArn = "arn:aws:redshift:us-west-2:123456789012:datashare:b3bfde75-73fd-408b-9086-d6fccfd6d588/example",
///         ConsumerRegion = "us-west-2",
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
/// 		_, err := redshift.NewDataShareConsumerAssociation(ctx, "example", &redshift.DataShareConsumerAssociationArgs{
/// 			DataShareArn:   pulumi.String("arn:aws:redshift:us-west-2:123456789012:datashare:b3bfde75-73fd-408b-9086-d6fccfd6d588/example"),
/// 			ConsumerRegion: pulumi.String("us-west-2"),
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
/// import com.pulumi.aws.redshift.DataShareConsumerAssociation;
/// import com.pulumi.aws.redshift.DataShareConsumerAssociationArgs;
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
///         var example = new DataShareConsumerAssociation("example", DataShareConsumerAssociationArgs.builder()
///             .dataShareArn("arn:aws:redshift:us-west-2:123456789012:datashare:b3bfde75-73fd-408b-9086-d6fccfd6d588/example")
///             .consumerRegion("us-west-2")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:redshift:DataShareConsumerAssociation
///     properties:
///       dataShareArn: arn:aws:redshift:us-west-2:123456789012:datashare:b3bfde75-73fd-408b-9086-d6fccfd6d588/example
///       consumerRegion: us-west-2
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Redshift Data Share Consumer Association using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:redshift/dataShareConsumerAssociation:DataShareConsumerAssociation example arn:aws:redshift:us-west-2:123456789012:datashare:b3bfde75-73fd-408b-9086-d6fccfd6d588/example,,,us-west-2
/// ```
class DataShareConsumerAssociation extends pulumi.CustomResource {
  /// Whether to allow write operations for a datashare.
  late final pulumi.Output<bool?> allowWrites;

  /// Whether the datashare is associated with the entire account. Conflicts with `consumer_arn` and `consumer_region`.
  late final pulumi.Output<bool?> associateEntireAccount;

  /// Amazon Resource Name (ARN) of the consumer that is associated with the datashare. Conflicts with `associate_entire_account` and `consumer_region`.
  late final pulumi.Output<String?> consumerArn;

  /// From a datashare consumer account, associates a datashare with all existing and future namespaces in the specified AWS Region. Conflicts with `associate_entire_account` and `consumer_arn`.
  late final pulumi.Output<String?> consumerRegion;

  /// Amazon Resource Name (ARN) of the datashare that the consumer is to use with the account or the namespace.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> dataShareArn;

  /// Identifier of a datashare to show its managing entity.
  late final pulumi.Output<String> managedBy;

  /// Amazon Resource Name (ARN) of the producer.
  late final pulumi.Output<String> producerArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [DataShareConsumerAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataShareConsumerAssociation]. {@macro pulumi_redshift_data_share_consumer_association_data_share_consumer_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataShareConsumerAssociation(
    String name, {
    DataShareConsumerAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:redshift/dataShareConsumerAssociation:DataShareConsumerAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allowWrites = registerOutput<bool?>('allowWrites');
    this.associateEntireAccount =
        registerOutput<bool?>('associateEntireAccount');
    this.consumerArn = registerOutput<String?>('consumerArn');
    this.consumerRegion = registerOutput<String?>('consumerRegion');
    this.dataShareArn = registerOutput<String>('dataShareArn');
    this.managedBy = registerOutput<String>('managedBy');
    this.producerArn = registerOutput<String>('producerArn');
    this.region = registerOutput<String>('region');
  }
}
