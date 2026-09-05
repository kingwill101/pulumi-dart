import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoshift_observer_notification_status_args.dart';
import 'autoshift_observer_notification_status_state.dart';

/// Manages the autoshift observer notification status for AWS Application Recovery Controller Zonal Shift. This controls whether autoshift observer notifications are enabled or disabled.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.arczonalshift.AutoshiftObserverNotificationStatus("example", {status: "ENABLED"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.arczonalshift.AutoshiftObserverNotificationStatus("example", status="ENABLED")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.ArcZonalShift.AutoshiftObserverNotificationStatus("example", new()
///     {
///         Status = "ENABLED",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/arczonalshift"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := arczonalshift.NewAutoshiftObserverNotificationStatus(ctx, "example", &arczonalshift.AutoshiftObserverNotificationStatusArgs{
/// 			Status: pulumi.String("ENABLED"),
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
/// resource "aws_arczonalshift_autoshiftobservernotificationstatus" "example" {
///   status = "ENABLED"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.arczonalshift.AutoshiftObserverNotificationStatus;
/// import com.pulumi.aws.arczonalshift.AutoshiftObserverNotificationStatusArgs;
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
///         var example = new AutoshiftObserverNotificationStatus("example", AutoshiftObserverNotificationStatusArgs.builder()
///             .status("ENABLED")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:arczonalshift:AutoshiftObserverNotificationStatus
///     properties:
///       status: ENABLED
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import ARC Zonal Shift Autoshift Observer Notification Status using the AWS region. For example:
///
/// ```sh
/// $ pulumi import aws:arczonalshift/autoshiftObserverNotificationStatus:AutoshiftObserverNotificationStatus example us-east-1
/// ```
class AutoshiftObserverNotificationStatus extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Autoshift observer notification status. Valid values are `ENABLED` or `DISABLED`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> status;

  /// Creates a new [AutoshiftObserverNotificationStatus].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AutoshiftObserverNotificationStatus]. {@macro pulumi_arczonalshift_autoshift_observer_notification_status_autoshift_observer_notification_status_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AutoshiftObserverNotificationStatus(
    String name, {
    AutoshiftObserverNotificationStatusArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:arczonalshift/autoshiftObserverNotificationStatus:AutoshiftObserverNotificationStatus',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [AutoshiftObserverNotificationStatus] resource's state with the given [name] and [id].
  static AutoshiftObserverNotificationStatus get(
    String name,
    pulumi.Input<String> id, {
    AutoshiftObserverNotificationStatusState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AutoshiftObserverNotificationStatus._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AutoshiftObserverNotificationStatus._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:arczonalshift/autoshiftObserverNotificationStatus:AutoshiftObserverNotificationStatus',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
  }

  /// Creates a typed reference to an existing [AutoshiftObserverNotificationStatus] resource.
  AutoshiftObserverNotificationStatus.reference(String urn)
    : super(
        'aws:arczonalshift/autoshiftObserverNotificationStatus:AutoshiftObserverNotificationStatus',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
  }
}
