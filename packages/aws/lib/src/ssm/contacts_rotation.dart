import 'package:pulumi/pulumi.dart' as pulumi;
import 'contacts_rotation_args.dart';
import 'contacts_rotation_recurrence.dart';

/// Provides a Terraform resource for managing a Contacts Rotation in AWS Systems Manager Incident Manager.
///
/// > **NOTE:** A rotation implicitly depends on a replication set. If you configured your replication set in Terraform, we recommend you add it to the `depends_on` argument for the Terraform Contact Resource.
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
/// const example = new aws.ssm.ContactsRotation("example", {
///     contactIds: [exampleAwsSsmcontactsContact.arn],
///     name: "rotation",
///     recurrence: {
///         numberOfOnCalls: 1,
///         recurrenceMultiplier: 1,
///         dailySettings: [{
///             hourOfDay: 9,
///             minuteOfHour: 0,
///         }],
///     },
///     timeZoneId: "Australia/Sydney",
/// }, {
///     dependsOn: [exampleAwsSsmincidentsReplicationSet],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssm.ContactsRotation("example",
///     contact_ids=[example_aws_ssmcontacts_contact["arn"]],
///     name="rotation",
///     recurrence={
///         "number_of_on_calls": 1,
///         "recurrence_multiplier": 1,
///         "daily_settings": [{
///             "hour_of_day": 9,
///             "minute_of_hour": 0,
///         }],
///     },
///     time_zone_id="Australia/Sydney",
///     opts = pulumi.ResourceOptions(depends_on=[example_aws_ssmincidents_replication_set]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ssm.ContactsRotation("example", new()
///     {
///         ContactIds = new[]
///         {
///             exampleAwsSsmcontactsContact.Arn,
///         },
///         Name = "rotation",
///         Recurrence = new Aws.Ssm.Inputs.ContactsRotationRecurrenceArgs
///         {
///             NumberOfOnCalls = 1,
///             RecurrenceMultiplier = 1,
///             DailySettings = new[]
///             {
///                 new Aws.Ssm.Inputs.ContactsRotationRecurrenceDailySettingArgs
///                 {
///                     HourOfDay = 9,
///                     MinuteOfHour = 0,
///                 },
///             },
///         },
///         TimeZoneId = "Australia/Sydney",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleAwsSsmincidentsReplicationSet,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ssm.NewContactsRotation(ctx, "example", &ssm.ContactsRotationArgs{
/// 			ContactIds: pulumi.StringArray{
/// 				exampleAwsSsmcontactsContact.Arn,
/// 			},
/// 			Name: pulumi.String("rotation"),
/// 			Recurrence: &ssm.ContactsRotationRecurrenceArgs{
/// 				NumberOfOnCalls:      pulumi.Int(1),
/// 				RecurrenceMultiplier: pulumi.Int(1),
/// 				DailySettings: ssm.ContactsRotationRecurrenceDailySettingArray{
/// 					&ssm.ContactsRotationRecurrenceDailySettingArgs{
/// 						HourOfDay:    pulumi.Int(9),
/// 						MinuteOfHour: pulumi.Int(0),
/// 					},
/// 				},
/// 			},
/// 			TimeZoneId: pulumi.String("Australia/Sydney"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleAwsSsmincidentsReplicationSet,
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
/// import com.pulumi.aws.ssm.ContactsRotation;
/// import com.pulumi.aws.ssm.ContactsRotationArgs;
/// import com.pulumi.aws.ssm.inputs.ContactsRotationRecurrenceArgs;
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
///         var example = new ContactsRotation("example", ContactsRotationArgs.builder()
///             .contactIds(exampleAwsSsmcontactsContact.arn())
///             .name("rotation")
///             .recurrence(ContactsRotationRecurrenceArgs.builder()
///                 .numberOfOnCalls(1)
///                 .recurrenceMultiplier(1)
///                 .dailySettings(ContactsRotationRecurrenceDailySettingArgs.builder()
///                     .hourOfDay(9)
///                     .minuteOfHour(0)
///                     .build())
///                 .build())
///             .timeZoneId("Australia/Sydney")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleAwsSsmincidentsReplicationSet)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ssm:ContactsRotation
///     properties:
///       contactIds:
///         - ${exampleAwsSsmcontactsContact.arn}
///       name: rotation
///       recurrence:
///         numberOfOnCalls: 1
///         recurrenceMultiplier: 1
///         dailySettings:
///           - hourOfDay: 9
///             minuteOfHour: 0
///       timeZoneId: Australia/Sydney
///     options:
///       dependsOn:
///         - ${exampleAwsSsmincidentsReplicationSet}
/// ```
///
///
/// ### Usage with Weekly Settings and Shift Coverages Fields
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ssm.ContactsRotation("example", {
///     contactIds: [exampleAwsSsmcontactsContact.arn],
///     name: "rotation",
///     recurrence: {
///         numberOfOnCalls: 1,
///         recurrenceMultiplier: 1,
///         weeklySettings: [
///             {
///                 dayOfWeek: "WED",
///                 handOffTime: {
///                     hourOfDay: 4,
///                     minuteOfHour: 25,
///                 },
///             },
///             {
///                 dayOfWeek: "FRI",
///                 handOffTime: {
///                     hourOfDay: 15,
///                     minuteOfHour: 57,
///                 },
///             },
///         ],
///         shiftCoverages: [{
///             mapBlockKey: "MON",
///             coverageTimes: [{
///                 start: {
///                     hourOfDay: 1,
///                     minuteOfHour: 0,
///                 },
///                 end: {
///                     hourOfDay: 23,
///                     minuteOfHour: 0,
///                 },
///             }],
///         }],
///     },
///     startTime: "2023-07-20T02:21:49+00:00",
///     timeZoneId: "Australia/Sydney",
///     tags: {
///         key1: "tag1",
///         key2: "tag2",
///     },
/// }, {
///     dependsOn: [exampleAwsSsmincidentsReplicationSet],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssm.ContactsRotation("example",
///     contact_ids=[example_aws_ssmcontacts_contact["arn"]],
///     name="rotation",
///     recurrence={
///         "number_of_on_calls": 1,
///         "recurrence_multiplier": 1,
///         "weekly_settings": [
///             {
///                 "day_of_week": "WED",
///                 "hand_off_time": {
///                     "hour_of_day": 4,
///                     "minute_of_hour": 25,
///                 },
///             },
///             {
///                 "day_of_week": "FRI",
///                 "hand_off_time": {
///                     "hour_of_day": 15,
///                     "minute_of_hour": 57,
///                 },
///             },
///         ],
///         "shift_coverages": [{
///             "map_block_key": "MON",
///             "coverage_times": [{
///                 "start": {
///                     "hour_of_day": 1,
///                     "minute_of_hour": 0,
///                 },
///                 "end": {
///                     "hour_of_day": 23,
///                     "minute_of_hour": 0,
///                 },
///             }],
///         }],
///     },
///     start_time="2023-07-20T02:21:49+00:00",
///     time_zone_id="Australia/Sydney",
///     tags={
///         "key1": "tag1",
///         "key2": "tag2",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[example_aws_ssmincidents_replication_set]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ssm.ContactsRotation("example", new()
///     {
///         ContactIds = new[]
///         {
///             exampleAwsSsmcontactsContact.Arn,
///         },
///         Name = "rotation",
///         Recurrence = new Aws.Ssm.Inputs.ContactsRotationRecurrenceArgs
///         {
///             NumberOfOnCalls = 1,
///             RecurrenceMultiplier = 1,
///             WeeklySettings = new[]
///             {
///                 new Aws.Ssm.Inputs.ContactsRotationRecurrenceWeeklySettingArgs
///                 {
///                     DayOfWeek = "WED",
///                     HandOffTime = new Aws.Ssm.Inputs.ContactsRotationRecurrenceWeeklySettingHandOffTimeArgs
///                     {
///                         HourOfDay = 4,
///                         MinuteOfHour = 25,
///                     },
///                 },
///                 new Aws.Ssm.Inputs.ContactsRotationRecurrenceWeeklySettingArgs
///                 {
///                     DayOfWeek = "FRI",
///                     HandOffTime = new Aws.Ssm.Inputs.ContactsRotationRecurrenceWeeklySettingHandOffTimeArgs
///                     {
///                         HourOfDay = 15,
///                         MinuteOfHour = 57,
///                     },
///                 },
///             },
///             ShiftCoverages = new[]
///             {
///                 new Aws.Ssm.Inputs.ContactsRotationRecurrenceShiftCoverageArgs
///                 {
///                     MapBlockKey = "MON",
///                     CoverageTimes = new[]
///                     {
///                         new Aws.Ssm.Inputs.ContactsRotationRecurrenceShiftCoverageCoverageTimeArgs
///                         {
///                             Start = new Aws.Ssm.Inputs.ContactsRotationRecurrenceShiftCoverageCoverageTimeStartArgs
///                             {
///                                 HourOfDay = 1,
///                                 MinuteOfHour = 0,
///                             },
///                             End = new Aws.Ssm.Inputs.ContactsRotationRecurrenceShiftCoverageCoverageTimeEndArgs
///                             {
///                                 HourOfDay = 23,
///                                 MinuteOfHour = 0,
///                             },
///                         },
///                     },
///                 },
///             },
///         },
///         StartTime = "2023-07-20T02:21:49+00:00",
///         TimeZoneId = "Australia/Sydney",
///         Tags =
///         {
///             { "key1", "tag1" },
///             { "key2", "tag2" },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleAwsSsmincidentsReplicationSet,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ssm.NewContactsRotation(ctx, "example", &ssm.ContactsRotationArgs{
/// 			ContactIds: pulumi.StringArray{
/// 				exampleAwsSsmcontactsContact.Arn,
/// 			},
/// 			Name: pulumi.String("rotation"),
/// 			Recurrence: &ssm.ContactsRotationRecurrenceArgs{
/// 				NumberOfOnCalls:      pulumi.Int(1),
/// 				RecurrenceMultiplier: pulumi.Int(1),
/// 				WeeklySettings: ssm.ContactsRotationRecurrenceWeeklySettingArray{
/// 					&ssm.ContactsRotationRecurrenceWeeklySettingArgs{
/// 						DayOfWeek: pulumi.String("WED"),
/// 						HandOffTime: &ssm.ContactsRotationRecurrenceWeeklySettingHandOffTimeArgs{
/// 							HourOfDay:    pulumi.Int(4),
/// 							MinuteOfHour: pulumi.Int(25),
/// 						},
/// 					},
/// 					&ssm.ContactsRotationRecurrenceWeeklySettingArgs{
/// 						DayOfWeek: pulumi.String("FRI"),
/// 						HandOffTime: &ssm.ContactsRotationRecurrenceWeeklySettingHandOffTimeArgs{
/// 							HourOfDay:    pulumi.Int(15),
/// 							MinuteOfHour: pulumi.Int(57),
/// 						},
/// 					},
/// 				},
/// 				ShiftCoverages: ssm.ContactsRotationRecurrenceShiftCoverageArray{
/// 					&ssm.ContactsRotationRecurrenceShiftCoverageArgs{
/// 						MapBlockKey: pulumi.String("MON"),
/// 						CoverageTimes: ssm.ContactsRotationRecurrenceShiftCoverageCoverageTimeArray{
/// 							&ssm.ContactsRotationRecurrenceShiftCoverageCoverageTimeArgs{
/// 								Start: &ssm.ContactsRotationRecurrenceShiftCoverageCoverageTimeStartArgs{
/// 									HourOfDay:    pulumi.Int(1),
/// 									MinuteOfHour: pulumi.Int(0),
/// 								},
/// 								End: &ssm.ContactsRotationRecurrenceShiftCoverageCoverageTimeEndArgs{
/// 									HourOfDay:    pulumi.Int(23),
/// 									MinuteOfHour: pulumi.Int(0),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			StartTime:  pulumi.String("2023-07-20T02:21:49+00:00"),
/// 			TimeZoneId: pulumi.String("Australia/Sydney"),
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("tag1"),
/// 				"key2": pulumi.String("tag2"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleAwsSsmincidentsReplicationSet,
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
/// import com.pulumi.aws.ssm.ContactsRotation;
/// import com.pulumi.aws.ssm.ContactsRotationArgs;
/// import com.pulumi.aws.ssm.inputs.ContactsRotationRecurrenceArgs;
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
///         var example = new ContactsRotation("example", ContactsRotationArgs.builder()
///             .contactIds(exampleAwsSsmcontactsContact.arn())
///             .name("rotation")
///             .recurrence(ContactsRotationRecurrenceArgs.builder()
///                 .numberOfOnCalls(1)
///                 .recurrenceMultiplier(1)
///                 .weeklySettings(
///                     ContactsRotationRecurrenceWeeklySettingArgs.builder()
///                         .dayOfWeek("WED")
///                         .handOffTime(ContactsRotationRecurrenceWeeklySettingHandOffTimeArgs.builder()
///                             .hourOfDay(4)
///                             .minuteOfHour(25)
///                             .build())
///                         .build(),
///                     ContactsRotationRecurrenceWeeklySettingArgs.builder()
///                         .dayOfWeek("FRI")
///                         .handOffTime(ContactsRotationRecurrenceWeeklySettingHandOffTimeArgs.builder()
///                             .hourOfDay(15)
///                             .minuteOfHour(57)
///                             .build())
///                         .build())
///                 .shiftCoverages(ContactsRotationRecurrenceShiftCoverageArgs.builder()
///                     .mapBlockKey("MON")
///                     .coverageTimes(ContactsRotationRecurrenceShiftCoverageCoverageTimeArgs.builder()
///                         .start(ContactsRotationRecurrenceShiftCoverageCoverageTimeStartArgs.builder()
///                             .hourOfDay(1)
///                             .minuteOfHour(0)
///                             .build())
///                         .end(ContactsRotationRecurrenceShiftCoverageCoverageTimeEndArgs.builder()
///                             .hourOfDay(23)
///                             .minuteOfHour(0)
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .startTime("2023-07-20T02:21:49+00:00")
///             .timeZoneId("Australia/Sydney")
///             .tags(Map.ofEntries(
///                 Map.entry("key1", "tag1"),
///                 Map.entry("key2", "tag2")
///             ))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleAwsSsmincidentsReplicationSet)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ssm:ContactsRotation
///     properties:
///       contactIds:
///         - ${exampleAwsSsmcontactsContact.arn}
///       name: rotation
///       recurrence:
///         numberOfOnCalls: 1
///         recurrenceMultiplier: 1
///         weeklySettings:
///           - dayOfWeek: WED
///             handOffTime:
///               hourOfDay: 4
///               minuteOfHour: 25
///           - dayOfWeek: FRI
///             handOffTime:
///               hourOfDay: 15
///               minuteOfHour: 57
///         shiftCoverages:
///           - mapBlockKey: MON
///             coverageTimes:
///               - start:
///                   hourOfDay: 1
///                   minuteOfHour: 0
///                 end:
///                   hourOfDay: 23
///                   minuteOfHour: 0
///       startTime: 2023-07-20T02:21:49+00:00
///       timeZoneId: Australia/Sydney
///       tags:
///         key1: tag1
///         key2: tag2
///     options:
///       dependsOn:
///         - ${exampleAwsSsmincidentsReplicationSet}
/// ```
///
///
/// ### Usage with Monthly Settings Fields
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ssm.ContactsRotation("example", {
///     contactIds: [exampleAwsSsmcontactsContact.arn],
///     name: "rotation",
///     recurrence: {
///         numberOfOnCalls: 1,
///         recurrenceMultiplier: 1,
///         monthlySettings: [
///             {
///                 dayOfMonth: 20,
///                 handOffTime: {
///                     hourOfDay: 8,
///                     minuteOfHour: 0,
///                 },
///             },
///             {
///                 dayOfMonth: 13,
///                 handOffTime: {
///                     hourOfDay: 12,
///                     minuteOfHour: 34,
///                 },
///             },
///         ],
///     },
///     timeZoneId: "Australia/Sydney",
/// }, {
///     dependsOn: [exampleAwsSsmincidentsReplicationSet],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssm.ContactsRotation("example",
///     contact_ids=[example_aws_ssmcontacts_contact["arn"]],
///     name="rotation",
///     recurrence={
///         "number_of_on_calls": 1,
///         "recurrence_multiplier": 1,
///         "monthly_settings": [
///             {
///                 "day_of_month": 20,
///                 "hand_off_time": {
///                     "hour_of_day": 8,
///                     "minute_of_hour": 0,
///                 },
///             },
///             {
///                 "day_of_month": 13,
///                 "hand_off_time": {
///                     "hour_of_day": 12,
///                     "minute_of_hour": 34,
///                 },
///             },
///         ],
///     },
///     time_zone_id="Australia/Sydney",
///     opts = pulumi.ResourceOptions(depends_on=[example_aws_ssmincidents_replication_set]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ssm.ContactsRotation("example", new()
///     {
///         ContactIds = new[]
///         {
///             exampleAwsSsmcontactsContact.Arn,
///         },
///         Name = "rotation",
///         Recurrence = new Aws.Ssm.Inputs.ContactsRotationRecurrenceArgs
///         {
///             NumberOfOnCalls = 1,
///             RecurrenceMultiplier = 1,
///             MonthlySettings = new[]
///             {
///                 new Aws.Ssm.Inputs.ContactsRotationRecurrenceMonthlySettingArgs
///                 {
///                     DayOfMonth = 20,
///                     HandOffTime = new Aws.Ssm.Inputs.ContactsRotationRecurrenceMonthlySettingHandOffTimeArgs
///                     {
///                         HourOfDay = 8,
///                         MinuteOfHour = 0,
///                     },
///                 },
///                 new Aws.Ssm.Inputs.ContactsRotationRecurrenceMonthlySettingArgs
///                 {
///                     DayOfMonth = 13,
///                     HandOffTime = new Aws.Ssm.Inputs.ContactsRotationRecurrenceMonthlySettingHandOffTimeArgs
///                     {
///                         HourOfDay = 12,
///                         MinuteOfHour = 34,
///                     },
///                 },
///             },
///         },
///         TimeZoneId = "Australia/Sydney",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleAwsSsmincidentsReplicationSet,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ssm.NewContactsRotation(ctx, "example", &ssm.ContactsRotationArgs{
/// 			ContactIds: pulumi.StringArray{
/// 				exampleAwsSsmcontactsContact.Arn,
/// 			},
/// 			Name: pulumi.String("rotation"),
/// 			Recurrence: &ssm.ContactsRotationRecurrenceArgs{
/// 				NumberOfOnCalls:      pulumi.Int(1),
/// 				RecurrenceMultiplier: pulumi.Int(1),
/// 				MonthlySettings: ssm.ContactsRotationRecurrenceMonthlySettingArray{
/// 					&ssm.ContactsRotationRecurrenceMonthlySettingArgs{
/// 						DayOfMonth: pulumi.Int(20),
/// 						HandOffTime: &ssm.ContactsRotationRecurrenceMonthlySettingHandOffTimeArgs{
/// 							HourOfDay:    pulumi.Int(8),
/// 							MinuteOfHour: pulumi.Int(0),
/// 						},
/// 					},
/// 					&ssm.ContactsRotationRecurrenceMonthlySettingArgs{
/// 						DayOfMonth: pulumi.Int(13),
/// 						HandOffTime: &ssm.ContactsRotationRecurrenceMonthlySettingHandOffTimeArgs{
/// 							HourOfDay:    pulumi.Int(12),
/// 							MinuteOfHour: pulumi.Int(34),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			TimeZoneId: pulumi.String("Australia/Sydney"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleAwsSsmincidentsReplicationSet,
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
/// import com.pulumi.aws.ssm.ContactsRotation;
/// import com.pulumi.aws.ssm.ContactsRotationArgs;
/// import com.pulumi.aws.ssm.inputs.ContactsRotationRecurrenceArgs;
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
///         var example = new ContactsRotation("example", ContactsRotationArgs.builder()
///             .contactIds(exampleAwsSsmcontactsContact.arn())
///             .name("rotation")
///             .recurrence(ContactsRotationRecurrenceArgs.builder()
///                 .numberOfOnCalls(1)
///                 .recurrenceMultiplier(1)
///                 .monthlySettings(
///                     ContactsRotationRecurrenceMonthlySettingArgs.builder()
///                         .dayOfMonth(20)
///                         .handOffTime(ContactsRotationRecurrenceMonthlySettingHandOffTimeArgs.builder()
///                             .hourOfDay(8)
///                             .minuteOfHour(0)
///                             .build())
///                         .build(),
///                     ContactsRotationRecurrenceMonthlySettingArgs.builder()
///                         .dayOfMonth(13)
///                         .handOffTime(ContactsRotationRecurrenceMonthlySettingHandOffTimeArgs.builder()
///                             .hourOfDay(12)
///                             .minuteOfHour(34)
///                             .build())
///                         .build())
///                 .build())
///             .timeZoneId("Australia/Sydney")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleAwsSsmincidentsReplicationSet)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ssm:ContactsRotation
///     properties:
///       contactIds:
///         - ${exampleAwsSsmcontactsContact.arn}
///       name: rotation
///       recurrence:
///         numberOfOnCalls: 1
///         recurrenceMultiplier: 1
///         monthlySettings:
///           - dayOfMonth: 20
///             handOffTime:
///               hourOfDay: 8
///               minuteOfHour: 0
///           - dayOfMonth: 13
///             handOffTime:
///               hourOfDay: 12
///               minuteOfHour: 34
///       timeZoneId: Australia/Sydney
///     options:
///       dependsOn:
///         - ${exampleAwsSsmincidentsReplicationSet}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the SSM Contacts rotation.
///
///
/// Using `pulumi import`, import CodeGuru Profiler Profiling Group using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:ssm/contactsRotation:ContactsRotation example arn:aws:ssm-contacts:us-east-1:012345678910:rotation/example
/// ```
class ContactsRotation extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) of the rotation.
  late final pulumi.Output<String> arn;
  /// Amazon Resource Names (ARNs) of the contacts to add to the rotation. The order in which you list the contacts is their shift order in the rotation schedule.
  late final pulumi.Output<List<String>> contactIds;
  /// The name for the rotation.
  late final pulumi.Output<String> name;
  /// Information about when an on-call rotation is in effect and how long the rotation period lasts. Exactly one of either `daily_settings`, `monthly_settings`, or `weekly_settings` must be populated. See Recurrence for more details.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<ContactsRotationRecurrence> recurrence;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The date and time, in RFC 3339 format, that the rotation goes into effect.
  late final pulumi.Output<String?> startTime;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The time zone to base the rotation’s activity on in Internet Assigned Numbers Authority (IANA) format.
  late final pulumi.Output<String> timeZoneId;

  /// Creates a new [ContactsRotation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ContactsRotation]. {@macro pulumi_ssm_contacts_rotation_contacts_rotation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ContactsRotation(
    String name, {
    ContactsRotationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssm/contactsRotation:ContactsRotation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.contactIds = registerOutput<List<String>>('contactIds');
    this.name = registerOutput<String>('name');
    this.recurrence = registerOutput<ContactsRotationRecurrence>('recurrence');
    this.region = registerOutput<String>('region');
    this.startTime = registerOutput<String?>('startTime');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeZoneId = registerOutput<String>('timeZoneId');
  }
}
