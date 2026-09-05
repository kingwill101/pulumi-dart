import 'package:pulumi/pulumi.dart' as pulumi;
import 'contacts_rotation_args.dart';
import 'contacts_rotation_recurrence.dart';
import 'contacts_rotation_state.dart';

/// Provides a Terraform resource for managing a Contacts Rotation in AWS Systems Manager Incident Manager.
///
/// &gt; **NOTE:** A rotation implicitly depends on a replication set. If you configured your replication set in Terraform, we recommend you add it to the `dependsOn` argument for the Terraform Contact Resource.
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
///     recurrence: {
///         dailySettings: [{
///             hourOfDay: 9,
///             minuteOfHour: 0,
///         }],
///         numberOfOnCalls: 1,
///         recurrenceMultiplier: 1,
///     },
///     contactIds: [exampleAwsSsmcontactsContact.arn],
///     name: "rotation",
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
///     recurrence={
///         "daily_settings": [{
///             "hour_of_day": 9,
///             "minute_of_hour": 0,
///         }],
///         "number_of_on_calls": 1,
///         "recurrence_multiplier": 1,
///     },
///     contact_ids=[example_aws_ssmcontacts_contact["arn"]],
///     name="rotation",
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
///         Recurrence = new Aws.Ssm.Inputs.ContactsRotationRecurrenceArgs
///         {
///             DailySettings = new[]
///             {
///                 new Aws.Ssm.Inputs.ContactsRotationRecurrenceDailySettingArgs
///                 {
///                     HourOfDay = 9,
///                     MinuteOfHour = 0,
///                 },
///             },
///             NumberOfOnCalls = 1,
///             RecurrenceMultiplier = 1,
///         },
///         ContactIds = new[]
///         {
///             exampleAwsSsmcontactsContact.Arn,
///         },
///         Name = "rotation",
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
/// 			Recurrence: &ssm.ContactsRotationRecurrenceArgs{
/// 				DailySettings: ssm.ContactsRotationRecurrenceDailySettingArray{
/// 					&ssm.ContactsRotationRecurrenceDailySettingArgs{
/// 						HourOfDay:    pulumi.Int(9),
/// 						MinuteOfHour: pulumi.Int(0),
/// 					},
/// 				},
/// 				NumberOfOnCalls:      pulumi.Int(1),
/// 				RecurrenceMultiplier: pulumi.Int(1),
/// 			},
/// 			ContactIds: pulumi.StringArray{
/// 				exampleAwsSsmcontactsContact.Arn,
/// 			},
/// 			Name:       pulumi.String("rotation"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_ssm_contactsrotation" "example" {
///   depends_on = [exampleAwsSsmincidentsReplicationSet]
///   recurrence = {
///     daily_settings = [{
///       "hourOfDay"    = 9
///       "minuteOfHour" = 0
///     }]
///     number_of_on_calls    = 1
///     recurrence_multiplier = 1
///   }
///   contact_ids  = [exampleAwsSsmcontactsContact.arn]
///   name         = "rotation"
///   time_zone_id = "Australia/Sydney"
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
/// import com.pulumi.aws.ssm.inputs.ContactsRotationRecurrenceDailySettingArgs;
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
///         var example = new ContactsRotation("example", ContactsRotationArgs.builder()
///             .recurrence(ContactsRotationRecurrenceArgs.builder()
///                 .dailySettings(ContactsRotationRecurrenceDailySettingArgs.builder()
///                     .hourOfDay(9)
///                     .minuteOfHour(0)
///                     .build())
///                 .numberOfOnCalls(1)
///                 .recurrenceMultiplier(1)
///                 .build())
///             .contactIds(exampleAwsSsmcontactsContact.arn())
///             .name("rotation")
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
///       recurrence:
///         dailySettings:
///           - hourOfDay: 9
///             minuteOfHour: 0
///         numberOfOnCalls: 1
///         recurrenceMultiplier: 1
///       contactIds:
///         - ${exampleAwsSsmcontactsContact.arn}
///       name: rotation
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
///     recurrence: {
///         shiftCoverages: [{
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
///             mapBlockKey: "MON",
///         }],
///         weeklySettings: [
///             {
///                 handOffTime: {
///                     hourOfDay: 4,
///                     minuteOfHour: 25,
///                 },
///                 dayOfWeek: "WED",
///             },
///             {
///                 handOffTime: {
///                     hourOfDay: 15,
///                     minuteOfHour: 57,
///                 },
///                 dayOfWeek: "FRI",
///             },
///         ],
///         numberOfOnCalls: 1,
///         recurrenceMultiplier: 1,
///     },
///     contactIds: [exampleAwsSsmcontactsContact.arn],
///     name: "rotation",
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
///     recurrence={
///         "shift_coverages": [{
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
///             "map_block_key": "MON",
///         }],
///         "weekly_settings": [
///             {
///                 "hand_off_time": {
///                     "hour_of_day": 4,
///                     "minute_of_hour": 25,
///                 },
///                 "day_of_week": "WED",
///             },
///             {
///                 "hand_off_time": {
///                     "hour_of_day": 15,
///                     "minute_of_hour": 57,
///                 },
///                 "day_of_week": "FRI",
///             },
///         ],
///         "number_of_on_calls": 1,
///         "recurrence_multiplier": 1,
///     },
///     contact_ids=[example_aws_ssmcontacts_contact["arn"]],
///     name="rotation",
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
///         Recurrence = new Aws.Ssm.Inputs.ContactsRotationRecurrenceArgs
///         {
///             ShiftCoverages = new[]
///             {
///                 new Aws.Ssm.Inputs.ContactsRotationRecurrenceShiftCoverageArgs
///                 {
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
///                     MapBlockKey = "MON",
///                 },
///             },
///             WeeklySettings = new[]
///             {
///                 new Aws.Ssm.Inputs.ContactsRotationRecurrenceWeeklySettingArgs
///                 {
///                     HandOffTime = new Aws.Ssm.Inputs.ContactsRotationRecurrenceWeeklySettingHandOffTimeArgs
///                     {
///                         HourOfDay = 4,
///                         MinuteOfHour = 25,
///                     },
///                     DayOfWeek = "WED",
///                 },
///                 new Aws.Ssm.Inputs.ContactsRotationRecurrenceWeeklySettingArgs
///                 {
///                     HandOffTime = new Aws.Ssm.Inputs.ContactsRotationRecurrenceWeeklySettingHandOffTimeArgs
///                     {
///                         HourOfDay = 15,
///                         MinuteOfHour = 57,
///                     },
///                     DayOfWeek = "FRI",
///                 },
///             },
///             NumberOfOnCalls = 1,
///             RecurrenceMultiplier = 1,
///         },
///         ContactIds = new[]
///         {
///             exampleAwsSsmcontactsContact.Arn,
///         },
///         Name = "rotation",
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
/// 			Recurrence: &ssm.ContactsRotationRecurrenceArgs{
/// 				ShiftCoverages: ssm.ContactsRotationRecurrenceShiftCoverageArray{
/// 					&ssm.ContactsRotationRecurrenceShiftCoverageArgs{
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
/// 						MapBlockKey: pulumi.String("MON"),
/// 					},
/// 				},
/// 				WeeklySettings: ssm.ContactsRotationRecurrenceWeeklySettingArray{
/// 					&ssm.ContactsRotationRecurrenceWeeklySettingArgs{
/// 						HandOffTime: &ssm.ContactsRotationRecurrenceWeeklySettingHandOffTimeArgs{
/// 							HourOfDay:    pulumi.Int(4),
/// 							MinuteOfHour: pulumi.Int(25),
/// 						},
/// 						DayOfWeek: pulumi.String("WED"),
/// 					},
/// 					&ssm.ContactsRotationRecurrenceWeeklySettingArgs{
/// 						HandOffTime: &ssm.ContactsRotationRecurrenceWeeklySettingHandOffTimeArgs{
/// 							HourOfDay:    pulumi.Int(15),
/// 							MinuteOfHour: pulumi.Int(57),
/// 						},
/// 						DayOfWeek: pulumi.String("FRI"),
/// 					},
/// 				},
/// 				NumberOfOnCalls:      pulumi.Int(1),
/// 				RecurrenceMultiplier: pulumi.Int(1),
/// 			},
/// 			ContactIds: pulumi.StringArray{
/// 				exampleAwsSsmcontactsContact.Arn,
/// 			},
/// 			Name:       pulumi.String("rotation"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_ssm_contactsrotation" "example" {
///   depends_on = [exampleAwsSsmincidentsReplicationSet]
///   recurrence = {
///     shift_coverages = [{
///       "coverageTimes" = [{
///         "start" = {
///           "hourOfDay"    = 1
///           "minuteOfHour" = 0
///         }
///         "end" = {
///           "hourOfDay"    = 23
///           "minuteOfHour" = 0
///         }
///       }]
///       "mapBlockKey" = "MON"
///     }]
///     weekly_settings = [{
///       "handOffTime" = {
///         "hourOfDay"    = 4
///         "minuteOfHour" = 25
///       }
///       "dayOfWeek" = "WED"
///       }, {
///       "handOffTime" = {
///         "hourOfDay"    = 15
///         "minuteOfHour" = 57
///       }
///       "dayOfWeek" = "FRI"
///     }]
///     number_of_on_calls    = 1
///     recurrence_multiplier = 1
///   }
///   contact_ids  = [exampleAwsSsmcontactsContact.arn]
///   name         = "rotation"
///   start_time   = "2023-07-20T02:21:49+00:00"
///   time_zone_id = "Australia/Sydney"
///   tags = {
///     "key1" = "tag1"
///     "key2" = "tag2"
///   }
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
/// import com.pulumi.aws.ssm.inputs.ContactsRotationRecurrenceShiftCoverageArgs;
/// import com.pulumi.aws.ssm.inputs.ContactsRotationRecurrenceShiftCoverageCoverageTimeArgs;
/// import com.pulumi.aws.ssm.inputs.ContactsRotationRecurrenceShiftCoverageCoverageTimeStartArgs;
/// import com.pulumi.aws.ssm.inputs.ContactsRotationRecurrenceShiftCoverageCoverageTimeEndArgs;
/// import com.pulumi.aws.ssm.inputs.ContactsRotationRecurrenceWeeklySettingArgs;
/// import com.pulumi.aws.ssm.inputs.ContactsRotationRecurrenceWeeklySettingHandOffTimeArgs;
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
///         var example = new ContactsRotation("example", ContactsRotationArgs.builder()
///             .recurrence(ContactsRotationRecurrenceArgs.builder()
///                 .shiftCoverages(ContactsRotationRecurrenceShiftCoverageArgs.builder()
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
///                     .mapBlockKey("MON")
///                     .build())
///                 .weeklySettings(
///                     ContactsRotationRecurrenceWeeklySettingArgs.builder()
///                         .handOffTime(ContactsRotationRecurrenceWeeklySettingHandOffTimeArgs.builder()
///                             .hourOfDay(4)
///                             .minuteOfHour(25)
///                             .build())
///                         .dayOfWeek("WED")
///                         .build(),
///                     ContactsRotationRecurrenceWeeklySettingArgs.builder()
///                         .handOffTime(ContactsRotationRecurrenceWeeklySettingHandOffTimeArgs.builder()
///                             .hourOfDay(15)
///                             .minuteOfHour(57)
///                             .build())
///                         .dayOfWeek("FRI")
///                         .build())
///                 .numberOfOnCalls(1)
///                 .recurrenceMultiplier(1)
///                 .build())
///             .contactIds(exampleAwsSsmcontactsContact.arn())
///             .name("rotation")
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
///       recurrence:
///         shiftCoverages:
///           - coverageTimes:
///               - start:
///                   hourOfDay: 1
///                   minuteOfHour: 0
///                 end:
///                   hourOfDay: 23
///                   minuteOfHour: 0
///             mapBlockKey: MON
///         weeklySettings:
///           - handOffTime:
///               hourOfDay: 4
///               minuteOfHour: 25
///             dayOfWeek: WED
///           - handOffTime:
///               hourOfDay: 15
///               minuteOfHour: 57
///             dayOfWeek: FRI
///         numberOfOnCalls: 1
///         recurrenceMultiplier: 1
///       contactIds:
///         - ${exampleAwsSsmcontactsContact.arn}
///       name: rotation
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
///     recurrence: {
///         monthlySettings: [
///             {
///                 handOffTime: {
///                     hourOfDay: 8,
///                     minuteOfHour: 0,
///                 },
///                 dayOfMonth: 20,
///             },
///             {
///                 handOffTime: {
///                     hourOfDay: 12,
///                     minuteOfHour: 34,
///                 },
///                 dayOfMonth: 13,
///             },
///         ],
///         numberOfOnCalls: 1,
///         recurrenceMultiplier: 1,
///     },
///     contactIds: [exampleAwsSsmcontactsContact.arn],
///     name: "rotation",
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
///     recurrence={
///         "monthly_settings": [
///             {
///                 "hand_off_time": {
///                     "hour_of_day": 8,
///                     "minute_of_hour": 0,
///                 },
///                 "day_of_month": 20,
///             },
///             {
///                 "hand_off_time": {
///                     "hour_of_day": 12,
///                     "minute_of_hour": 34,
///                 },
///                 "day_of_month": 13,
///             },
///         ],
///         "number_of_on_calls": 1,
///         "recurrence_multiplier": 1,
///     },
///     contact_ids=[example_aws_ssmcontacts_contact["arn"]],
///     name="rotation",
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
///         Recurrence = new Aws.Ssm.Inputs.ContactsRotationRecurrenceArgs
///         {
///             MonthlySettings = new[]
///             {
///                 new Aws.Ssm.Inputs.ContactsRotationRecurrenceMonthlySettingArgs
///                 {
///                     HandOffTime = new Aws.Ssm.Inputs.ContactsRotationRecurrenceMonthlySettingHandOffTimeArgs
///                     {
///                         HourOfDay = 8,
///                         MinuteOfHour = 0,
///                     },
///                     DayOfMonth = 20,
///                 },
///                 new Aws.Ssm.Inputs.ContactsRotationRecurrenceMonthlySettingArgs
///                 {
///                     HandOffTime = new Aws.Ssm.Inputs.ContactsRotationRecurrenceMonthlySettingHandOffTimeArgs
///                     {
///                         HourOfDay = 12,
///                         MinuteOfHour = 34,
///                     },
///                     DayOfMonth = 13,
///                 },
///             },
///             NumberOfOnCalls = 1,
///             RecurrenceMultiplier = 1,
///         },
///         ContactIds = new[]
///         {
///             exampleAwsSsmcontactsContact.Arn,
///         },
///         Name = "rotation",
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
/// 			Recurrence: &ssm.ContactsRotationRecurrenceArgs{
/// 				MonthlySettings: ssm.ContactsRotationRecurrenceMonthlySettingArray{
/// 					&ssm.ContactsRotationRecurrenceMonthlySettingArgs{
/// 						HandOffTime: &ssm.ContactsRotationRecurrenceMonthlySettingHandOffTimeArgs{
/// 							HourOfDay:    pulumi.Int(8),
/// 							MinuteOfHour: pulumi.Int(0),
/// 						},
/// 						DayOfMonth: pulumi.Int(20),
/// 					},
/// 					&ssm.ContactsRotationRecurrenceMonthlySettingArgs{
/// 						HandOffTime: &ssm.ContactsRotationRecurrenceMonthlySettingHandOffTimeArgs{
/// 							HourOfDay:    pulumi.Int(12),
/// 							MinuteOfHour: pulumi.Int(34),
/// 						},
/// 						DayOfMonth: pulumi.Int(13),
/// 					},
/// 				},
/// 				NumberOfOnCalls:      pulumi.Int(1),
/// 				RecurrenceMultiplier: pulumi.Int(1),
/// 			},
/// 			ContactIds: pulumi.StringArray{
/// 				exampleAwsSsmcontactsContact.Arn,
/// 			},
/// 			Name:       pulumi.String("rotation"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_ssm_contactsrotation" "example" {
///   depends_on = [exampleAwsSsmincidentsReplicationSet]
///   recurrence = {
///     monthly_settings = [{
///       "handOffTime" = {
///         "hourOfDay"    = 8
///         "minuteOfHour" = 0
///       }
///       "dayOfMonth" = 20
///       }, {
///       "handOffTime" = {
///         "hourOfDay"    = 12
///         "minuteOfHour" = 34
///       }
///       "dayOfMonth" = 13
///     }]
///     number_of_on_calls    = 1
///     recurrence_multiplier = 1
///   }
///   contact_ids  = [exampleAwsSsmcontactsContact.arn]
///   name         = "rotation"
///   time_zone_id = "Australia/Sydney"
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
/// import com.pulumi.aws.ssm.inputs.ContactsRotationRecurrenceMonthlySettingArgs;
/// import com.pulumi.aws.ssm.inputs.ContactsRotationRecurrenceMonthlySettingHandOffTimeArgs;
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
///         var example = new ContactsRotation("example", ContactsRotationArgs.builder()
///             .recurrence(ContactsRotationRecurrenceArgs.builder()
///                 .monthlySettings(
///                     ContactsRotationRecurrenceMonthlySettingArgs.builder()
///                         .handOffTime(ContactsRotationRecurrenceMonthlySettingHandOffTimeArgs.builder()
///                             .hourOfDay(8)
///                             .minuteOfHour(0)
///                             .build())
///                         .dayOfMonth(20)
///                         .build(),
///                     ContactsRotationRecurrenceMonthlySettingArgs.builder()
///                         .handOffTime(ContactsRotationRecurrenceMonthlySettingHandOffTimeArgs.builder()
///                             .hourOfDay(12)
///                             .minuteOfHour(34)
///                             .build())
///                         .dayOfMonth(13)
///                         .build())
///                 .numberOfOnCalls(1)
///                 .recurrenceMultiplier(1)
///                 .build())
///             .contactIds(exampleAwsSsmcontactsContact.arn())
///             .name("rotation")
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
///       recurrence:
///         monthlySettings:
///           - handOffTime:
///               hourOfDay: 8
///               minuteOfHour: 0
///             dayOfMonth: 20
///           - handOffTime:
///               hourOfDay: 12
///               minuteOfHour: 34
///             dayOfMonth: 13
///         numberOfOnCalls: 1
///         recurrenceMultiplier: 1
///       contactIds:
///         - ${exampleAwsSsmcontactsContact.arn}
///       name: rotation
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
/// - `arn` (String) ARN of the SSM Contacts rotation.
///
///
/// Using `pulumi import`, import CodeGuru Profiler Profiling Group using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:ssm/contactsRotation:ContactsRotation example arn:aws:ssm-contacts:us-east-1:012345678910:rotation/example
/// ```
class ContactsRotation extends pulumi.CustomResource {
  /// ARN of the rotation.
  late final pulumi.Output<String> arn;
  /// ARNs of the contacts to add to the rotation. The order in which you list the contacts is their shift order in the rotation schedule.
  late final pulumi.Output<List<String>> contactIds;
  /// The name for the rotation.
  late final pulumi.Output<String> name;
  /// Information about when an on-call rotation is in effect and how long the rotation period lasts. Exactly one of either `dailySettings`, `monthlySettings`, or `weeklySettings` must be populated. See Recurrence for more details.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<ContactsRotationRecurrence> recurrence;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The date and time, in RFC 3339 format, that the rotation goes into effect.
  late final pulumi.Output<String?> startTime;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    contactIds = registerOutput<List<String>>('contactIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    recurrence = registerOutput<ContactsRotationRecurrence>('recurrence', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ContactsRotationRecurrence.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    startTime = registerOutput<String?>('startTime');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeZoneId = registerOutput<String>('timeZoneId');
  }

  /// Gets an existing [ContactsRotation] resource's state with the given [name] and [id].
  static ContactsRotation get(
    String name,
    pulumi.Input<String> id, {
    ContactsRotationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ContactsRotation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ContactsRotation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssm/contactsRotation:ContactsRotation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    contactIds = registerOutput<List<String>>('contactIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    recurrence = registerOutput<ContactsRotationRecurrence>('recurrence', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ContactsRotationRecurrence.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    startTime = registerOutput<String?>('startTime');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeZoneId = registerOutput<String>('timeZoneId');
  }

  /// Creates a typed reference to an existing [ContactsRotation] resource.
  ContactsRotation.reference(String urn)
    : super(
        'aws:ssm/contactsRotation:ContactsRotation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    contactIds = registerOutput<List<String>>('contactIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    recurrence = registerOutput<ContactsRotationRecurrence>('recurrence', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ContactsRotationRecurrence.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    startTime = registerOutput<String?>('startTime');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeZoneId = registerOutput<String>('timeZoneId');
  }
}
