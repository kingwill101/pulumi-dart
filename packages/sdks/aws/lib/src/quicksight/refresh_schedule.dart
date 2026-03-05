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
///     dataSetId: "dataset-id",
///     scheduleId: "schedule-id",
///     schedule: {
///         refreshType: "FULL_REFRESH",
///         scheduleFrequency: {
///             interval: "HOURLY",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.quicksight.RefreshSchedule("example",
///     data_set_id="dataset-id",
///     schedule_id="schedule-id",
///     schedule={
///         "refresh_type": "FULL_REFRESH",
///         "schedule_frequency": {
///             "interval": "HOURLY",
///         },
///     })
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
///         DataSetId = "dataset-id",
///         ScheduleId = "schedule-id",
///         Schedule = new Aws.Quicksight.Inputs.RefreshScheduleScheduleArgs
///         {
///             RefreshType = "FULL_REFRESH",
///             ScheduleFrequency = new Aws.Quicksight.Inputs.RefreshScheduleScheduleScheduleFrequencyArgs
///             {
///                 Interval = "HOURLY",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/quicksight"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := quicksight.NewRefreshSchedule(ctx, "example", &quicksight.RefreshScheduleArgs{
/// 			DataSetId:  pulumi.String("dataset-id"),
/// 			ScheduleId: pulumi.String("schedule-id"),
/// 			Schedule: &quicksight.RefreshScheduleScheduleArgs{
/// 				RefreshType: pulumi.String("FULL_REFRESH"),
/// 				ScheduleFrequency: &quicksight.RefreshScheduleScheduleScheduleFrequencyArgs{
/// 					Interval: pulumi.String("HOURLY"),
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
/// import com.pulumi.aws.quicksight.RefreshSchedule;
/// import com.pulumi.aws.quicksight.RefreshScheduleArgs;
/// import com.pulumi.aws.quicksight.inputs.RefreshScheduleScheduleArgs;
/// import com.pulumi.aws.quicksight.inputs.RefreshScheduleScheduleScheduleFrequencyArgs;
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
///         var example = new RefreshSchedule("example", RefreshScheduleArgs.builder()
///             .dataSetId("dataset-id")
///             .scheduleId("schedule-id")
///             .schedule(RefreshScheduleScheduleArgs.builder()
///                 .refreshType("FULL_REFRESH")
///                 .scheduleFrequency(RefreshScheduleScheduleScheduleFrequencyArgs.builder()
///                     .interval("HOURLY")
///                     .build())
///                 .build())
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
///       dataSetId: dataset-id
///       scheduleId: schedule-id
///       schedule:
///         refreshType: FULL_REFRESH
///         scheduleFrequency:
///           interval: HOURLY
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
///     dataSetId: "dataset-id",
///     scheduleId: "schedule-id",
///     schedule: {
///         refreshType: "INCREMENTAL_REFRESH",
///         scheduleFrequency: {
///             interval: "WEEKLY",
///             timeOfTheDay: "01:00",
///             timezone: "Europe/London",
///             refreshOnDay: {
///                 dayOfWeek: "MONDAY",
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.quicksight.RefreshSchedule("example",
///     data_set_id="dataset-id",
///     schedule_id="schedule-id",
///     schedule={
///         "refresh_type": "INCREMENTAL_REFRESH",
///         "schedule_frequency": {
///             "interval": "WEEKLY",
///             "time_of_the_day": "01:00",
///             "timezone": "Europe/London",
///             "refresh_on_day": {
///                 "day_of_week": "MONDAY",
///             },
///         },
///     })
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
///         DataSetId = "dataset-id",
///         ScheduleId = "schedule-id",
///         Schedule = new Aws.Quicksight.Inputs.RefreshScheduleScheduleArgs
///         {
///             RefreshType = "INCREMENTAL_REFRESH",
///             ScheduleFrequency = new Aws.Quicksight.Inputs.RefreshScheduleScheduleScheduleFrequencyArgs
///             {
///                 Interval = "WEEKLY",
///                 TimeOfTheDay = "01:00",
///                 Timezone = "Europe/London",
///                 RefreshOnDay = new Aws.Quicksight.Inputs.RefreshScheduleScheduleScheduleFrequencyRefreshOnDayArgs
///                 {
///                     DayOfWeek = "MONDAY",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/quicksight"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := quicksight.NewRefreshSchedule(ctx, "example", &quicksight.RefreshScheduleArgs{
/// 			DataSetId:  pulumi.String("dataset-id"),
/// 			ScheduleId: pulumi.String("schedule-id"),
/// 			Schedule: &quicksight.RefreshScheduleScheduleArgs{
/// 				RefreshType: pulumi.String("INCREMENTAL_REFRESH"),
/// 				ScheduleFrequency: &quicksight.RefreshScheduleScheduleScheduleFrequencyArgs{
/// 					Interval:     pulumi.String("WEEKLY"),
/// 					TimeOfTheDay: pulumi.String("01:00"),
/// 					Timezone:     pulumi.String("Europe/London"),
/// 					RefreshOnDay: &quicksight.RefreshScheduleScheduleScheduleFrequencyRefreshOnDayArgs{
/// 						DayOfWeek: pulumi.String("MONDAY"),
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
/// import com.pulumi.aws.quicksight.RefreshSchedule;
/// import com.pulumi.aws.quicksight.RefreshScheduleArgs;
/// import com.pulumi.aws.quicksight.inputs.RefreshScheduleScheduleArgs;
/// import com.pulumi.aws.quicksight.inputs.RefreshScheduleScheduleScheduleFrequencyArgs;
/// import com.pulumi.aws.quicksight.inputs.RefreshScheduleScheduleScheduleFrequencyRefreshOnDayArgs;
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
///         var example = new RefreshSchedule("example", RefreshScheduleArgs.builder()
///             .dataSetId("dataset-id")
///             .scheduleId("schedule-id")
///             .schedule(RefreshScheduleScheduleArgs.builder()
///                 .refreshType("INCREMENTAL_REFRESH")
///                 .scheduleFrequency(RefreshScheduleScheduleScheduleFrequencyArgs.builder()
///                     .interval("WEEKLY")
///                     .timeOfTheDay("01:00")
///                     .timezone("Europe/London")
///                     .refreshOnDay(RefreshScheduleScheduleScheduleFrequencyRefreshOnDayArgs.builder()
///                         .dayOfWeek("MONDAY")
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
///   example:
///     type: aws:quicksight:RefreshSchedule
///     properties:
///       dataSetId: dataset-id
///       scheduleId: schedule-id
///       schedule:
///         refreshType: INCREMENTAL_REFRESH
///         scheduleFrequency:
///           interval: WEEKLY
///           timeOfTheDay: 01:00
///           timezone: Europe/London
///           refreshOnDay:
///             dayOfWeek: MONDAY
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
///     dataSetId: "dataset-id",
///     scheduleId: "schedule-id",
///     schedule: {
///         refreshType: "INCREMENTAL_REFRESH",
///         scheduleFrequency: {
///             interval: "MONTHLY",
///             timeOfTheDay: "01:00",
///             timezone: "Europe/London",
///             refreshOnDay: {
///                 dayOfMonth: "1",
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.quicksight.RefreshSchedule("example",
///     data_set_id="dataset-id",
///     schedule_id="schedule-id",
///     schedule={
///         "refresh_type": "INCREMENTAL_REFRESH",
///         "schedule_frequency": {
///             "interval": "MONTHLY",
///             "time_of_the_day": "01:00",
///             "timezone": "Europe/London",
///             "refresh_on_day": {
///                 "day_of_month": "1",
///             },
///         },
///     })
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
///         DataSetId = "dataset-id",
///         ScheduleId = "schedule-id",
///         Schedule = new Aws.Quicksight.Inputs.RefreshScheduleScheduleArgs
///         {
///             RefreshType = "INCREMENTAL_REFRESH",
///             ScheduleFrequency = new Aws.Quicksight.Inputs.RefreshScheduleScheduleScheduleFrequencyArgs
///             {
///                 Interval = "MONTHLY",
///                 TimeOfTheDay = "01:00",
///                 Timezone = "Europe/London",
///                 RefreshOnDay = new Aws.Quicksight.Inputs.RefreshScheduleScheduleScheduleFrequencyRefreshOnDayArgs
///                 {
///                     DayOfMonth = "1",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/quicksight"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := quicksight.NewRefreshSchedule(ctx, "example", &quicksight.RefreshScheduleArgs{
/// 			DataSetId:  pulumi.String("dataset-id"),
/// 			ScheduleId: pulumi.String("schedule-id"),
/// 			Schedule: &quicksight.RefreshScheduleScheduleArgs{
/// 				RefreshType: pulumi.String("INCREMENTAL_REFRESH"),
/// 				ScheduleFrequency: &quicksight.RefreshScheduleScheduleScheduleFrequencyArgs{
/// 					Interval:     pulumi.String("MONTHLY"),
/// 					TimeOfTheDay: pulumi.String("01:00"),
/// 					Timezone:     pulumi.String("Europe/London"),
/// 					RefreshOnDay: &quicksight.RefreshScheduleScheduleScheduleFrequencyRefreshOnDayArgs{
/// 						DayOfMonth: pulumi.String("1"),
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
/// import com.pulumi.aws.quicksight.RefreshSchedule;
/// import com.pulumi.aws.quicksight.RefreshScheduleArgs;
/// import com.pulumi.aws.quicksight.inputs.RefreshScheduleScheduleArgs;
/// import com.pulumi.aws.quicksight.inputs.RefreshScheduleScheduleScheduleFrequencyArgs;
/// import com.pulumi.aws.quicksight.inputs.RefreshScheduleScheduleScheduleFrequencyRefreshOnDayArgs;
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
///         var example = new RefreshSchedule("example", RefreshScheduleArgs.builder()
///             .dataSetId("dataset-id")
///             .scheduleId("schedule-id")
///             .schedule(RefreshScheduleScheduleArgs.builder()
///                 .refreshType("INCREMENTAL_REFRESH")
///                 .scheduleFrequency(RefreshScheduleScheduleScheduleFrequencyArgs.builder()
///                     .interval("MONTHLY")
///                     .timeOfTheDay("01:00")
///                     .timezone("Europe/London")
///                     .refreshOnDay(RefreshScheduleScheduleScheduleFrequencyRefreshOnDayArgs.builder()
///                         .dayOfMonth("1")
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
///   example:
///     type: aws:quicksight:RefreshSchedule
///     properties:
///       dataSetId: dataset-id
///       scheduleId: schedule-id
///       schedule:
///         refreshType: INCREMENTAL_REFRESH
///         scheduleFrequency:
///           interval: MONTHLY
///           timeOfTheDay: 01:00
///           timezone: Europe/London
///           refreshOnDay:
///             dayOfMonth: '1'
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
  /// Amazon Resource Name (ARN) of the refresh schedule.
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
          options ?? pulumi.CustomResourceOptions(),
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
  }) {
    return RefreshSchedule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
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
}
