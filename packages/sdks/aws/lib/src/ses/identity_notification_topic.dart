import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_notification_topic_args.dart';
import 'identity_notification_topic_state.dart';

/// Resource for managing SES Identity Notification Topics
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.ses.IdentityNotificationTopic("test", {
///     topicArn: exampleAwsSnsTopic.arn,
///     notificationType: "Bounce",
///     identity: example.domain,
///     includeOriginalHeaders: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.ses.IdentityNotificationTopic("test",
///     topic_arn=example_aws_sns_topic["arn"],
///     notification_type="Bounce",
///     identity=example["domain"],
///     include_original_headers=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.Ses.IdentityNotificationTopic("test", new()
///     {
///         TopicArn = exampleAwsSnsTopic.Arn,
///         NotificationType = "Bounce",
///         Identity = example.Domain,
///         IncludeOriginalHeaders = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ses"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ses.NewIdentityNotificationTopic(ctx, "test", &ses.IdentityNotificationTopicArgs{
/// 			TopicArn:               pulumi.Any(exampleAwsSnsTopic.Arn),
/// 			NotificationType:       pulumi.String("Bounce"),
/// 			Identity:               pulumi.Any(example.Domain),
/// 			IncludeOriginalHeaders: pulumi.Bool(true),
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
/// import com.pulumi.aws.ses.IdentityNotificationTopic;
/// import com.pulumi.aws.ses.IdentityNotificationTopicArgs;
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
///         var test = new IdentityNotificationTopic("test", IdentityNotificationTopicArgs.builder()
///             .topicArn(exampleAwsSnsTopic.arn())
///             .notificationType("Bounce")
///             .identity(example.domain())
///             .includeOriginalHeaders(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:ses:IdentityNotificationTopic
///     properties:
///       topicArn: ${exampleAwsSnsTopic.arn}
///       notificationType: Bounce
///       identity: ${example.domain}
///       includeOriginalHeaders: true
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Identity Notification Topics using the ID of the record. The ID is made up as `IDENTITY|TYPE` where `IDENTITY` is the SES Identity and `TYPE` is the Notification Type. For example:
///
/// ```sh
/// $ pulumi import aws:ses/identityNotificationTopic:IdentityNotificationTopic test 'example.com|Bounce'
/// ```
class IdentityNotificationTopic extends pulumi.CustomResource {
  /// The identity for which the Amazon SNS topic will be set. You can specify an identity by using its name or by using its Amazon Resource Name (ARN).
  late final pulumi.Output<String> identity;

  /// Whether SES should include original email headers in SNS notifications of this type. `false` by default.
  late final pulumi.Output<bool?> includeOriginalHeaders;

  /// The type of notifications that will be published to the specified Amazon SNS topic. Valid Values: `Bounce`, `Complaint` or `Delivery`.
  late final pulumi.Output<String> notificationType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The Amazon Resource Name (ARN) of the Amazon SNS topic. Can be set to `""` (an empty string) to disable publishing.
  late final pulumi.Output<String?> topicArn;

  /// Creates a new [IdentityNotificationTopic].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IdentityNotificationTopic]. {@macro pulumi_ses_identity_notification_topic_identity_notification_topic_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IdentityNotificationTopic(
    String name, {
    IdentityNotificationTopicArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:ses/identityNotificationTopic:IdentityNotificationTopic',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    identity = registerOutput<String>('identity');
    includeOriginalHeaders = registerOutput<bool?>('includeOriginalHeaders');
    notificationType = registerOutput<String>('notificationType');
    region = registerOutput<String>('region');
    topicArn = registerOutput<String?>('topicArn');
  }

  /// Gets an existing [IdentityNotificationTopic] resource's state with the given [name] and [id].
  static IdentityNotificationTopic get(
    String name,
    pulumi.Input<String> id, {
    IdentityNotificationTopicState? state,
  }) {
    return IdentityNotificationTopic._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  IdentityNotificationTopic._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:ses/identityNotificationTopic:IdentityNotificationTopic',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    identity = registerOutput<String>('identity');
    includeOriginalHeaders = registerOutput<bool?>('includeOriginalHeaders');
    notificationType = registerOutput<String>('notificationType');
    region = registerOutput<String>('region');
    topicArn = registerOutput<String?>('topicArn');
  }
}
