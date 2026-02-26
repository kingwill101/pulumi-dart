import 'package:pulumi/pulumi.dart';
import '../event_action_action/event_action_action.dart';
import '../event_action_event/event_action_event.dart';
import 'event_action_args.dart';

/// Resource for managing an AWS Data Exchange Event Action.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.dataexchange.EventAction("example", {
/// event: {
/// revisionPublished: {
/// dataSetId: exampleAwsDataexchangeDataSet.id,
/// },
/// },
/// action: {
/// exportRevisionToS3: {
/// revisionDestination: {
/// bucket: exampleAwsS3Bucket.bucket,
/// keyPattern: "${Revision.CreatedAt}/${Asset.Name}",
/// },
/// encryption: {
/// type: "aws:kms",
/// kmsKeyArn: exampleAwsKmsKey.arn,
/// },
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.dataexchange.EventAction("example",
/// event={
/// "revision_published": {
/// "data_set_id": example_aws_dataexchange_data_set["id"],
/// },
/// },
/// action={
/// "export_revision_to_s3": {
/// "revision_destination": {
/// "bucket": example_aws_s3_bucket["bucket"],
/// "key_pattern": "${Revision.CreatedAt}/${Asset.Name}",
/// },
/// "encryption": {
/// "type": "aws:kms",
/// "kms_key_arn": example_aws_kms_key["arn"],
/// },
/// },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.DataExchange.EventAction("example", new()
/// {
/// Event = new Aws.DataExchange.Inputs.EventActionEventArgs
/// {
/// RevisionPublished = new Aws.DataExchange.Inputs.EventActionEventRevisionPublishedArgs
/// {
/// DataSetId = exampleAwsDataexchangeDataSet.Id,
/// },
/// },
/// Action = new Aws.DataExchange.Inputs.EventActionActionArgs
/// {
/// ExportRevisionToS3 = new Aws.DataExchange.Inputs.EventActionActionExportRevisionToS3Args
/// {
/// RevisionDestination = new Aws.DataExchange.Inputs.EventActionActionExportRevisionToS3RevisionDestinationArgs
/// {
/// Bucket = exampleAwsS3Bucket.Bucket,
/// KeyPattern = "${Revision.CreatedAt}/${Asset.Name}",
/// },
/// Encryption = new Aws.DataExchange.Inputs.EventActionActionExportRevisionToS3EncryptionArgs
/// {
/// Type = "aws:kms",
/// KmsKeyArn = exampleAwsKmsKey.Arn,
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/dataexchange"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dataexchange.NewEventAction(ctx, "example", &dataexchange.EventActionArgs{
/// Event: &dataexchange.EventActionEventArgs{
/// RevisionPublished: &dataexchange.EventActionEventRevisionPublishedArgs{
/// DataSetId: pulumi.Any(exampleAwsDataexchangeDataSet.Id),
/// },
/// },
/// Action: &dataexchange.EventActionActionArgs{
/// ExportRevisionToS3: &dataexchange.EventActionActionExportRevisionToS3Args{
/// RevisionDestination: &dataexchange.EventActionActionExportRevisionToS3RevisionDestinationArgs{
/// Bucket:     pulumi.Any(exampleAwsS3Bucket.Bucket),
/// KeyPattern: pulumi.String("${Revision.CreatedAt}/${Asset.Name}"),
/// },
/// Encryption: &dataexchange.EventActionActionExportRevisionToS3EncryptionArgs{
/// Type:      pulumi.String("aws:kms"),
/// KmsKeyArn: pulumi.Any(exampleAwsKmsKey.Arn),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new EventAction("example", EventActionArgs.builder()
/// .event(EventActionEventArgs.builder()
/// .revisionPublished(EventActionEventRevisionPublishedArgs.builder()
/// .dataSetId(exampleAwsDataexchangeDataSet.id())
/// .build())
/// .build())
/// .action(EventActionActionArgs.builder()
/// .exportRevisionToS3(EventActionActionExportRevisionToS3Args.builder()
/// .revisionDestination(EventActionActionExportRevisionToS3RevisionDestinationArgs.builder()
/// .bucket(exampleAwsS3Bucket.bucket())
/// .keyPattern("${Revision.CreatedAt}/${Asset.Name}")
/// .build())
/// .encryption(EventActionActionExportRevisionToS3EncryptionArgs.builder()
/// .type("aws:kms")
/// .kmsKeyArn(exampleAwsKmsKey.arn())
/// .build())
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
/// type: aws:dataexchange:EventAction
/// properties:
/// event:
/// revisionPublished:
/// dataSetId: ${exampleAwsDataexchangeDataSet.id}
/// action:
/// exportRevisionToS3:
/// revisionDestination:
/// bucket: ${exampleAwsS3Bucket.bucket}
/// keyPattern: $${Revision.CreatedAt}/$${Asset.Name}
/// encryption:
/// type: aws:kms
/// kmsKeyArn: ${exampleAwsKmsKey.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Data Exchange Event Action using the id. For example:
///
/// ```sh
/// $ pulumi import aws:dataexchange/eventAction:EventAction example example-event-action-id
/// ```
class EventAction extends CustomResource {
  /// Describes the action to take.
  /// Described in <span pulumi-lang-nodejs="`action`" pulumi-lang-dotnet="`Action`" pulumi-lang-go="`action`" pulumi-lang-python="`action`" pulumi-lang-yaml="`action`" pulumi-lang-java="`action`">`action`</span> Configuration Block below.
  late final Output<EventActionAction> action;

  /// Amazon Resource Name (ARN) of the event action.
  late final Output<String> arn;

  /// Date and time when the resource was created.
  late final Output<String> createdAt;

  /// Describes the event that triggers the <span pulumi-lang-nodejs="`action`" pulumi-lang-dotnet="`Action`" pulumi-lang-go="`action`" pulumi-lang-python="`action`" pulumi-lang-yaml="`action`" pulumi-lang-java="`action`">`action`</span>.
  /// Described in <span pulumi-lang-nodejs="`event`" pulumi-lang-dotnet="`Event`" pulumi-lang-go="`event`" pulumi-lang-python="`event`" pulumi-lang-yaml="`event`" pulumi-lang-java="`event`">`event`</span> Configuration Block below.
  late final Output<EventActionEvent> event;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Data and time when the resource was last updated.
  late final Output<String> updatedAt;

  EventAction(
    String name, {
    EventActionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:dataexchange/eventAction:EventAction',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.action = registerOutput<EventActionAction>('action');
    this.arn = registerOutput<String>('arn');
    this.createdAt = registerOutput<String>('createdAt');
    this.event = registerOutput<EventActionEvent>('event');
    this.region = registerOutput<String>('region');
    this.updatedAt = registerOutput<String>('updatedAt');
  }
}
