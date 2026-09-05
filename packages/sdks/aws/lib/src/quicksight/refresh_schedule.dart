import 'package:pulumi/pulumi.dart' as pulumi;
import 'refresh_schedule_args.dart';
import 'refresh_schedule_schedule.dart';
import 'refresh_schedule_state.dart';

/// Resource for managing a QuickSight Refresh Schedule.
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
/// const example = new aws.quicksight.RefreshSchedule("example", {
///     schedule: {
///         scheduleFrequency: {
///             interval: "HOURLY",
///         },
///         refreshType: "FULL_REFRESH",
///     },
///     dataSetId: "dataset-id",
///     scheduleId: "schedule-id",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.quicksight.RefreshSchedule("example",
///     schedule={
///         "schedule_frequency": {
///             "interval": "HOURLY",
///         },
///         "refresh_type": "FULL_REFRESH",
///     },
///     data_set_id="dataset-id",
///     schedule_id="schedule-id")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Quicksight.RefreshSchedule("example", new()
///     {
///         Schedule = new Aws.Quicksight.Inputs.RefreshScheduleScheduleArgs
///         {
///             ScheduleFrequency = new Aws.Quicksight.Inputs.RefreshScheduleScheduleScheduleFrequencyArgs
///             {
///                 Interval = "HOURLY",
///             },
///             RefreshType = "FULL_REFRESH",
///         },
///         DataSetId = "dataset-id",
///         ScheduleId = "schedule-id",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/quicksight"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := quicksight.NewRefreshSchedule(ctx, "example", &quicksight.RefreshScheduleArgs{
/// 			Schedule: &quicksight.RefreshScheduleScheduleArgs{
/// 				ScheduleFrequency: &quicksight.RefreshScheduleScheduleScheduleFrequencyArgs{
/// 					Interval: pulumi.String("HOURLY"),
/// 				},
/// 				RefreshType: pulumi.String("FULL_REFRESH"),
/// 			},
/// 			DataSetId:  pulumi.String("dataset-id"),
/// 			ScheduleId: pulumi.String("schedule-id"),
/// 		})
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
/// resource "aws_quicksight_refreshschedule" "example" {
///   schedule = {
///     schedule_frequency = {
///       interval = "HOURLY"
///     }
///     refresh_type = "FULL_REFRESH"
///   }
///   data_set_id = "dataset-id"
///   schedule_id = "schedule-id"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.quicksight.RefreshSchedule;
/// import com.pulumi.aws.quicksight.RefreshScheduleArgs;
/// import com.pulumi.aws.quicksight.inputs.RefreshScheduleScheduleArgs;
/// import com.pulumi.aws.quicksight.inputs.RefreshScheduleScheduleScheduleFrequencyArgs;
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
///         var example = new RefreshSchedule("example", RefreshScheduleArgs.builder()
///             .schedule(RefreshScheduleScheduleArgs.builder()
///                 .scheduleFrequency(RefreshScheduleScheduleScheduleFrequencyArgs.builder()
///                     .interval("HOURLY")
///                     .build())
///                 .refreshType("FULL_REFRESH")
///                 .build())
///             .dataSetId("dataset-id")
///             .scheduleId("schedule-id")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:quicksight:RefreshSchedule
///     properties:
///       schedule:
///         scheduleFrequency:
///           interval: HOURLY
///         refreshType: FULL_REFRESH
///       dataSetId: dataset-id
///       scheduleId: schedule-id
/// ```
///
///
/// ### With Weekly Refresh
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.quicksight.RefreshSchedule("example", {
///     schedule: {
///         scheduleFrequency: {
///             refreshOnDay: {
///                 dayOfWeek: "MONDAY",
///             },
///             interval: "WEEKLY",
///             timeOfTheDay: "01:00",
///             timezone: "Europe/London",
///         },
///         refreshType: "INCREMENTAL_REFRESH",
///     },
///     dataSetId: "dataset-id",
///     scheduleId: "schedule-id",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.quicksight.RefreshSchedule("example",
///     schedule={
///         "schedule_frequency": {
///             "refresh_on_day": {
///                 "day_of_week": "MONDAY",
///             },
///             "interval": "WEEKLY",
///             "time_of_the_day": "01:00",
///             "timezone": "Europe/London",
///         },
///         "refresh_type": "INCREMENTAL_REFRESH",
///     },
///     data_set_id="dataset-id",
///     schedule_id="schedule-id")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Quicksight.RefreshSchedule("example", new()
///     {
///         Schedule = new Aws.Quicksight.Inputs.RefreshScheduleScheduleArgs
///         {
///             ScheduleFrequency = new Aws.Quicksight.Inputs.RefreshScheduleScheduleScheduleFrequencyArgs
///             {
///                 RefreshOnDay = new Aws.Quicksight.Inputs.RefreshScheduleScheduleScheduleFrequencyRefreshOnDayArgs
///                 {
///                     DayOfWeek = "MONDAY",
///                 },
///                 Interval = "WEEKLY",
///                 TimeOfTheDay = "01:00",
///                 Timezone = "Europe/London",
///             },
///             RefreshType = "INCREMENTAL_REFRESH",
///         },
///         DataSetId = "dataset-id",
///         ScheduleId = "schedule-id",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/quicksight"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := quicksight.NewRefreshSchedule(ctx, "example", &quicksight.RefreshScheduleArgs{
/// 			Schedule: &quicksight.RefreshScheduleScheduleArgs{
/// 				ScheduleFrequency: &quicksight.RefreshScheduleScheduleScheduleFrequencyArgs{
/// 					RefreshOnDay: &quicksight.RefreshScheduleScheduleScheduleFrequencyRefreshOnDayArgs{
/// 						DayOfWeek: pulumi.String("MONDAY"),
/// 					},
/// 					Interval:     pulumi.String("WEEKLY"),
/// 					TimeOfTheDay: pulumi.String("01:00"),
/// 					Timezone:     pulumi.String("Europe/London"),
/// 				},
/// 				RefreshType: pulumi.String("INCREMENTAL_REFRESH"),
/// 			},
/// 			DataSetId:  pulumi.String("dataset-id"),
/// 			ScheduleId: pulumi.String("schedule-id"),
/// 		})
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
/// resource "aws_quicksight_refreshschedule" "example" {
///   schedule = {
///     schedule_frequency = {
///       refresh_on_day = {
///         day_of_week = "MONDAY"
///       }
///       interval        = "WEEKLY"
///       time_of_the_day = "01:00"
///       timezone        = "Europe/London"
///     }
///     refresh_type = "INCREMENTAL_REFRESH"
///   }
///   data_set_id = "dataset-id"
///   schedule_id = "schedule-id"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.quicksight.RefreshSchedule;
/// import com.pulumi.aws.quicksight.RefreshScheduleArgs;
/// import com.pulumi.aws.quicksight.inputs.RefreshScheduleScheduleArgs;
/// import com.pulumi.aws.quicksight.inputs.RefreshScheduleScheduleScheduleFrequencyArgs;
/// import com.pulumi.aws.quicksight.inputs.RefreshScheduleScheduleScheduleFrequencyRefreshOnDayArgs;
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
///         var example = new RefreshSchedule("example", RefreshScheduleArgs.builder()
///             .schedule(RefreshScheduleScheduleArgs.builder()
///                 .scheduleFrequency(RefreshScheduleScheduleScheduleFrequencyArgs.builder()
///                     .refreshOnDay(RefreshScheduleScheduleScheduleFrequencyRefreshOnDayArgs.builder()
///                         .dayOfWeek("MONDAY")
///                         .build())
///                     .interval("WEEKLY")
///                     .timeOfTheDay("01:00")
///                     .timezone("Europe/London")
///                     .build())
///                 .refreshType("INCREMENTAL_REFRESH")
///                 .build())
///             .dataSetId("dataset-id")
///             .scheduleId("schedule-id")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:quicksight:RefreshSchedule
///     properties:
///       schedule:
///         scheduleFrequency:
///           refreshOnDay:
///             dayOfWeek: MONDAY
///           interval: WEEKLY
///           timeOfTheDay: 01:00
///           timezone: Europe/London
///         refreshType: INCREMENTAL_REFRESH
///       dataSetId: dataset-id
///       scheduleId: schedule-id
/// ```
///
///
/// ### With Monthly Refresh
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.quicksight.RefreshSchedule("example", {
///     schedule: {
///         scheduleFrequency: {
///             refreshOnDay: {
///                 dayOfMonth: "1",
///             },
///             interval: "MONTHLY",
///             timeOfTheDay: "01:00",
///             timezone: "Europe/London",
///         },
///         refreshType: "INCREMENTAL_REFRESH",
///     },
///     dataSetId: "dataset-id",
///     scheduleId: "schedule-id",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.quicksight.RefreshSchedule("example",
///     schedule={
///         "schedule_frequency": {
///             "refresh_on_day": {
///                 "day_of_month": "1",
///             },
///             "interval": "MONTHLY",
///             "time_of_the_day": "01:00",
///             "timezone": "Europe/London",
///         },
///         "refresh_type": "INCREMENTAL_REFRESH",
///     },
///     data_set_id="dataset-id",
///     schedule_id="schedule-id")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Quicksight.RefreshSchedule("example", new()
///     {
///         Schedule = new Aws.Quicksight.Inputs.RefreshScheduleScheduleArgs
///         {
///             ScheduleFrequency = new Aws.Quicksight.Inputs.RefreshScheduleScheduleScheduleFrequencyArgs
///             {
///                 RefreshOnDay = new Aws.Quicksight.Inputs.RefreshScheduleScheduleScheduleFrequencyRefreshOnDayArgs
///                 {
///                     DayOfMonth = "1",
///                 },
///                 Interval = "MONTHLY",
///                 TimeOfTheDay = "01:00",
///                 Timezone = "Europe/London",
///             },
///             RefreshType = "INCREMENTAL_REFRESH",
///         },
///         DataSetId = "dataset-id",
///         ScheduleId = "schedule-id",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/quicksight"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := quicksight.NewRefreshSchedule(ctx, "example", &quicksight.RefreshScheduleArgs{
/// 			Schedule: &quicksight.RefreshScheduleScheduleArgs{
/// 				ScheduleFrequency: &quicksight.RefreshScheduleScheduleScheduleFrequencyArgs{
/// 					RefreshOnDay: &quicksight.RefreshScheduleScheduleScheduleFrequencyRefreshOnDayArgs{
/// 						DayOfMonth: pulumi.String("1"),
/// 					},
/// 					Interval:     pulumi.String("MONTHLY"),
/// 					TimeOfTheDay: pulumi.String("01:00"),
/// 					Timezone:     pulumi.String("Europe/London"),
/// 				},
/// 				RefreshType: pulumi.String("INCREMENTAL_REFRESH"),
/// 			},
/// 			DataSetId:  pulumi.String("dataset-id"),
/// 			ScheduleId: pulumi.String("schedule-id"),
/// 		})
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
/// resource "aws_quicksight_refreshschedule" "example" {
///   schedule = {
///     schedule_frequency = {
///       refresh_on_day = {
///         day_of_month = "1"
///       }
///       interval        = "MONTHLY"
///       time_of_the_day = "01:00"
///       timezone        = "Europe/London"
///     }
///     refresh_type = "INCREMENTAL_REFRESH"
///   }
///   data_set_id = "dataset-id"
///   schedule_id = "schedule-id"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.quicksight.RefreshSchedule;
/// import com.pulumi.aws.quicksight.RefreshScheduleArgs;
/// import com.pulumi.aws.quicksight.inputs.RefreshScheduleScheduleArgs;
/// import com.pulumi.aws.quicksight.inputs.RefreshScheduleScheduleScheduleFrequencyArgs;
/// import com.pulumi.aws.quicksight.inputs.RefreshScheduleScheduleScheduleFrequencyRefreshOnDayArgs;
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
///         var example = new RefreshSchedule("example", RefreshScheduleArgs.builder()
///             .schedule(RefreshScheduleScheduleArgs.builder()
///                 .scheduleFrequency(RefreshScheduleScheduleScheduleFrequencyArgs.builder()
///                     .refreshOnDay(RefreshScheduleScheduleScheduleFrequencyRefreshOnDayArgs.builder()
///                         .dayOfMonth("1")
///                         .build())
///                     .interval("MONTHLY")
///                     .timeOfTheDay("01:00")
///                     .timezone("Europe/London")
///                     .build())
///                 .refreshType("INCREMENTAL_REFRESH")
///                 .build())
///             .dataSetId("dataset-id")
///             .scheduleId("schedule-id")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:quicksight:RefreshSchedule
///     properties:
///       schedule:
///         scheduleFrequency:
///           refreshOnDay:
///             dayOfMonth: '1'
///           interval: MONTHLY
///           timeOfTheDay: 01:00
///           timezone: Europe/London
///         refreshType: INCREMENTAL_REFRESH
///       dataSetId: dataset-id
///       scheduleId: schedule-id
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import a QuickSight Refresh Schedule using the AWS account ID, data set ID and schedule ID separated by commas (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:quicksight/refreshSchedule:RefreshSchedule example 123456789012,dataset-id,schedule-id
/// ```
class RefreshSchedule extends pulumi.CustomResource {
  /// ARN of the refresh schedule.
  late final pulumi.Output<String> arn;
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final pulumi.Output<String> awsAccountId;
  /// The ID of the dataset.
  late final pulumi.Output<String> dataSetId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The [refresh schedule](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_RefreshSchedule.html). See schedule
  ///
  /// The following arguments are optional:
  late final pulumi.Output<RefreshScheduleSchedule> schedule;
  /// The ID of the refresh schedule.
  late final pulumi.Output<String> scheduleId;

  /// Creates a new [RefreshSchedule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RefreshSchedule]. {@macro pulumi_quicksight_refresh_schedule_refresh_schedule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RefreshSchedule(
    String name, {
    RefreshScheduleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/refreshSchedule:RefreshSchedule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    awsAccountId = registerOutput<String>('awsAccountId');
    dataSetId = registerOutput<String>('dataSetId');
    region = registerOutput<String>('region');
    schedule = registerOutput<RefreshScheduleSchedule>('schedule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RefreshScheduleSchedule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    scheduleId = registerOutput<String>('scheduleId');
  }

  /// Gets an existing [RefreshSchedule] resource's state with the given [name] and [id].
  static RefreshSchedule get(
    String name,
    pulumi.Input<String> id, {
    RefreshScheduleState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return RefreshSchedule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  RefreshSchedule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/refreshSchedule:RefreshSchedule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    awsAccountId = registerOutput<String>('awsAccountId');
    dataSetId = registerOutput<String>('dataSetId');
    region = registerOutput<String>('region');
    schedule = registerOutput<RefreshScheduleSchedule>('schedule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RefreshScheduleSchedule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    scheduleId = registerOutput<String>('scheduleId');
  }

  /// Creates a typed reference to an existing [RefreshSchedule] resource.
  RefreshSchedule.reference(String urn)
    : super(
        'aws:quicksight/refreshSchedule:RefreshSchedule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    awsAccountId = registerOutput<String>('awsAccountId');
    dataSetId = registerOutput<String>('dataSetId');
    region = registerOutput<String>('region');
    schedule = registerOutput<RefreshScheduleSchedule>('schedule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RefreshScheduleSchedule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    scheduleId = registerOutput<String>('scheduleId');
  }
}
