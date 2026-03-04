import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_rule_args.dart';
import 'event_rule_state.dart';

/// Resource for managing an AWS User Notifications Event Rule.
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
/// const example = new aws.notifications.NotificationConfiguration("example", {
///     name: "example",
///     description: "example configuration",
/// });
/// const exampleEventRule = new aws.notifications.EventRule("example", {
///     eventPattern: JSON.stringify({
///         detail: {
///             state: {
///                 value: ["ALARM"],
///             },
///         },
///     }),
///     eventType: "CloudWatch Alarm State Change",
///     notificationConfigurationArn: example.arn,
///     regions: [
///         "us-east-1",
///         "us-west-2",
///     ],
///     source: "aws.cloudwatch",
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.notifications.NotificationConfiguration("example",
///     name="example",
///     description="example configuration")
/// example_event_rule = aws.notifications.EventRule("example",
///     event_pattern=json.dumps({
///         "detail": {
///             "state": {
///                 "value": ["ALARM"],
///             },
///         },
///     }),
///     event_type="CloudWatch Alarm State Change",
///     notification_configuration_arn=example.arn,
///     regions=[
///         "us-east-1",
///         "us-west-2",
///     ],
///     source="aws.cloudwatch")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Notifications.NotificationConfiguration("example", new()
///     {
///         Name = "example",
///         Description = "example configuration",
///     });
///
///     var exampleEventRule = new Aws.Notifications.EventRule("example", new()
///     {
///         EventPattern = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["detail"] = new Dictionary<string, object?>
///             {
///                 ["state"] = new Dictionary<string, object?>
///                 {
///                     ["value"] = new[]
///                     {
///                         "ALARM",
///                     },
///                 },
///             },
///         }),
///         EventType = "CloudWatch Alarm State Change",
///         NotificationConfigurationArn = example.Arn,
///         Regions = new[]
///         {
///             "us-east-1",
///             "us-west-2",
///         },
///         Source = "aws.cloudwatch",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/notifications"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := notifications.NewNotificationConfiguration(ctx, "example", &notifications.NotificationConfigurationArgs{
/// 			Name:        pulumi.String("example"),
/// 			Description: pulumi.String("example configuration"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"detail": map[string]interface{}{
/// 				"state": map[string]interface{}{
/// 					"value": []string{
/// 						"ALARM",
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = notifications.NewEventRule(ctx, "example", &notifications.EventRuleArgs{
/// 			EventPattern:                 pulumi.String(json0),
/// 			EventType:                    pulumi.String("CloudWatch Alarm State Change"),
/// 			NotificationConfigurationArn: example.Arn,
/// 			Regions: pulumi.StringArray{
/// 				pulumi.String("us-east-1"),
/// 				pulumi.String("us-west-2"),
/// 			},
/// 			Source: pulumi.String("aws.cloudwatch"),
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
/// import com.pulumi.aws.notifications.NotificationConfiguration;
/// import com.pulumi.aws.notifications.NotificationConfigurationArgs;
/// import com.pulumi.aws.notifications.EventRule;
/// import com.pulumi.aws.notifications.EventRuleArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var example = new NotificationConfiguration("example", NotificationConfigurationArgs.builder()
///             .name("example")
///             .description("example configuration")
///             .build());
///
///         var exampleEventRule = new EventRule("exampleEventRule", EventRuleArgs.builder()
///             .eventPattern(serializeJson(
///                 jsonObject(
///                     jsonProperty("detail", jsonObject(
///                         jsonProperty("state", jsonObject(
///                             jsonProperty("value", jsonArray("ALARM"))
///                         ))
///                     ))
///                 )))
///             .eventType("CloudWatch Alarm State Change")
///             .notificationConfigurationArn(example.arn())
///             .regions(
///                 "us-east-1",
///                 "us-west-2")
///             .source("aws.cloudwatch")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:notifications:NotificationConfiguration
///     properties:
///       name: example
///       description: example configuration
///   exampleEventRule:
///     type: aws:notifications:EventRule
///     name: example
///     properties:
///       eventPattern:
///         fn::toJSON:
///           detail:
///             state:
///               value:
///                 - ALARM
///       eventType: CloudWatch Alarm State Change
///       notificationConfigurationArn: ${example.arn}
///       regions:
///         - us-east-1
///         - us-west-2
///       source: aws.cloudwatch
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import User Notifications Event Rule using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:notifications/eventRule:EventRule example arn:aws:notifications::123456789012:configuration/abc123def456ghi789jkl012mno345/rule/abc123def456ghi789jkl012mno345
/// ```
class EventRule extends pulumi.CustomResource {
  /// ARN of the Event Rule.
  late final pulumi.Output<String> arn;

  /// JSON string defining the event pattern to match. Maximum length is 4096 characters.
  late final pulumi.Output<String?> eventPattern;

  /// Type of event to match. Must be between 1 and 128 characters, and match the pattern `([a-zA-Z0-9 \-\(\)])+`.
  late final pulumi.Output<String> eventType;

  /// ARN of the notification configuration to associate with this event rule. Must match the pattern `arn:aws:notifications::[0-9]{12}:configuration/[a-z0-9]{27}`.
  late final pulumi.Output<String> notificationConfigurationArn;

  /// Set of AWS regions where the event rule will be applied. Each region must be between 2 and 25 characters, and match the pattern `([a-z]{1,2})-([a-z]{1,15}-)+([0-9])`.
  late final pulumi.Output<List<String>> regions;

  /// Source of the event. Must be between 1 and 36 characters, and match the pattern `aws.([a-z0-9\-])+`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> source;

  /// Creates a new [EventRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EventRule]. {@macro pulumi_notifications_event_rule_event_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EventRule(
    String name, {
    EventRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:notifications/eventRule:EventRule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    eventPattern = registerOutput<String?>('eventPattern');
    eventType = registerOutput<String>('eventType');
    notificationConfigurationArn = registerOutput<String>(
      'notificationConfigurationArn',
    );
    regions = registerOutput<List<String>>('regions');
    source = registerOutput<String>('source');
  }

  /// Gets an existing [EventRule] resource's state with the given [name] and [id].
  static EventRule get(
    String name,
    pulumi.Input<String> id, {
    EventRuleState? state,
  }) {
    return EventRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EventRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:notifications/eventRule:EventRule',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    eventPattern = registerOutput<String?>('eventPattern');
    eventType = registerOutput<String>('eventType');
    notificationConfigurationArn = registerOutput<String>(
      'notificationConfigurationArn',
    );
    regions = registerOutput<List<String>>('regions');
    source = registerOutput<String>('source');
  }
}
