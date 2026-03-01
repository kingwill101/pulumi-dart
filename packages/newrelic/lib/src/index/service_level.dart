import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_level_args.dart';
import 'service_level_events.dart';
import 'service_level_objective.dart';

/// Use this resource to create, update, and delete New Relic Service Level Indicators and Objectives.
///
/// A New Relic User API key is required to provision this resource.  Set the `api_key`
/// attribute in the `provider` block or the `NEW_RELIC_API_KEY` environment
/// variable with your User API key.
///
/// Important:
/// - Only roles that provide [permissions](https://docs.newrelic.com/docs/accounts/accounts-billing/new-relic-one-user-management/new-relic-one-user-model-understand-user-structure/) to create events to metric rules can create SLI/SLOs.
/// - Only [Full users](https://docs.newrelic.com/docs/accounts/accounts-billing/new-relic-one-user-management/new-relic-one-user-model-understand-user-structure/#user-type) can view SLI/SLOs.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.ServiceLevel("foo", {
///     guid: "MXxBUE18QVBQTElDQVRJT058MQ",
///     name: "Latency",
///     description: "Proportion of requests that are served faster than a threshold.",
///     events: {
///         accountId: "12345678",
///         validEvents: {
///             from: "Transaction",
///             where: "appName = 'Example application' AND (transactionType='Web')",
///         },
///         goodEvents: {
///             from: "Transaction",
///             where: "appName = 'Example application' AND (transactionType= 'Web') AND duration < 0.1",
///         },
///     },
///     objective: {
///         target: 99,
///         timeWindow: {
///             rolling: {
///                 count: 7,
///                 unit: "DAY",
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.ServiceLevel("foo",
///     guid="MXxBUE18QVBQTElDQVRJT058MQ",
///     name="Latency",
///     description="Proportion of requests that are served faster than a threshold.",
///     events={
///         "account_id": "12345678",
///         "valid_events": {
///             "from_": "Transaction",
///             "where": "appName = 'Example application' AND (transactionType='Web')",
///         },
///         "good_events": {
///             "from_": "Transaction",
///             "where": "appName = 'Example application' AND (transactionType= 'Web') AND duration < 0.1",
///         },
///     },
///     objective={
///         "target": 99,
///         "time_window": {
///             "rolling": {
///                 "count": 7,
///                 "unit": "DAY",
///             },
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new NewRelic.ServiceLevel("foo", new()
///     {
///         Guid = "MXxBUE18QVBQTElDQVRJT058MQ",
///         Name = "Latency",
///         Description = "Proportion of requests that are served faster than a threshold.",
///         Events = new NewRelic.Inputs.ServiceLevelEventsArgs
///         {
///             AccountId = "12345678",
///             ValidEvents = new NewRelic.Inputs.ServiceLevelEventsValidEventsArgs
///             {
///                 From = "Transaction",
///                 Where = "appName = 'Example application' AND (transactionType='Web')",
///             },
///             GoodEvents = new NewRelic.Inputs.ServiceLevelEventsGoodEventsArgs
///             {
///                 From = "Transaction",
///                 Where = "appName = 'Example application' AND (transactionType= 'Web') AND duration < 0.1",
///             },
///         },
///         Objective = new NewRelic.Inputs.ServiceLevelObjectiveArgs
///         {
///             Target = 99,
///             TimeWindow = new NewRelic.Inputs.ServiceLevelObjectiveTimeWindowArgs
///             {
///                 Rolling = new NewRelic.Inputs.ServiceLevelObjectiveTimeWindowRollingArgs
///                 {
///                     Count = 7,
///                     Unit = "DAY",
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
/// 	"github.com/pulumi/pulumi-newrelic/sdk/v5/go/newrelic"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := newrelic.NewServiceLevel(ctx, "foo", &newrelic.ServiceLevelArgs{
/// 			Guid:        pulumi.String("MXxBUE18QVBQTElDQVRJT058MQ"),
/// 			Name:        pulumi.String("Latency"),
/// 			Description: pulumi.String("Proportion of requests that are served faster than a threshold."),
/// 			Events: &newrelic.ServiceLevelEventsArgs{
/// 				AccountId: pulumi.String("12345678"),
/// 				ValidEvents: &newrelic.ServiceLevelEventsValidEventsArgs{
/// 					From:  pulumi.String("Transaction"),
/// 					Where: pulumi.String("appName = 'Example application' AND (transactionType='Web')"),
/// 				},
/// 				GoodEvents: &newrelic.ServiceLevelEventsGoodEventsArgs{
/// 					From:  pulumi.String("Transaction"),
/// 					Where: pulumi.String("appName = 'Example application' AND (transactionType= 'Web') AND duration < 0.1"),
/// 				},
/// 			},
/// 			Objective: &newrelic.ServiceLevelObjectiveArgs{
/// 				Target: pulumi.Float64(99),
/// 				TimeWindow: &newrelic.ServiceLevelObjectiveTimeWindowArgs{
/// 					Rolling: &newrelic.ServiceLevelObjectiveTimeWindowRollingArgs{
/// 						Count: pulumi.Int(7),
/// 						Unit:  pulumi.String("DAY"),
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
/// import com.pulumi.newrelic.ServiceLevel;
/// import com.pulumi.newrelic.ServiceLevelArgs;
/// import com.pulumi.newrelic.inputs.ServiceLevelEventsArgs;
/// import com.pulumi.newrelic.inputs.ServiceLevelEventsValidEventsArgs;
/// import com.pulumi.newrelic.inputs.ServiceLevelEventsGoodEventsArgs;
/// import com.pulumi.newrelic.inputs.ServiceLevelObjectiveArgs;
/// import com.pulumi.newrelic.inputs.ServiceLevelObjectiveTimeWindowArgs;
/// import com.pulumi.newrelic.inputs.ServiceLevelObjectiveTimeWindowRollingArgs;
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
///         var foo = new ServiceLevel("foo", ServiceLevelArgs.builder()
///             .guid("MXxBUE18QVBQTElDQVRJT058MQ")
///             .name("Latency")
///             .description("Proportion of requests that are served faster than a threshold.")
///             .events(ServiceLevelEventsArgs.builder()
///                 .accountId("12345678")
///                 .validEvents(ServiceLevelEventsValidEventsArgs.builder()
///                     .from("Transaction")
///                     .where("appName = 'Example application' AND (transactionType='Web')")
///                     .build())
///                 .goodEvents(ServiceLevelEventsGoodEventsArgs.builder()
///                     .from("Transaction")
///                     .where("appName = 'Example application' AND (transactionType= 'Web') AND duration < 0.1")
///                     .build())
///                 .build())
///             .objective(ServiceLevelObjectiveArgs.builder()
///                 .target(99.0)
///                 .timeWindow(ServiceLevelObjectiveTimeWindowArgs.builder()
///                     .rolling(ServiceLevelObjectiveTimeWindowRollingArgs.builder()
///                         .count(7)
///                         .unit("DAY")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:ServiceLevel
///     properties:
///       guid: MXxBUE18QVBQTElDQVRJT058MQ
///       name: Latency
///       description: Proportion of requests that are served faster than a threshold.
///       events:
///         accountId: 1.2345678e+07
///         validEvents:
///           from: Transaction
///           where: appName = 'Example application' AND (transactionType='Web')
///         goodEvents:
///           from: Transaction
///           where: appName = 'Example application' AND (transactionType= 'Web') AND duration < 0.1
///       objective:
///         target: 99
///         timeWindow:
///           rolling:
///             count: 7
///             unit: DAY
/// ```
///
///
/// ## Additional Example
///
/// Service level with tags:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const mySyntheticMonitorServiceLevel = new newrelic.ServiceLevel("my_synthetic_monitor_service_level", {
///     guid: "MXxBUE18QVBQTElDQVRJT058MQ",
///     name: "My synthethic monitor - Success",
///     description: "Proportion of successful synthetic checks.",
///     events: {
///         accountId: "12345678",
///         validEvents: {
///             from: "SyntheticCheck",
///             where: "entityGuid = 'MXxBUE18QVBQTElDQVRJT058MQ'",
///         },
///         goodEvents: {
///             from: "SyntheticCheck",
///             where: "entityGuid = 'MXxBUE18QVBQTElDQVRJT058MQ' AND result='SUCCESS'",
///         },
///     },
///     objective: {
///         target: 99,
///         timeWindow: {
///             rolling: {
///                 count: 7,
///                 unit: "DAY",
///             },
///         },
///     },
/// });
/// const mySyntheticMonitorServiceLevelTags = new newrelic.EntityTags("my_synthetic_monitor_service_level_tags", {
///     guid: mySyntheticMonitorServiceLevel.sliGuid,
///     tags: [
///         {
///             key: "user_journey",
///             values: [
///                 "authentication",
///                 "sso",
///             ],
///         },
///         {
///             key: "owner",
///             values: ["identityTeam"],
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// my_synthetic_monitor_service_level = newrelic.ServiceLevel("my_synthetic_monitor_service_level",
///     guid="MXxBUE18QVBQTElDQVRJT058MQ",
///     name="My synthethic monitor - Success",
///     description="Proportion of successful synthetic checks.",
///     events={
///         "account_id": "12345678",
///         "valid_events": {
///             "from_": "SyntheticCheck",
///             "where": "entityGuid = 'MXxBUE18QVBQTElDQVRJT058MQ'",
///         },
///         "good_events": {
///             "from_": "SyntheticCheck",
///             "where": "entityGuid = 'MXxBUE18QVBQTElDQVRJT058MQ' AND result='SUCCESS'",
///         },
///     },
///     objective={
///         "target": 99,
///         "time_window": {
///             "rolling": {
///                 "count": 7,
///                 "unit": "DAY",
///             },
///         },
///     })
/// my_synthetic_monitor_service_level_tags = newrelic.EntityTags("my_synthetic_monitor_service_level_tags",
///     guid=my_synthetic_monitor_service_level.sli_guid,
///     tags=[
///         {
///             "key": "user_journey",
///             "values": [
///                 "authentication",
///                 "sso",
///             ],
///         },
///         {
///             "key": "owner",
///             "values": ["identityTeam"],
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var mySyntheticMonitorServiceLevel = new NewRelic.ServiceLevel("my_synthetic_monitor_service_level", new()
///     {
///         Guid = "MXxBUE18QVBQTElDQVRJT058MQ",
///         Name = "My synthethic monitor - Success",
///         Description = "Proportion of successful synthetic checks.",
///         Events = new NewRelic.Inputs.ServiceLevelEventsArgs
///         {
///             AccountId = "12345678",
///             ValidEvents = new NewRelic.Inputs.ServiceLevelEventsValidEventsArgs
///             {
///                 From = "SyntheticCheck",
///                 Where = "entityGuid = 'MXxBUE18QVBQTElDQVRJT058MQ'",
///             },
///             GoodEvents = new NewRelic.Inputs.ServiceLevelEventsGoodEventsArgs
///             {
///                 From = "SyntheticCheck",
///                 Where = "entityGuid = 'MXxBUE18QVBQTElDQVRJT058MQ' AND result='SUCCESS'",
///             },
///         },
///         Objective = new NewRelic.Inputs.ServiceLevelObjectiveArgs
///         {
///             Target = 99,
///             TimeWindow = new NewRelic.Inputs.ServiceLevelObjectiveTimeWindowArgs
///             {
///                 Rolling = new NewRelic.Inputs.ServiceLevelObjectiveTimeWindowRollingArgs
///                 {
///                     Count = 7,
///                     Unit = "DAY",
///                 },
///             },
///         },
///     });
///
///     var mySyntheticMonitorServiceLevelTags = new NewRelic.EntityTags("my_synthetic_monitor_service_level_tags", new()
///     {
///         Guid = mySyntheticMonitorServiceLevel.SliGuid,
///         Tags = new[]
///         {
///             new NewRelic.Inputs.EntityTagsTagArgs
///             {
///                 Key = "user_journey",
///                 Values = new[]
///                 {
///                     "authentication",
///                     "sso",
///                 },
///             },
///             new NewRelic.Inputs.EntityTagsTagArgs
///             {
///                 Key = "owner",
///                 Values = new[]
///                 {
///                     "identityTeam",
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
/// 	"github.com/pulumi/pulumi-newrelic/sdk/v5/go/newrelic"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		mySyntheticMonitorServiceLevel, err := newrelic.NewServiceLevel(ctx, "my_synthetic_monitor_service_level", &newrelic.ServiceLevelArgs{
/// 			Guid:        pulumi.String("MXxBUE18QVBQTElDQVRJT058MQ"),
/// 			Name:        pulumi.String("My synthethic monitor - Success"),
/// 			Description: pulumi.String("Proportion of successful synthetic checks."),
/// 			Events: &newrelic.ServiceLevelEventsArgs{
/// 				AccountId: pulumi.String("12345678"),
/// 				ValidEvents: &newrelic.ServiceLevelEventsValidEventsArgs{
/// 					From:  pulumi.String("SyntheticCheck"),
/// 					Where: pulumi.String("entityGuid = 'MXxBUE18QVBQTElDQVRJT058MQ'"),
/// 				},
/// 				GoodEvents: &newrelic.ServiceLevelEventsGoodEventsArgs{
/// 					From:  pulumi.String("SyntheticCheck"),
/// 					Where: pulumi.String("entityGuid = 'MXxBUE18QVBQTElDQVRJT058MQ' AND result='SUCCESS'"),
/// 				},
/// 			},
/// 			Objective: &newrelic.ServiceLevelObjectiveArgs{
/// 				Target: pulumi.Float64(99),
/// 				TimeWindow: &newrelic.ServiceLevelObjectiveTimeWindowArgs{
/// 					Rolling: &newrelic.ServiceLevelObjectiveTimeWindowRollingArgs{
/// 						Count: pulumi.Int(7),
/// 						Unit:  pulumi.String("DAY"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = newrelic.NewEntityTags(ctx, "my_synthetic_monitor_service_level_tags", &newrelic.EntityTagsArgs{
/// 			Guid: mySyntheticMonitorServiceLevel.SliGuid,
/// 			Tags: newrelic.EntityTagsTagArray{
/// 				&newrelic.EntityTagsTagArgs{
/// 					Key: pulumi.String("user_journey"),
/// 					Values: pulumi.StringArray{
/// 						pulumi.String("authentication"),
/// 						pulumi.String("sso"),
/// 					},
/// 				},
/// 				&newrelic.EntityTagsTagArgs{
/// 					Key: pulumi.String("owner"),
/// 					Values: pulumi.StringArray{
/// 						pulumi.String("identityTeam"),
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
/// import com.pulumi.newrelic.ServiceLevel;
/// import com.pulumi.newrelic.ServiceLevelArgs;
/// import com.pulumi.newrelic.inputs.ServiceLevelEventsArgs;
/// import com.pulumi.newrelic.inputs.ServiceLevelEventsValidEventsArgs;
/// import com.pulumi.newrelic.inputs.ServiceLevelEventsGoodEventsArgs;
/// import com.pulumi.newrelic.inputs.ServiceLevelObjectiveArgs;
/// import com.pulumi.newrelic.inputs.ServiceLevelObjectiveTimeWindowArgs;
/// import com.pulumi.newrelic.inputs.ServiceLevelObjectiveTimeWindowRollingArgs;
/// import com.pulumi.newrelic.EntityTags;
/// import com.pulumi.newrelic.EntityTagsArgs;
/// import com.pulumi.newrelic.inputs.EntityTagsTagArgs;
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
///         var mySyntheticMonitorServiceLevel = new ServiceLevel("mySyntheticMonitorServiceLevel", ServiceLevelArgs.builder()
///             .guid("MXxBUE18QVBQTElDQVRJT058MQ")
///             .name("My synthethic monitor - Success")
///             .description("Proportion of successful synthetic checks.")
///             .events(ServiceLevelEventsArgs.builder()
///                 .accountId("12345678")
///                 .validEvents(ServiceLevelEventsValidEventsArgs.builder()
///                     .from("SyntheticCheck")
///                     .where("entityGuid = 'MXxBUE18QVBQTElDQVRJT058MQ'")
///                     .build())
///                 .goodEvents(ServiceLevelEventsGoodEventsArgs.builder()
///                     .from("SyntheticCheck")
///                     .where("entityGuid = 'MXxBUE18QVBQTElDQVRJT058MQ' AND result='SUCCESS'")
///                     .build())
///                 .build())
///             .objective(ServiceLevelObjectiveArgs.builder()
///                 .target(99.0)
///                 .timeWindow(ServiceLevelObjectiveTimeWindowArgs.builder()
///                     .rolling(ServiceLevelObjectiveTimeWindowRollingArgs.builder()
///                         .count(7)
///                         .unit("DAY")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///         var mySyntheticMonitorServiceLevelTags = new EntityTags("mySyntheticMonitorServiceLevelTags", EntityTagsArgs.builder()
///             .guid(mySyntheticMonitorServiceLevel.sliGuid())
///             .tags(
///                 EntityTagsTagArgs.builder()
///                     .key("user_journey")
///                     .values(
///                         "authentication",
///                         "sso")
///                     .build(),
///                 EntityTagsTagArgs.builder()
///                     .key("owner")
///                     .values("identityTeam")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   mySyntheticMonitorServiceLevel:
///     type: newrelic:ServiceLevel
///     name: my_synthetic_monitor_service_level
///     properties:
///       guid: MXxBUE18QVBQTElDQVRJT058MQ
///       name: My synthethic monitor - Success
///       description: Proportion of successful synthetic checks.
///       events:
///         accountId: 1.2345678e+07
///         validEvents:
///           from: SyntheticCheck
///           where: entityGuid = 'MXxBUE18QVBQTElDQVRJT058MQ'
///         goodEvents:
///           from: SyntheticCheck
///           where: entityGuid = 'MXxBUE18QVBQTElDQVRJT058MQ' AND result='SUCCESS'
///       objective:
///         target: 99
///         timeWindow:
///           rolling:
///             count: 7
///             unit: DAY
///   mySyntheticMonitorServiceLevelTags:
///     type: newrelic:EntityTags
///     name: my_synthetic_monitor_service_level_tags
///     properties:
///       guid: ${mySyntheticMonitorServiceLevel.sliGuid}
///       tags:
///         - key: user_journey
///           values:
///             - authentication
///             - sso
///         - key: owner
///           values:
///             - identityTeam
/// ```
///
///
///
/// Using `select` for events
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const mySyntheticMonitorDurationServiceLevel = new newrelic.ServiceLevel("my_synthetic_monitor_duration_service_level", {
///     guid: "MXxBUE18QVBQTElDQVRJT058MQ",
///     name: "Duration distribution is under 7",
///     description: "Monitor created to test concurrent request from terraform",
///     events: {
///         accountId: "313870",
///         validEvents: {
///             from: "Metric",
///             select: {
///                 attribute: "`query.wallClockTime.negative.distribution`",
///                 "function": "GET_FIELD",
///             },
///             where: "metricName = 'query.wallClockTime.negative.distribution'",
///         },
///         goodEvents: {
///             from: "Metric",
///             select: {
///                 attribute: "`query.wallClockTime.negative.distribution`",
///                 "function": "GET_CDF_COUNT",
///                 threshold: 7,
///             },
///             where: "metricName = 'query.wallClockTime.negative.distribution'",
///         },
///     },
///     objective: {
///         target: 49,
///         timeWindow: {
///             rolling: {
///                 count: 7,
///                 unit: "DAY",
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// my_synthetic_monitor_duration_service_level = newrelic.ServiceLevel("my_synthetic_monitor_duration_service_level",
///     guid="MXxBUE18QVBQTElDQVRJT058MQ",
///     name="Duration distribution is under 7",
///     description="Monitor created to test concurrent request from terraform",
///     events={
///         "account_id": "313870",
///         "valid_events": {
///             "from_": "Metric",
///             "select": {
///                 "attribute": "`query.wallClockTime.negative.distribution`",
///                 "function": "GET_FIELD",
///             },
///             "where": "metricName = 'query.wallClockTime.negative.distribution'",
///         },
///         "good_events": {
///             "from_": "Metric",
///             "select": {
///                 "attribute": "`query.wallClockTime.negative.distribution`",
///                 "function": "GET_CDF_COUNT",
///                 "threshold": 7,
///             },
///             "where": "metricName = 'query.wallClockTime.negative.distribution'",
///         },
///     },
///     objective={
///         "target": 49,
///         "time_window": {
///             "rolling": {
///                 "count": 7,
///                 "unit": "DAY",
///             },
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var mySyntheticMonitorDurationServiceLevel = new NewRelic.ServiceLevel("my_synthetic_monitor_duration_service_level", new()
///     {
///         Guid = "MXxBUE18QVBQTElDQVRJT058MQ",
///         Name = "Duration distribution is under 7",
///         Description = "Monitor created to test concurrent request from terraform",
///         Events = new NewRelic.Inputs.ServiceLevelEventsArgs
///         {
///             AccountId = "313870",
///             ValidEvents = new NewRelic.Inputs.ServiceLevelEventsValidEventsArgs
///             {
///                 From = "Metric",
///                 Select = new NewRelic.Inputs.ServiceLevelEventsValidEventsSelectArgs
///                 {
///                     Attribute = "`query.wallClockTime.negative.distribution`",
///                     Function = "GET_FIELD",
///                 },
///                 Where = "metricName = 'query.wallClockTime.negative.distribution'",
///             },
///             GoodEvents = new NewRelic.Inputs.ServiceLevelEventsGoodEventsArgs
///             {
///                 From = "Metric",
///                 Select = new NewRelic.Inputs.ServiceLevelEventsGoodEventsSelectArgs
///                 {
///                     Attribute = "`query.wallClockTime.negative.distribution`",
///                     Function = "GET_CDF_COUNT",
///                     Threshold = 7,
///                 },
///                 Where = "metricName = 'query.wallClockTime.negative.distribution'",
///             },
///         },
///         Objective = new NewRelic.Inputs.ServiceLevelObjectiveArgs
///         {
///             Target = 49,
///             TimeWindow = new NewRelic.Inputs.ServiceLevelObjectiveTimeWindowArgs
///             {
///                 Rolling = new NewRelic.Inputs.ServiceLevelObjectiveTimeWindowRollingArgs
///                 {
///                     Count = 7,
///                     Unit = "DAY",
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
/// 	"github.com/pulumi/pulumi-newrelic/sdk/v5/go/newrelic"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := newrelic.NewServiceLevel(ctx, "my_synthetic_monitor_duration_service_level", &newrelic.ServiceLevelArgs{
/// 			Guid:        pulumi.String("MXxBUE18QVBQTElDQVRJT058MQ"),
/// 			Name:        pulumi.String("Duration distribution is under 7"),
/// 			Description: pulumi.String("Monitor created to test concurrent request from terraform"),
/// 			Events: &newrelic.ServiceLevelEventsArgs{
/// 				AccountId: pulumi.String("313870"),
/// 				ValidEvents: &newrelic.ServiceLevelEventsValidEventsArgs{
/// 					From: pulumi.String("Metric"),
/// 					Select: &newrelic.ServiceLevelEventsValidEventsSelectArgs{
/// 						Attribute: pulumi.String("`query.wallClockTime.negative.distribution`"),
/// 						Function:  pulumi.String("GET_FIELD"),
/// 					},
/// 					Where: pulumi.String("metricName = 'query.wallClockTime.negative.distribution'"),
/// 				},
/// 				GoodEvents: &newrelic.ServiceLevelEventsGoodEventsArgs{
/// 					From: pulumi.String("Metric"),
/// 					Select: &newrelic.ServiceLevelEventsGoodEventsSelectArgs{
/// 						Attribute: pulumi.String("`query.wallClockTime.negative.distribution`"),
/// 						Function:  pulumi.String("GET_CDF_COUNT"),
/// 						Threshold: pulumi.Float64(7),
/// 					},
/// 					Where: pulumi.String("metricName = 'query.wallClockTime.negative.distribution'"),
/// 				},
/// 			},
/// 			Objective: &newrelic.ServiceLevelObjectiveArgs{
/// 				Target: pulumi.Float64(49),
/// 				TimeWindow: &newrelic.ServiceLevelObjectiveTimeWindowArgs{
/// 					Rolling: &newrelic.ServiceLevelObjectiveTimeWindowRollingArgs{
/// 						Count: pulumi.Int(7),
/// 						Unit:  pulumi.String("DAY"),
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
/// import com.pulumi.newrelic.ServiceLevel;
/// import com.pulumi.newrelic.ServiceLevelArgs;
/// import com.pulumi.newrelic.inputs.ServiceLevelEventsArgs;
/// import com.pulumi.newrelic.inputs.ServiceLevelEventsValidEventsArgs;
/// import com.pulumi.newrelic.inputs.ServiceLevelEventsValidEventsSelectArgs;
/// import com.pulumi.newrelic.inputs.ServiceLevelEventsGoodEventsArgs;
/// import com.pulumi.newrelic.inputs.ServiceLevelEventsGoodEventsSelectArgs;
/// import com.pulumi.newrelic.inputs.ServiceLevelObjectiveArgs;
/// import com.pulumi.newrelic.inputs.ServiceLevelObjectiveTimeWindowArgs;
/// import com.pulumi.newrelic.inputs.ServiceLevelObjectiveTimeWindowRollingArgs;
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
///         var mySyntheticMonitorDurationServiceLevel = new ServiceLevel("mySyntheticMonitorDurationServiceLevel", ServiceLevelArgs.builder()
///             .guid("MXxBUE18QVBQTElDQVRJT058MQ")
///             .name("Duration distribution is under 7")
///             .description("Monitor created to test concurrent request from terraform")
///             .events(ServiceLevelEventsArgs.builder()
///                 .accountId("313870")
///                 .validEvents(ServiceLevelEventsValidEventsArgs.builder()
///                     .from("Metric")
///                     .select(ServiceLevelEventsValidEventsSelectArgs.builder()
///                         .attribute("`query.wallClockTime.negative.distribution`")
///                         .function("GET_FIELD")
///                         .build())
///                     .where("metricName = 'query.wallClockTime.negative.distribution'")
///                     .build())
///                 .goodEvents(ServiceLevelEventsGoodEventsArgs.builder()
///                     .from("Metric")
///                     .select(ServiceLevelEventsGoodEventsSelectArgs.builder()
///                         .attribute("`query.wallClockTime.negative.distribution`")
///                         .function("GET_CDF_COUNT")
///                         .threshold(7.0)
///                         .build())
///                     .where("metricName = 'query.wallClockTime.negative.distribution'")
///                     .build())
///                 .build())
///             .objective(ServiceLevelObjectiveArgs.builder()
///                 .target(49.0)
///                 .timeWindow(ServiceLevelObjectiveTimeWindowArgs.builder()
///                     .rolling(ServiceLevelObjectiveTimeWindowRollingArgs.builder()
///                         .count(7)
///                         .unit("DAY")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   mySyntheticMonitorDurationServiceLevel:
///     type: newrelic:ServiceLevel
///     name: my_synthetic_monitor_duration_service_level
///     properties:
///       guid: MXxBUE18QVBQTElDQVRJT058MQ
///       name: Duration distribution is under 7
///       description: Monitor created to test concurrent request from terraform
///       events:
///         accountId: 313870
///         validEvents:
///           from: Metric
///           select:
///             attribute: '`query.wallClockTime.negative.distribution`'
///             function: GET_FIELD
///           where: metricName = 'query.wallClockTime.negative.distribution'
///         goodEvents:
///           from: Metric
///           select:
///             attribute: '`query.wallClockTime.negative.distribution`'
///             function: GET_CDF_COUNT
///             threshold: 7
///           where: metricName = 'query.wallClockTime.negative.distribution'
///       objective:
///         target: 49
///         timeWindow:
///           rolling:
///             count: 7
///             unit: DAY
/// ```
///
///
///
/// For up-to-date documentation about the tagging resource, please check newrelic.EntityTags
///
///
/// ## Import
///
/// New Relic Service Levels can be imported using a concatenated string of the format
/// `<account_id>:<sli_id>:<guid>`, where the `guid` is the entity the SLI relates to.
///
/// Example:
///
/// ```bash
/// $ terraform import newrelic_service_level.foo 12345678:4321:MXxBUE18QVBQTElDQVRJT058MQ
/// ```
class ServiceLevel extends pulumi.CustomResource {
  /// The description of the SLI.
  late final pulumi.Output<String?> description;
  /// The events that define the NRDB data for the SLI/SLO calculations.
  /// See Events below for details.
  late final pulumi.Output<ServiceLevelEvents> events;
  /// The GUID of the entity (e.g, APM Service, Browser application, Workload, etc.) that you want to relate this SLI to. Note that changing the GUID will force a new resource.
  late final pulumi.Output<String> guid;
  /// A short name for the SLI that will help anyone understand what it is about.
  late final pulumi.Output<String> name;
  /// The objective of the SLI, only one can be defined.
  /// See Objective below for details.
  late final pulumi.Output<ServiceLevelObjective> objective;
  /// The unique entity identifier of the Service Level Indicator in New Relic.
  late final pulumi.Output<String> sliGuid;
  /// The unique entity identifier of the Service Level Indicator.
  late final pulumi.Output<String> sliId;

  /// Creates a new [ServiceLevel].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceLevel]. {@macro pulumi_index_service_level_service_level_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceLevel(
    String name, {
    ServiceLevelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'newrelic:index/serviceLevel:ServiceLevel',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.events = registerOutput<ServiceLevelEvents>('events');
    this.guid = registerOutput<String>('guid');
    this.name = registerOutput<String>('name');
    this.objective = registerOutput<ServiceLevelObjective>('objective');
    this.sliGuid = registerOutput<String>('sliGuid');
    this.sliId = registerOutput<String>('sliId');
  }
}
