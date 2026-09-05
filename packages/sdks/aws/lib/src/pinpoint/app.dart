import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_args.dart';
import 'app_campaign_hook.dart';
import 'app_limits.dart';
import 'app_quiet_time.dart';
import 'app_state.dart';

/// Provides an End User Messaging App resource.
///
/// &gt; **NOTE:** The `campaignHook`, `limits`, and `quietTime` attributes are deprecated. AWS End User Messaging engagement features, including the Settings API that backs these attributes, are being discontinued on October 30, 2026. See the [AWS End User Messaging migration guide](https://docs.aws.amazon.com/pinpoint/latest/userguide/migrate.html) for details.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.pinpoint.App("example", {
///     limits: {
///         maximumDuration: 600,
///     },
///     quietTime: {
///         start: "00:00",
///         end: "06:00",
///     },
///     name: "test-app",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.pinpoint.App("example",
///     limits={
///         "maximum_duration": 600,
///     },
///     quiet_time={
///         "start": "00:00",
///         "end": "06:00",
///     },
///     name="test-app")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Pinpoint.App("example", new()
///     {
///         Limits = new Aws.Pinpoint.Inputs.AppLimitsArgs
///         {
///             MaximumDuration = 600,
///         },
///         QuietTime = new Aws.Pinpoint.Inputs.AppQuietTimeArgs
///         {
///             Start = "00:00",
///             End = "06:00",
///         },
///         Name = "test-app",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/pinpoint"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := pinpoint.NewApp(ctx, "example", &pinpoint.AppArgs{
/// 			Limits: &pinpoint.AppLimitsArgs{
/// 				MaximumDuration: pulumi.Int(600),
/// 			},
/// 			QuietTime: &pinpoint.AppQuietTimeArgs{
/// 				Start: pulumi.String("00:00"),
/// 				End:   pulumi.String("06:00"),
/// 			},
/// 			Name: pulumi.String("test-app"),
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
/// resource "aws_pinpoint_app" "example" {
///   limits = {
///     maximum_duration = 600
///   }
///   quiet_time = {
///     start = "00:00"
///     end   = "06:00"
///   }
///   name = "test-app"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.pinpoint.App;
/// import com.pulumi.aws.pinpoint.AppArgs;
/// import com.pulumi.aws.pinpoint.inputs.AppLimitsArgs;
/// import com.pulumi.aws.pinpoint.inputs.AppQuietTimeArgs;
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
///         var example = new App("example", AppArgs.builder()
///             .limits(AppLimitsArgs.builder()
///                 .maximumDuration(600)
///                 .build())
///             .quietTime(AppQuietTimeArgs.builder()
///                 .start("00:00")
///                 .end("06:00")
///                 .build())
///             .name("test-app")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:pinpoint:App
///     properties:
///       limits:
///         maximumDuration: 600
///       quietTime:
///         start: 00:00
///         end: 06:00
///       name: test-app
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import End User Messaging App using the `application-id`. For example:
///
/// ```sh
/// $ pulumi import aws:pinpoint/app:App name application-id
/// ```
class App extends pulumi.CustomResource {
  /// Application ID of the End User Messaging App.
  late final pulumi.Output<String> applicationId;
  /// ARN of the PinPoint Application.
  /// * `campaign_hook[0].lambda_function_name` - Lambda function name or ARN to be called for delivery.
  /// * `campaign_hook[0].mode` - What mode Lambda should be invoked in.
  /// * `campaign_hook[0].web_url` - Web URL to call for hook.
  /// * `limits[0].daily` - Maximum number of messages that the campaign can send daily.
  /// * `limits[0].maximum_duration` - Length of time (in seconds) that the campaign can run before it ends and message deliveries stop.
  /// * `limits[0].messages_per_second` - Number of messages that the campaign can send per second.
  /// * `limits[0].total` - Maximum total number of messages that the campaign can send.
  /// * `quiet_time[0].end` - Default end time for quiet time in ISO 8601 format.
  /// * `quiet_time[0].start` - Default start time for quiet time in ISO 8601 format.
  late final pulumi.Output<String> arn;
  /// Settings for invoking an AWS Lambda function that customizes a segment for a campaign. See below.
  late final pulumi.Output<AppCampaignHook?> campaignHook;
  /// Default campaign limits for the app. These limits apply to each campaign for the app, unless the campaign overrides the default with limits of its own. See below.
  late final pulumi.Output<AppLimits?> limits;
  /// Application name. By default generated by Pulumi.
  late final pulumi.Output<String> name;
  /// Name of the End User Messaging application. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;
  /// Default quiet time for the app. Each campaign for this app sends no messages during this time unless the campaign overrides the default with a quiet time of its own. See below.
  late final pulumi.Output<AppQuietTime?> quietTime;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [App].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [App]. {@macro pulumi_pinpoint_app_app_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  App(
    String name, {
    AppArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:pinpoint/app:App',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    applicationId = registerOutput<String>('applicationId');
    arn = registerOutput<String>('arn');
    campaignHook = registerOutput<AppCampaignHook?>('campaignHook', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppCampaignHook.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    limits = registerOutput<AppLimits?>('limits', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppLimits.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    quietTime = registerOutput<AppQuietTime?>('quietTime', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppQuietTime.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [App] resource's state with the given [name] and [id].
  static App get(
    String name,
    pulumi.Input<String> id, {
    AppState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return App._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  App._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:pinpoint/app:App',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applicationId = registerOutput<String>('applicationId');
    arn = registerOutput<String>('arn');
    campaignHook = registerOutput<AppCampaignHook?>('campaignHook', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppCampaignHook.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    limits = registerOutput<AppLimits?>('limits', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppLimits.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    quietTime = registerOutput<AppQuietTime?>('quietTime', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppQuietTime.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [App] resource.
  App.reference(String urn)
    : super(
        'aws:pinpoint/app:App',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    applicationId = registerOutput<String>('applicationId');
    arn = registerOutput<String>('arn');
    campaignHook = registerOutput<AppCampaignHook?>('campaignHook', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppCampaignHook.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    limits = registerOutput<AppLimits?>('limits', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppLimits.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    quietTime = registerOutput<AppQuietTime?>('quietTime', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppQuietTime.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
