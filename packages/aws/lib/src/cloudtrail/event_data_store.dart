import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_data_store_advanced_event_selector.dart';
import 'event_data_store_args.dart';

/// Provides a CloudTrail Event Data Store.
///
/// More information about event data stores can be found in the [Event Data Store User Guide](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/query-event-data-store.html).
///
/// > **Tip:** For an organization event data store you must create this resource in the management account.
///
/// ## Example Usage
///
/// ### Basic
///
/// The most simple event data store configuration requires us to only set the `name` attribute. The event data store will automatically capture all management events. To capture management events from all the regions, `multi_region_enabled` must be `true`.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudtrail.EventDataStore("example", {name: "example-event-data-store"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudtrail.EventDataStore("example", name="example-event-data-store")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CloudTrail.EventDataStore("example", new()
///     {
///         Name = "example-event-data-store",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudtrail"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudtrail.NewEventDataStore(ctx, "example", &cloudtrail.EventDataStoreArgs{
/// 			Name: pulumi.String("example-event-data-store"),
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
/// import com.pulumi.aws.cloudtrail.EventDataStore;
/// import com.pulumi.aws.cloudtrail.EventDataStoreArgs;
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
///         var example = new EventDataStore("example", EventDataStoreArgs.builder()
///             .name("example-event-data-store")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudtrail:EventDataStore
///     properties:
///       name: example-event-data-store
/// ```
///
///
/// ### Data Event Logging
///
/// CloudTrail can log [Data Events](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html) for certain services such as S3 bucket objects and Lambda function invocations. Additional information about data event configuration can be found in the following links:
///
/// - [CloudTrail API AdvancedFieldSelector documentation](https://docs.aws.amazon.com/awscloudtrail/latest/APIReference/API_AdvancedFieldSelector.html)
///
/// ### Log all DynamoDB PutEvent actions for a specific DynamoDB table
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const table = aws.dynamodb.getTable({
///     name: "not-important-dynamodb-table",
/// });
/// const example = new aws.cloudtrail.EventDataStore("example", {advancedEventSelectors: [{
///     name: "Log all DynamoDB PutEvent actions for a specific DynamoDB table",
///     fieldSelectors: [
///         {
///             field: "eventCategory",
///             equals: ["Data"],
///         },
///         {
///             field: "resources.type",
///             equals: ["AWS::DynamoDB::Table"],
///         },
///         {
///             field: "eventName",
///             equals: ["PutItem"],
///         },
///         {
///             field: "resources.ARN",
///             equals: [table.then(table => table.arn)],
///         },
///     ],
/// }]});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// table = aws.dynamodb.get_table(name="not-important-dynamodb-table")
/// example = aws.cloudtrail.EventDataStore("example", advanced_event_selectors=[{
///     "name": "Log all DynamoDB PutEvent actions for a specific DynamoDB table",
///     "field_selectors": [
///         {
///             "field": "eventCategory",
///             "equals": ["Data"],
///         },
///         {
///             "field": "resources.type",
///             "equals": ["AWS::DynamoDB::Table"],
///         },
///         {
///             "field": "eventName",
///             "equals": ["PutItem"],
///         },
///         {
///             "field": "resources.ARN",
///             "equals": [table.arn],
///         },
///     ],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var table = Aws.DynamoDB.GetTable.Invoke(new()
///     {
///         Name = "not-important-dynamodb-table",
///     });
///
///     var example = new Aws.CloudTrail.EventDataStore("example", new()
///     {
///         AdvancedEventSelectors = new[]
///         {
///             new Aws.CloudTrail.Inputs.EventDataStoreAdvancedEventSelectorArgs
///             {
///                 Name = "Log all DynamoDB PutEvent actions for a specific DynamoDB table",
///                 FieldSelectors = new[]
///                 {
///                     new Aws.CloudTrail.Inputs.EventDataStoreAdvancedEventSelectorFieldSelectorArgs
///                     {
///                         Field = "eventCategory",
///                         Equals = new[]
///                         {
///                             "Data",
///                         },
///                     },
///                     new Aws.CloudTrail.Inputs.EventDataStoreAdvancedEventSelectorFieldSelectorArgs
///                     {
///                         Field = "resources.type",
///                         Equals = new[]
///                         {
///                             "AWS::DynamoDB::Table",
///                         },
///                     },
///                     new Aws.CloudTrail.Inputs.EventDataStoreAdvancedEventSelectorFieldSelectorArgs
///                     {
///                         Field = "eventName",
///                         Equals = new[]
///                         {
///                             "PutItem",
///                         },
///                     },
///                     new Aws.CloudTrail.Inputs.EventDataStoreAdvancedEventSelectorFieldSelectorArgs
///                     {
///                         Field = "resources.ARN",
///                         Equals = new[]
///                         {
///                             table.Apply(getTableResult => getTableResult.Arn),
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudtrail"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/dynamodb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		table, err := dynamodb.LookupTable(ctx, &dynamodb.LookupTableArgs{
/// 			Name: "not-important-dynamodb-table",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudtrail.NewEventDataStore(ctx, "example", &cloudtrail.EventDataStoreArgs{
/// 			AdvancedEventSelectors: cloudtrail.EventDataStoreAdvancedEventSelectorArray{
/// 				&cloudtrail.EventDataStoreAdvancedEventSelectorArgs{
/// 					Name: pulumi.String("Log all DynamoDB PutEvent actions for a specific DynamoDB table"),
/// 					FieldSelectors: cloudtrail.EventDataStoreAdvancedEventSelectorFieldSelectorArray{
/// 						&cloudtrail.EventDataStoreAdvancedEventSelectorFieldSelectorArgs{
/// 							Field: pulumi.String("eventCategory"),
/// 							Equals: pulumi.StringArray{
/// 								pulumi.String("Data"),
/// 							},
/// 						},
/// 						&cloudtrail.EventDataStoreAdvancedEventSelectorFieldSelectorArgs{
/// 							Field: pulumi.String("resources.type"),
/// 							Equals: pulumi.StringArray{
/// 								pulumi.String("AWS::DynamoDB::Table"),
/// 							},
/// 						},
/// 						&cloudtrail.EventDataStoreAdvancedEventSelectorFieldSelectorArgs{
/// 							Field: pulumi.String("eventName"),
/// 							Equals: pulumi.StringArray{
/// 								pulumi.String("PutItem"),
/// 							},
/// 						},
/// 						&cloudtrail.EventDataStoreAdvancedEventSelectorFieldSelectorArgs{
/// 							Field: pulumi.String("resources.ARN"),
/// 							Equals: pulumi.StringArray{
/// 								pulumi.String(table.Arn),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
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
/// import com.pulumi.aws.dynamodb.DynamodbFunctions;
/// import com.pulumi.aws.dynamodb.inputs.GetTableArgs;
/// import com.pulumi.aws.cloudtrail.EventDataStore;
/// import com.pulumi.aws.cloudtrail.EventDataStoreArgs;
/// import com.pulumi.aws.cloudtrail.inputs.EventDataStoreAdvancedEventSelectorArgs;
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
///         final var table = DynamodbFunctions.getTable(GetTableArgs.builder()
///             .name("not-important-dynamodb-table")
///             .build());
///
///         var example = new EventDataStore("example", EventDataStoreArgs.builder()
///             .advancedEventSelectors(EventDataStoreAdvancedEventSelectorArgs.builder()
///                 .name("Log all DynamoDB PutEvent actions for a specific DynamoDB table")
///                 .fieldSelectors(
///                     EventDataStoreAdvancedEventSelectorFieldSelectorArgs.builder()
///                         .field("eventCategory")
///                         .equals("Data")
///                         .build(),
///                     EventDataStoreAdvancedEventSelectorFieldSelectorArgs.builder()
///                         .field("resources.type")
///                         .equals("AWS::DynamoDB::Table")
///                         .build(),
///                     EventDataStoreAdvancedEventSelectorFieldSelectorArgs.builder()
///                         .field("eventName")
///                         .equals("PutItem")
///                         .build(),
///                     EventDataStoreAdvancedEventSelectorFieldSelectorArgs.builder()
///                         .field("resources.ARN")
///                         .equals(table.arn())
///                         .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudtrail:EventDataStore
///     properties:
///       advancedEventSelectors:
///         - name: Log all DynamoDB PutEvent actions for a specific DynamoDB table
///           fieldSelectors:
///             - field: eventCategory
///               equals:
///                 - Data
///             - field: resources.type
///               equals:
///                 - AWS::DynamoDB::Table
///             - field: eventName
///               equals:
///                 - PutItem
///             - field: resources.ARN
///               equals:
///                 - ${table.arn}
/// variables:
///   table:
///     fn::invoke:
///       function: aws:dynamodb:getTable
///       arguments:
///         name: not-important-dynamodb-table
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the CloudTrail event data store.
///
///
/// Using `pulumi import`, import event data stores using their `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudtrail/eventDataStore:EventDataStore example arn:aws:cloudtrail:us-east-1:123456789123:eventdatastore/22333815-4414-412c-b155-dd254033gfhf
/// ```
class EventDataStore extends pulumi.CustomResource {
  /// The advanced event selectors to use to select the events for the data store. For more information about how to use advanced event selectors, see [Log events by using advanced event selectors](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html#creating-data-event-selectors-advanced) in the CloudTrail User Guide.
  late final pulumi.Output<List<EventDataStoreAdvancedEventSelector>>
      advancedEventSelectors;

  /// ARN of the event data store.
  late final pulumi.Output<String> arn;

  /// The billing mode for the event data store. The valid values are `EXTENDABLE_RETENTION_PRICING` and `FIXED_RETENTION_PRICING`. Defaults to `EXTENDABLE_RETENTION_PRICING`.
  late final pulumi.Output<String?> billingMode;

  /// Specifies the AWS KMS key ID to use to encrypt the events delivered by CloudTrail. The value can be an alias name prefixed by alias/, a fully specified ARN to an alias, a fully specified ARN to a key, or a globally unique identifier.
  late final pulumi.Output<String?> kmsKeyId;

  /// Specifies whether the event data store includes events from all regions, or only from the region in which the event data store is created. Default: `true`.
  late final pulumi.Output<bool?> multiRegionEnabled;

  /// The name of the event data store.
  late final pulumi.Output<String> name;

  /// Specifies whether an event data store collects events logged for an organization in AWS Organizations. Default: `false`.
  late final pulumi.Output<bool?> organizationEnabled;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The retention period of the event data store, in days. You can set a retention period of up to 2555 days, the equivalent of seven years. Default: `2555`.
  late final pulumi.Output<int?> retentionPeriod;

  /// Specifies whether to stop ingesting new events into the event data store. If set to `true`, ingestion is suspended while maintaining the ability to query existing events. If set to `false`, ingestion is active.
  late final pulumi.Output<String?> suspend;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Specifies whether termination protection is enabled for the event data store. If termination protection is enabled, you cannot delete the event data store until termination protection is disabled. Default: `true`.
  late final pulumi.Output<bool?> terminationProtectionEnabled;

  /// Creates a new [EventDataStore].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EventDataStore]. {@macro pulumi_cloudtrail_event_data_store_event_data_store_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EventDataStore(
    String name, {
    EventDataStoreArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudtrail/eventDataStore:EventDataStore',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.advancedEventSelectors =
        registerOutput<List<EventDataStoreAdvancedEventSelector>>(
            'advancedEventSelectors');
    this.arn = registerOutput<String>('arn');
    this.billingMode = registerOutput<String?>('billingMode');
    this.kmsKeyId = registerOutput<String?>('kmsKeyId');
    this.multiRegionEnabled = registerOutput<bool?>('multiRegionEnabled');
    this.name = registerOutput<String>('name');
    this.organizationEnabled = registerOutput<bool?>('organizationEnabled');
    this.region = registerOutput<String>('region');
    this.retentionPeriod = registerOutput<int?>('retentionPeriod');
    this.suspend = registerOutput<String?>('suspend');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.terminationProtectionEnabled =
        registerOutput<bool?>('terminationProtectionEnabled');
  }
}
