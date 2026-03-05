import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_action_action.dart';
import 'event_action_args.dart';
import 'event_action_event.dart';
import 'event_action_state.dart';

/// Resource for managing an AWS Data Exchange Event Action.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.dataexchange.EventAction("example", {
///     event: {
///         revisionPublished: {
///             dataSetId: exampleAwsDataexchangeDataSet.id,
///         },
///     },
///     action: {
///         exportRevisionToS3: {
///             revisionDestination: {
///                 bucket: exampleAwsS3Bucket.bucket,
///                 keyPattern: "${Revision.CreatedAt}/${Asset.Name}",
///             },
///             encryption: {
///                 type: "aws:kms",
///                 kmsKeyArn: exampleAwsKmsKey.arn,
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.dataexchange.EventAction("example",
///     event={
///         "revision_published": {
///             "data_set_id": example_aws_dataexchange_data_set["id"],
///         },
///     },
///     action={
///         "export_revision_to_s3": {
///             "revision_destination": {
///                 "bucket": example_aws_s3_bucket["bucket"],
///                 "key_pattern": "${Revision.CreatedAt}/${Asset.Name}",
///             },
///             "encryption": {
///                 "type": "aws:kms",
///                 "kms_key_arn": example_aws_kms_key["arn"],
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
///     var example = new Aws.DataExchange.EventAction("example", new()
///     {
///         Event = new Aws.DataExchange.Inputs.EventActionEventArgs
///         {
///             RevisionPublished = new Aws.DataExchange.Inputs.EventActionEventRevisionPublishedArgs
///             {
///                 DataSetId = exampleAwsDataexchangeDataSet.Id,
///             },
///         },
///         Action = new Aws.DataExchange.Inputs.EventActionActionArgs
///         {
///             ExportRevisionToS3 = new Aws.DataExchange.Inputs.EventActionActionExportRevisionToS3Args
///             {
///                 RevisionDestination = new Aws.DataExchange.Inputs.EventActionActionExportRevisionToS3RevisionDestinationArgs
///                 {
///                     Bucket = exampleAwsS3Bucket.Bucket,
///                     KeyPattern = "${Revision.CreatedAt}/${Asset.Name}",
///                 },
///                 Encryption = new Aws.DataExchange.Inputs.EventActionActionExportRevisionToS3EncryptionArgs
///                 {
///                     Type = "aws:kms",
///                     KmsKeyArn = exampleAwsKmsKey.Arn,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/dataexchange"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataexchange.NewEventAction(ctx, "example", &dataexchange.EventActionArgs{
/// 			Event: &dataexchange.EventActionEventArgs{
/// 				RevisionPublished: &dataexchange.EventActionEventRevisionPublishedArgs{
/// 					DataSetId: pulumi.Any(exampleAwsDataexchangeDataSet.Id),
/// 				},
/// 			},
/// 			Action: &dataexchange.EventActionActionArgs{
/// 				ExportRevisionToS3: &dataexchange.EventActionActionExportRevisionToS3Args{
/// 					RevisionDestination: &dataexchange.EventActionActionExportRevisionToS3RevisionDestinationArgs{
/// 						Bucket:     pulumi.Any(exampleAwsS3Bucket.Bucket),
/// 						KeyPattern: pulumi.String("${Revision.CreatedAt}/${Asset.Name}"),
/// 					},
/// 					Encryption: &dataexchange.EventActionActionExportRevisionToS3EncryptionArgs{
/// 						Type:      pulumi.String("aws:kms"),
/// 						KmsKeyArn: pulumi.Any(exampleAwsKmsKey.Arn),
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
/// import com.pulumi.aws.dataexchange.EventAction;
/// import com.pulumi.aws.dataexchange.EventActionArgs;
/// import com.pulumi.aws.dataexchange.inputs.EventActionEventArgs;
/// import com.pulumi.aws.dataexchange.inputs.EventActionEventRevisionPublishedArgs;
/// import com.pulumi.aws.dataexchange.inputs.EventActionActionArgs;
/// import com.pulumi.aws.dataexchange.inputs.EventActionActionExportRevisionToS3Args;
/// import com.pulumi.aws.dataexchange.inputs.EventActionActionExportRevisionToS3RevisionDestinationArgs;
/// import com.pulumi.aws.dataexchange.inputs.EventActionActionExportRevisionToS3EncryptionArgs;
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
///         var example = new EventAction("example", EventActionArgs.builder()
///             .event(EventActionEventArgs.builder()
///                 .revisionPublished(EventActionEventRevisionPublishedArgs.builder()
///                     .dataSetId(exampleAwsDataexchangeDataSet.id())
///                     .build())
///                 .build())
///             .action(EventActionActionArgs.builder()
///                 .exportRevisionToS3(EventActionActionExportRevisionToS3Args.builder()
///                     .revisionDestination(EventActionActionExportRevisionToS3RevisionDestinationArgs.builder()
///                         .bucket(exampleAwsS3Bucket.bucket())
///                         .keyPattern("${Revision.CreatedAt}/${Asset.Name}")
///                         .build())
///                     .encryption(EventActionActionExportRevisionToS3EncryptionArgs.builder()
///                         .type("aws:kms")
///                         .kmsKeyArn(exampleAwsKmsKey.arn())
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
///     type: aws:dataexchange:EventAction
///     properties:
///       event:
///         revisionPublished:
///           dataSetId: ${exampleAwsDataexchangeDataSet.id}
///       action:
///         exportRevisionToS3:
///           revisionDestination:
///             bucket: ${exampleAwsS3Bucket.bucket}
///             keyPattern: $${Revision.CreatedAt}/$${Asset.Name}
///           encryption:
///             type: aws:kms
///             kmsKeyArn: ${exampleAwsKmsKey.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Data Exchange Event Action using the id. For example:
///
/// ```sh
/// $ pulumi import aws:dataexchange/eventAction:EventAction example example-event-action-id
/// ```
class EventAction extends pulumi.CustomResource {
  /// Describes the action to take.
  /// Described in `action` Configuration Block below.
  late final pulumi.Output<EventActionAction> action;

  /// Amazon Resource Name (ARN) of the event action.
  late final pulumi.Output<String> arn;

  /// Date and time when the resource was created.
  late final pulumi.Output<String> createdAt;

  /// Describes the event that triggers the `action`.
  /// Described in `event` Configuration Block below.
  late final pulumi.Output<EventActionEvent> event;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Data and time when the resource was last updated.
  late final pulumi.Output<String> updatedAt;

  /// Creates a new [EventAction].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EventAction]. {@macro pulumi_dataexchange_event_action_event_action_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EventAction(
    String name, {
    EventActionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:dataexchange/eventAction:EventAction',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    action = registerOutput<EventActionAction>(
      'action',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return EventActionAction.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    arn = registerOutput<String>('arn');
    createdAt = registerOutput<String>('createdAt');
    event = registerOutput<EventActionEvent>(
      'event',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return EventActionEvent.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    region = registerOutput<String>('region');
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Gets an existing [EventAction] resource's state with the given [name] and [id].
  static EventAction get(
    String name,
    pulumi.Input<String> id, {
    EventActionState? state,
  }) {
    return EventAction._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EventAction._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:dataexchange/eventAction:EventAction',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    action = registerOutput<EventActionAction>(
      'action',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return EventActionAction.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    arn = registerOutput<String>('arn');
    createdAt = registerOutput<String>('createdAt');
    event = registerOutput<EventActionEvent>(
      'event',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return EventActionEvent.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    region = registerOutput<String>('region');
    updatedAt = registerOutput<String>('updatedAt');
  }
}
