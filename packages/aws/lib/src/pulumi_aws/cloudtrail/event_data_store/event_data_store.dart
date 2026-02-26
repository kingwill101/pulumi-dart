import 'package:pulumi/pulumi.dart';
import '../event_data_store_advanced_event_selector/event_data_store_advanced_event_selector.dart';
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
/// The most simple event data store configuration requires us to only set the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> attribute. The event data store will automatically capture all management events. To capture management events from all the regions, <span pulumi-lang-nodejs="`multiRegionEnabled`" pulumi-lang-dotnet="`MultiRegionEnabled`" pulumi-lang-go="`multiRegionEnabled`" pulumi-lang-python="`multi_region_enabled`" pulumi-lang-yaml="`multiRegionEnabled`" pulumi-lang-java="`multiRegionEnabled`">`multi_region_enabled`</span> must be <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
///
/// <!--Start PulumiCodeChooser -->
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
/// var example = new Aws.CloudTrail.EventDataStore("example", new()
/// {
/// Name = "example-event-data-store",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudtrail"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudtrail.NewEventDataStore(ctx, "example", &cloudtrail.EventDataStoreArgs{
/// Name: pulumi.String("example-event-data-store"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new EventDataStore("example", EventDataStoreArgs.builder()
/// .name("example-event-data-store")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:cloudtrail:EventDataStore
/// properties:
/// name: example-event-data-store
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Data Event Logging
///
/// CloudTrail can log [Data Events](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html) for certain services such as S3 bucket objects and Lambda function invocations. Additional information about data event configuration can be found in the following links:
///
/// - [CloudTrail API AdvancedFieldSelector documentation](https://docs.aws.amazon.com/awscloudtrail/latest/APIReference/API_AdvancedFieldSelector.html)
///
/// ### Log all DynamoDB PutEvent actions for a specific DynamoDB table
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const table = aws.dynamodb.getTable({
/// name: "not-important-dynamodb-table",
/// });
/// const example = new aws.cloudtrail.EventDataStore("example", {advancedEventSelectors: [{
/// name: "Log all DynamoDB PutEvent actions for a specific DynamoDB table",
/// fieldSelectors: [
/// {
/// field: "eventCategory",
/// equals: ["Data"],
/// },
/// {
/// field: "resources.type",
/// equals: ["AWS::DynamoDB::Table"],
/// },
/// {
/// field: "eventName",
/// equals: ["PutItem"],
/// },
/// {
/// field: "resources.ARN",
/// equals: [table.then(table => table.arn)],
/// },
/// ],
/// }]});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// table = aws.dynamodb.get_table(name="not-important-dynamodb-table")
/// example = aws.cloudtrail.EventDataStore("example", advanced_event_selectors=[{
/// "name": "Log all DynamoDB PutEvent actions for a specific DynamoDB table",
/// "field_selectors": [
/// {
/// "field": "eventCategory",
/// "equals": ["Data"],
/// },
/// {
/// "field": "resources.type",
/// "equals": ["AWS::DynamoDB::Table"],
/// },
/// {
/// "field": "eventName",
/// "equals": ["PutItem"],
/// },
/// {
/// "field": "resources.ARN",
/// "equals": [table.arn],
/// },
/// ],
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
/// var table = Aws.DynamoDB.GetTable.Invoke(new()
/// {
/// Name = "not-important-dynamodb-table",
/// });
///
/// var example = new Aws.CloudTrail.EventDataStore("example", new()
/// {
/// AdvancedEventSelectors = new[]
/// {
/// new Aws.CloudTrail.Inputs.EventDataStoreAdvancedEventSelectorArgs
/// {
/// Name = "Log all DynamoDB PutEvent actions for a specific DynamoDB table",
/// FieldSelectors = new[]
/// {
/// new Aws.CloudTrail.Inputs.EventDataStoreAdvancedEventSelectorFieldSelectorArgs
/// {
/// Field = "eventCategory",
/// Equals = new[]
/// {
/// "Data",
/// },
/// },
/// new Aws.CloudTrail.Inputs.EventDataStoreAdvancedEventSelectorFieldSelectorArgs
/// {
/// Field = "resources.type",
/// Equals = new[]
/// {
/// "AWS::DynamoDB::Table",
/// },
/// },
/// new Aws.CloudTrail.Inputs.EventDataStoreAdvancedEventSelectorFieldSelectorArgs
/// {
/// Field = "eventName",
/// Equals = new[]
/// {
/// "PutItem",
/// },
/// },
/// new Aws.CloudTrail.Inputs.EventDataStoreAdvancedEventSelectorFieldSelectorArgs
/// {
/// Field = "resources.ARN",
/// Equals = new[]
/// {
/// table.Apply(getTableResult => getTableResult.Arn),
/// },
/// },
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudtrail"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/dynamodb"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// table, err := dynamodb.LookupTable(ctx, &dynamodb.LookupTableArgs{
/// Name: "not-important-dynamodb-table",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = cloudtrail.NewEventDataStore(ctx, "example", &cloudtrail.EventDataStoreArgs{
/// AdvancedEventSelectors: cloudtrail.EventDataStoreAdvancedEventSelectorArray{
/// &cloudtrail.EventDataStoreAdvancedEventSelectorArgs{
/// Name: pulumi.String("Log all DynamoDB PutEvent actions for a specific DynamoDB table"),
/// FieldSelectors: cloudtrail.EventDataStoreAdvancedEventSelectorFieldSelectorArray{
/// &cloudtrail.EventDataStoreAdvancedEventSelectorFieldSelectorArgs{
/// Field: pulumi.String("eventCategory"),
/// Equals: pulumi.StringArray{
/// pulumi.String("Data"),
/// },
/// },
/// &cloudtrail.EventDataStoreAdvancedEventSelectorFieldSelectorArgs{
/// Field: pulumi.String("resources.type"),
/// Equals: pulumi.StringArray{
/// pulumi.String("AWS::DynamoDB::Table"),
/// },
/// },
/// &cloudtrail.EventDataStoreAdvancedEventSelectorFieldSelectorArgs{
/// Field: pulumi.String("eventName"),
/// Equals: pulumi.StringArray{
/// pulumi.String("PutItem"),
/// },
/// },
/// &cloudtrail.EventDataStoreAdvancedEventSelectorFieldSelectorArgs{
/// Field: pulumi.String("resources.ARN"),
/// Equals: pulumi.StringArray{
/// pulumi.String(table.Arn),
/// },
/// },
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var table = DynamodbFunctions.getTable(GetTableArgs.builder()
/// .name("not-important-dynamodb-table")
/// .build());
///
/// var example = new EventDataStore("example", EventDataStoreArgs.builder()
/// .advancedEventSelectors(EventDataStoreAdvancedEventSelectorArgs.builder()
/// .name("Log all DynamoDB PutEvent actions for a specific DynamoDB table")
/// .fieldSelectors(
/// EventDataStoreAdvancedEventSelectorFieldSelectorArgs.builder()
/// .field("eventCategory")
/// .equals("Data")
/// .build(),
/// EventDataStoreAdvancedEventSelectorFieldSelectorArgs.builder()
/// .field("resources.type")
/// .equals("AWS::DynamoDB::Table")
/// .build(),
/// EventDataStoreAdvancedEventSelectorFieldSelectorArgs.builder()
/// .field("eventName")
/// .equals("PutItem")
/// .build(),
/// EventDataStoreAdvancedEventSelectorFieldSelectorArgs.builder()
/// .field("resources.ARN")
/// .equals(table.arn())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:cloudtrail:EventDataStore
/// properties:
/// advancedEventSelectors:
/// - name: Log all DynamoDB PutEvent actions for a specific DynamoDB table
/// fieldSelectors:
/// - field: eventCategory
/// equals:
/// - Data
/// - field: resources.type
/// equals:
/// - AWS::DynamoDB::Table
/// - field: eventName
/// equals:
/// - PutItem
/// - field: resources.ARN
/// equals:
/// - ${table.arn}
/// variables:
/// table:
/// fn::invoke:
/// function: aws:dynamodb:getTable
/// arguments:
/// name: not-important-dynamodb-table
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> (String) Amazon Resource Name (ARN) of the CloudTrail event data store.
///
///
/// Using `pulumi import`, import event data stores using their <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:cloudtrail/eventDataStore:EventDataStore example arn:aws:cloudtrail:us-east-1:123456789123:eventdatastore/22333815-4414-412c-b155-dd254033gfhf
/// ```
class EventDataStore extends CustomResource {
  /// The advanced event selectors to use to select the events for the data store. For more information about how to use advanced event selectors, see [Log events by using advanced event selectors](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html#creating-data-event-selectors-advanced) in the CloudTrail User Guide.
  late final Output<List<EventDataStoreAdvancedEventSelector>>
      advancedEventSelectors;

  /// ARN of the event data store.
  late final Output<String> arn;

  /// The billing mode for the event data store. The valid values are `EXTENDABLE_RETENTION_PRICING` and `FIXED_RETENTION_PRICING`. Defaults to `EXTENDABLE_RETENTION_PRICING`.
  late final Output<String?> billingMode;

  /// Specifies the AWS KMS key ID to use to encrypt the events delivered by CloudTrail. The value can be an alias name prefixed by alias/, a fully specified ARN to an alias, a fully specified ARN to a key, or a globally unique identifier.
  late final Output<String?> kmsKeyId;

  /// Specifies whether the event data store includes events from all regions, or only from the region in which the event data store is created. Default: <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<bool?> multiRegionEnabled;

  /// The name of the event data store.
  late final Output<String> name;

  /// Specifies whether an event data store collects events logged for an organization in AWS Organizations. Default: <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> organizationEnabled;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The retention period of the event data store, in days. You can set a retention period of up to 2555 days, the equivalent of seven years. Default: <span pulumi-lang-nodejs="`2555`" pulumi-lang-dotnet="`2555`" pulumi-lang-go="`2555`" pulumi-lang-python="`2555`" pulumi-lang-yaml="`2555`" pulumi-lang-java="`2555`">`2555`</span>.
  late final Output<int?> retentionPeriod;

  /// Specifies whether to stop ingesting new events into the event data store. If set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, ingestion is suspended while maintaining the ability to query existing events. If set to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>, ingestion is active.
  late final Output<String?> suspend;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Specifies whether termination protection is enabled for the event data store. If termination protection is enabled, you cannot delete the event data store until termination protection is disabled. Default: <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<bool?> terminationProtectionEnabled;

  EventDataStore(
    String name, {
    EventDataStoreArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudtrail/eventDataStore:EventDataStore',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.advancedEventSelectors =
        Output.createUnknown<List<EventDataStoreAdvancedEventSelector>>();
    this.arn = Output.createUnknown<String>();
    this.billingMode = Output.createUnknown<String?>();
    this.kmsKeyId = Output.createUnknown<String?>();
    this.multiRegionEnabled = Output.createUnknown<bool?>();
    this.name = Output.createUnknown<String>();
    this.organizationEnabled = Output.createUnknown<bool?>();
    this.region = Output.createUnknown<String>();
    this.retentionPeriod = Output.createUnknown<int?>();
    this.suspend = Output.createUnknown<String?>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.terminationProtectionEnabled = Output.createUnknown<bool?>();
  }
}
