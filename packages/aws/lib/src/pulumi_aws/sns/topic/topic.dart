import 'package:pulumi/pulumi.dart';
import 'topic_args.dart';

/// Provides an SNS topic resource
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const userUpdates = new aws.sns.Topic("user_updates", {name: "user-updates-topic"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// user_updates = aws.sns.Topic("user_updates", name="user-updates-topic")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var userUpdates = new Aws.Sns.Topic("user_updates", new()
/// {
/// Name = "user-updates-topic",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sns"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := sns.NewTopic(ctx, "user_updates", &sns.TopicArgs{
/// Name: pulumi.String("user-updates-topic"),
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
/// import com.pulumi.aws.sns.Topic;
/// import com.pulumi.aws.sns.TopicArgs;
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
/// var userUpdates = new Topic("userUpdates", TopicArgs.builder()
/// .name("user-updates-topic")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// userUpdates:
/// type: aws:sns:Topic
/// name: user_updates
/// properties:
/// name: user-updates-topic
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Example with Delivery Policy
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const userUpdates = new aws.sns.Topic("user_updates", {
/// name: "user-updates-topic",
/// deliveryPolicy: `{
/// \\"http\\": {
/// \\"defaultHealthyRetryPolicy\\": {
/// \\"minDelayTarget\\": 20,
/// \\"maxDelayTarget\\": 20,
/// \\"numRetries\\": 3,
/// \\"numMaxDelayRetries\\": 0,
/// \\"numNoDelayRetries\\": 0,
/// \\"numMinDelayRetries\\": 0,
/// \\"backoffFunction\\": \\"linear\\"
/// },
/// \\"disableSubscriptionOverrides\\": false,
/// \\"defaultThrottlePolicy\\": {
/// \\"maxReceivesPerSecond\\": 1
/// }
/// }
/// }
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// user_updates = aws.sns.Topic("user_updates",
/// name="user-updates-topic",
/// delivery_policy="""{
/// \"http\": {
/// \"defaultHealthyRetryPolicy\": {
/// \"minDelayTarget\": 20,
/// \"maxDelayTarget\": 20,
/// \"numRetries\": 3,
/// \"numMaxDelayRetries\": 0,
/// \"numNoDelayRetries\": 0,
/// \"numMinDelayRetries\": 0,
/// \"backoffFunction\": \"linear\"
/// },
/// \"disableSubscriptionOverrides\": false,
/// \"defaultThrottlePolicy\": {
/// \"maxReceivesPerSecond\": 1
/// }
/// }
/// }
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var userUpdates = new Aws.Sns.Topic("user_updates", new()
/// {
/// Name = "user-updates-topic",
/// DeliveryPolicy = @"{
/// \""http\"": {
/// \""defaultHealthyRetryPolicy\"": {
/// \""minDelayTarget\"": 20,
/// \""maxDelayTarget\"": 20,
/// \""numRetries\"": 3,
/// \""numMaxDelayRetries\"": 0,
/// \""numNoDelayRetries\"": 0,
/// \""numMinDelayRetries\"": 0,
/// \""backoffFunction\"": \""linear\""
/// },
/// \""disableSubscriptionOverrides\"": false,
/// \""defaultThrottlePolicy\"": {
/// \""maxReceivesPerSecond\"": 1
/// }
/// }
/// }
/// ",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sns"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := sns.NewTopic(ctx, "user_updates", &sns.TopicArgs{
/// Name: pulumi.String("user-updates-topic"),
/// DeliveryPolicy: pulumi.String(`{
/// \"http\": {
/// \"defaultHealthyRetryPolicy\": {
/// \"minDelayTarget\": 20,
/// \"maxDelayTarget\": 20,
/// \"numRetries\": 3,
/// \"numMaxDelayRetries\": 0,
/// \"numNoDelayRetries\": 0,
/// \"numMinDelayRetries\": 0,
/// \"backoffFunction\": \"linear\"
/// },
/// \"disableSubscriptionOverrides\": false,
/// \"defaultThrottlePolicy\": {
/// \"maxReceivesPerSecond\": 1
/// }
/// }
/// }
/// `),
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
/// import com.pulumi.aws.sns.Topic;
/// import com.pulumi.aws.sns.TopicArgs;
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
/// var userUpdates = new Topic("userUpdates", TopicArgs.builder()
/// .name("user-updates-topic")
/// .deliveryPolicy("""
/// {
/// \"http\": {
/// \"defaultHealthyRetryPolicy\": {
/// \"minDelayTarget\": 20,
/// \"maxDelayTarget\": 20,
/// \"numRetries\": 3,
/// \"numMaxDelayRetries\": 0,
/// \"numNoDelayRetries\": 0,
/// \"numMinDelayRetries\": 0,
/// \"backoffFunction\": \"linear\"
/// },
/// \"disableSubscriptionOverrides\": false,
/// \"defaultThrottlePolicy\": {
/// \"maxReceivesPerSecond\": 1
/// }
/// }
/// }
/// """)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// userUpdates:
/// type: aws:sns:Topic
/// name: user_updates
/// properties:
/// name: user-updates-topic
/// deliveryPolicy: |
/// {
/// \"http\": {
/// \"defaultHealthyRetryPolicy\": {
/// \"minDelayTarget\": 20,
/// \"maxDelayTarget\": 20,
/// \"numRetries\": 3,
/// \"numMaxDelayRetries\": 0,
/// \"numNoDelayRetries\": 0,
/// \"numMinDelayRetries\": 0,
/// \"backoffFunction\": \"linear\"
/// },
/// \"disableSubscriptionOverrides\": false,
/// \"defaultThrottlePolicy\": {
/// \"maxReceivesPerSecond\": 1
/// }
/// }
/// }
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Example with Server-side encryption (SSE)
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const userUpdates = new aws.sns.Topic("user_updates", {
/// name: "user-updates-topic",
/// kmsMasterKeyId: "alias/aws/sns",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// user_updates = aws.sns.Topic("user_updates",
/// name="user-updates-topic",
/// kms_master_key_id="alias/aws/sns")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var userUpdates = new Aws.Sns.Topic("user_updates", new()
/// {
/// Name = "user-updates-topic",
/// KmsMasterKeyId = "alias/aws/sns",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sns"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := sns.NewTopic(ctx, "user_updates", &sns.TopicArgs{
/// Name:           pulumi.String("user-updates-topic"),
/// KmsMasterKeyId: pulumi.String("alias/aws/sns"),
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
/// import com.pulumi.aws.sns.Topic;
/// import com.pulumi.aws.sns.TopicArgs;
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
/// var userUpdates = new Topic("userUpdates", TopicArgs.builder()
/// .name("user-updates-topic")
/// .kmsMasterKeyId("alias/aws/sns")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// userUpdates:
/// type: aws:sns:Topic
/// name: user_updates
/// properties:
/// name: user-updates-topic
/// kmsMasterKeyId: alias/aws/sns
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Example with First-In-First-Out (FIFO)
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const userUpdates = new aws.sns.Topic("user_updates", {
/// name: "user-updates-topic.fifo",
/// fifoTopic: true,
/// contentBasedDeduplication: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// user_updates = aws.sns.Topic("user_updates",
/// name="user-updates-topic.fifo",
/// fifo_topic=True,
/// content_based_deduplication=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var userUpdates = new Aws.Sns.Topic("user_updates", new()
/// {
/// Name = "user-updates-topic.fifo",
/// FifoTopic = true,
/// ContentBasedDeduplication = true,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sns"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := sns.NewTopic(ctx, "user_updates", &sns.TopicArgs{
/// Name:                      pulumi.String("user-updates-topic.fifo"),
/// FifoTopic:                 pulumi.Bool(true),
/// ContentBasedDeduplication: pulumi.Bool(true),
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
/// import com.pulumi.aws.sns.Topic;
/// import com.pulumi.aws.sns.TopicArgs;
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
/// var userUpdates = new Topic("userUpdates", TopicArgs.builder()
/// .name("user-updates-topic.fifo")
/// .fifoTopic(true)
/// .contentBasedDeduplication(true)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// userUpdates:
/// type: aws:sns:Topic
/// name: user_updates
/// properties:
/// name: user-updates-topic.fifo
/// fifoTopic: true
/// contentBasedDeduplication: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Message Delivery Status Arguments
///
/// The `<endpoint>_success_feedback_role_arn` and `<endpoint>_failure_feedback_role_arn` arguments are used to give Amazon SNS write access to use CloudWatch Logs on your behalf. The `<endpoint>_success_feedback_sample_rate` argument is for specifying the sample rate percentage (0-100) of successfully delivered messages. After you configure the  `<endpoint>_failure_feedback_role_arn` argument, then all failed message deliveries generate CloudWatch Logs.
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> (String) Amazon Resource Name (ARN) of the SNS topic.
///
///
/// Using `pulumi import`, import SNS Topics using the topic <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:sns/topic:Topic user_updates arn:aws:sns:us-west-2:123456789012:my-topic
/// ```
class Topic extends CustomResource {
  /// IAM role for failure feedback
  late final Output<String?> applicationFailureFeedbackRoleArn;

  /// The IAM role permitted to receive success feedback for this topic
  late final Output<String?> applicationSuccessFeedbackRoleArn;

  /// Percentage of success to sample
  late final Output<int?> applicationSuccessFeedbackSampleRate;

  /// The message archive policy for FIFO topics. More details in the [AWS documentation](https://docs.aws.amazon.com/sns/latest/dg/message-archiving-and-replay-topic-owner.html).
  late final Output<String?> archivePolicy;

  /// The ARN of the SNS topic, as a more obvious property (clone of id)
  late final Output<String> arn;

  /// The oldest timestamp at which a FIFO topic subscriber can start a replay.
  late final Output<String> beginningArchiveTime;

  /// Enables content-based deduplication for FIFO topics. For more information, see the [related documentation](https://docs.aws.amazon.com/sns/latest/dg/fifo-message-dedup.html)
  late final Output<bool?> contentBasedDeduplication;

  /// The SNS delivery policy. More details in the [AWS documentation](https://docs.aws.amazon.com/sns/latest/dg/DeliveryPolicies.html).
  late final Output<String?> deliveryPolicy;

  /// The display name for the topic
  late final Output<String?> displayName;

  /// Enables higher throughput for FIFO topics by adjusting the scope of deduplication. This attribute has two possible values, `Topic` and `MessageGroup`. For more information, see the [related documentation](https://docs.aws.amazon.com/sns/latest/dg/fifo-high-throughput.html#enable-high-throughput-on-fifo-topic).
  late final Output<String> fifoThroughputScope;

  /// Boolean indicating whether or not to create a FIFO (first-in-first-out) topic. FIFO topics can't deliver messages to customer managed endpoints, such as email addresses, mobile apps, SMS, or HTTP(S) endpoints. These endpoint types aren't guaranteed to preserve strict message ordering. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> fifoTopic;

  /// IAM role for failure feedback
  late final Output<String?> firehoseFailureFeedbackRoleArn;

  /// The IAM role permitted to receive success feedback for this topic
  late final Output<String?> firehoseSuccessFeedbackRoleArn;

  /// Percentage of success to sample
  late final Output<int?> firehoseSuccessFeedbackSampleRate;

  /// IAM role for failure feedback
  late final Output<String?> httpFailureFeedbackRoleArn;

  /// The IAM role permitted to receive success feedback for this topic
  late final Output<String?> httpSuccessFeedbackRoleArn;

  /// Percentage of success to sample
  late final Output<int?> httpSuccessFeedbackSampleRate;

  /// The ID of an AWS-managed customer master key (CMK) for Amazon SNS or a custom CMK. For more information, see [Key Terms](https://docs.aws.amazon.com/sns/latest/dg/sns-server-side-encryption.html#sse-key-terms)
  late final Output<String?> kmsMasterKeyId;

  /// IAM role for failure feedback
  late final Output<String?> lambdaFailureFeedbackRoleArn;

  /// The IAM role permitted to receive success feedback for this topic
  late final Output<String?> lambdaSuccessFeedbackRoleArn;

  /// Percentage of success to sample
  late final Output<int?> lambdaSuccessFeedbackSampleRate;

  /// The name of the topic. Topic names must be made up of only uppercase and lowercase ASCII letters, numbers, underscores, and hyphens, and must be between 1 and 256 characters long. For a FIFO (first-in-first-out) topic, the name must end with the `.fifo` suffix. If omitted, the provider will assign a random, unique name. Conflicts with <span pulumi-lang-nodejs="`namePrefix`" pulumi-lang-dotnet="`NamePrefix`" pulumi-lang-go="`namePrefix`" pulumi-lang-python="`name_prefix`" pulumi-lang-yaml="`namePrefix`" pulumi-lang-java="`namePrefix`">`name_prefix`</span>
  late final Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>
  late final Output<String> namePrefix;

  /// The AWS Account ID of the SNS topic owner
  late final Output<String> owner;

  /// The fully-formed AWS policy as JSON.
  late final Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// If `SignatureVersion` should be [1 (SHA1) or 2 (SHA256)](https://docs.aws.amazon.com/sns/latest/dg/sns-verify-signature-of-message.html). The signature version corresponds to the hashing algorithm used while creating the signature of the notifications, subscription confirmations, or unsubscribe confirmation messages sent by Amazon SNS.
  late final Output<int> signatureVersion;

  /// IAM role for failure feedback
  late final Output<String?> sqsFailureFeedbackRoleArn;

  /// The IAM role permitted to receive success feedback for this topic
  late final Output<String?> sqsSuccessFeedbackRoleArn;

  /// Percentage of success to sample
  late final Output<int?> sqsSuccessFeedbackSampleRate;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Tracing mode of an Amazon SNS topic. Valid values: `"PassThrough"`, `"Active"`.
  late final Output<String> tracingConfig;

  Topic(
    String name, {
    TopicArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:sns/topic:Topic',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.applicationFailureFeedbackRoleArn =
        registerOutput<String?>('applicationFailureFeedbackRoleArn');
    this.applicationSuccessFeedbackRoleArn =
        registerOutput<String?>('applicationSuccessFeedbackRoleArn');
    this.applicationSuccessFeedbackSampleRate =
        registerOutput<int?>('applicationSuccessFeedbackSampleRate');
    this.archivePolicy = registerOutput<String?>('archivePolicy');
    this.arn = registerOutput<String>('arn');
    this.beginningArchiveTime = registerOutput<String>('beginningArchiveTime');
    this.contentBasedDeduplication =
        registerOutput<bool?>('contentBasedDeduplication');
    this.deliveryPolicy = registerOutput<String?>('deliveryPolicy');
    this.displayName = registerOutput<String?>('displayName');
    this.fifoThroughputScope = registerOutput<String>('fifoThroughputScope');
    this.fifoTopic = registerOutput<bool?>('fifoTopic');
    this.firehoseFailureFeedbackRoleArn =
        registerOutput<String?>('firehoseFailureFeedbackRoleArn');
    this.firehoseSuccessFeedbackRoleArn =
        registerOutput<String?>('firehoseSuccessFeedbackRoleArn');
    this.firehoseSuccessFeedbackSampleRate =
        registerOutput<int?>('firehoseSuccessFeedbackSampleRate');
    this.httpFailureFeedbackRoleArn =
        registerOutput<String?>('httpFailureFeedbackRoleArn');
    this.httpSuccessFeedbackRoleArn =
        registerOutput<String?>('httpSuccessFeedbackRoleArn');
    this.httpSuccessFeedbackSampleRate =
        registerOutput<int?>('httpSuccessFeedbackSampleRate');
    this.kmsMasterKeyId = registerOutput<String?>('kmsMasterKeyId');
    this.lambdaFailureFeedbackRoleArn =
        registerOutput<String?>('lambdaFailureFeedbackRoleArn');
    this.lambdaSuccessFeedbackRoleArn =
        registerOutput<String?>('lambdaSuccessFeedbackRoleArn');
    this.lambdaSuccessFeedbackSampleRate =
        registerOutput<int?>('lambdaSuccessFeedbackSampleRate');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.owner = registerOutput<String>('owner');
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
    this.signatureVersion = registerOutput<int>('signatureVersion');
    this.sqsFailureFeedbackRoleArn =
        registerOutput<String?>('sqsFailureFeedbackRoleArn');
    this.sqsSuccessFeedbackRoleArn =
        registerOutput<String?>('sqsSuccessFeedbackRoleArn');
    this.sqsSuccessFeedbackSampleRate =
        registerOutput<int?>('sqsSuccessFeedbackSampleRate');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.tracingConfig = registerOutput<String>('tracingConfig');
  }
}
