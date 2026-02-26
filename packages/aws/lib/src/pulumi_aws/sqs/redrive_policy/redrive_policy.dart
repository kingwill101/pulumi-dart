import 'package:pulumi/pulumi.dart';
import 'redrive_policy_args.dart';

/// Allows you to set a redrive policy of an SQS Queue
/// while referencing ARN of the dead letter queue inside the redrive policy.
///
/// This is useful when you want to set a dedicated
/// dead letter queue for a standard or FIFO queue, but need
/// the dead letter queue to exist before setting the redrive policy.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const q = new aws.sqs.Queue("q", {name: "examplequeue"});
/// const ddl = new aws.sqs.Queue("ddl", {
/// name: "examplequeue-ddl",
/// redriveAllowPolicy: pulumi.jsonStringify({
/// redrivePermission: "byQueue",
/// sourceQueueArns: [q.arn],
/// }),
/// });
/// const qRedrivePolicy = new aws.sqs.RedrivePolicy("q", {
/// queueUrl: q.id,
/// redrivePolicy: pulumi.jsonStringify({
/// deadLetterTargetArn: ddl.arn,
/// maxReceiveCount: 4,
/// }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// q = aws.sqs.Queue("q", name="examplequeue")
/// ddl = aws.sqs.Queue("ddl",
/// name="examplequeue-ddl",
/// redrive_allow_policy=pulumi.Output.json_dumps({
/// "redrivePermission": "byQueue",
/// "sourceQueueArns": [q.arn],
/// }))
/// q_redrive_policy = aws.sqs.RedrivePolicy("q",
/// queue_url=q.id,
/// redrive_policy=pulumi.Output.json_dumps({
/// "deadLetterTargetArn": ddl.arn,
/// "maxReceiveCount": 4,
/// }))
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
/// var q = new Aws.Sqs.Queue("q", new()
/// {
/// Name = "examplequeue",
/// });
///
/// var ddl = new Aws.Sqs.Queue("ddl", new()
/// {
/// Name = "examplequeue-ddl",
/// RedriveAllowPolicy = Output.JsonSerialize(Output.Create(new Dictionary<string, object?>
/// {
/// ["redrivePermission"] = "byQueue",
/// ["sourceQueueArns"] = new[]
/// {
/// q.Arn,
/// },
/// })),
/// });
///
/// var qRedrivePolicy = new Aws.Sqs.RedrivePolicy("q", new()
/// {
/// QueueUrl = q.Id,
/// RedrivePolicyName = Output.JsonSerialize(Output.Create(new Dictionary<string, object?>
/// {
/// ["deadLetterTargetArn"] = ddl.Arn,
/// ["maxReceiveCount"] = 4,
/// })),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "encoding/json"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sqs"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// q, err := sqs.NewQueue(ctx, "q", &sqs.QueueArgs{
/// Name: pulumi.String("examplequeue"),
/// })
/// if err != nil {
/// return err
/// }
/// ddl, err := sqs.NewQueue(ctx, "ddl", &sqs.QueueArgs{
/// Name: pulumi.String("examplequeue-ddl"),
/// RedriveAllowPolicy: q.Arn.ApplyT(func(arn string) (pulumi.String, error) {
/// var _zero pulumi.String
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "redrivePermission": "byQueue",
/// "sourceQueueArns": []string{
/// arn,
/// },
/// })
/// if err != nil {
/// return _zero, err
/// }
/// json0 := string(tmpJSON0)
/// return pulumi.String(json0), nil
/// }).(pulumi.StringOutput),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = sqs.NewRedrivePolicy(ctx, "q", &sqs.RedrivePolicyArgs{
/// QueueUrl: q.ID(),
/// RedrivePolicy: ddl.Arn.ApplyT(func(arn string) (pulumi.String, error) {
/// var _zero pulumi.String
/// tmpJSON1, err := json.Marshal(map[string]interface{}{
/// "deadLetterTargetArn": arn,
/// "maxReceiveCount":     4,
/// })
/// if err != nil {
/// return _zero, err
/// }
/// json1 := string(tmpJSON1)
/// return pulumi.String(json1), nil
/// }).(pulumi.StringOutput),
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
/// import com.pulumi.aws.sqs.Queue;
/// import com.pulumi.aws.sqs.QueueArgs;
/// import com.pulumi.aws.sqs.RedrivePolicy;
/// import com.pulumi.aws.sqs.RedrivePolicyArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
/// var q = new Queue("q", QueueArgs.builder()
/// .name("examplequeue")
/// .build());
///
/// var ddl = new Queue("ddl", QueueArgs.builder()
/// .name("examplequeue-ddl")
/// .redriveAllowPolicy(q.arn().applyValue(_arn -> serializeJson(
/// jsonObject(
/// jsonProperty("redrivePermission", "byQueue"),
/// jsonProperty("sourceQueueArns", jsonArray(_arn))
/// ))))
/// .build());
///
/// var qRedrivePolicy = new RedrivePolicy("qRedrivePolicy", RedrivePolicyArgs.builder()
/// .queueUrl(q.id())
/// .redrivePolicy(ddl.arn().applyValue(_arn -> serializeJson(
/// jsonObject(
/// jsonProperty("deadLetterTargetArn", _arn),
/// jsonProperty("maxReceiveCount", 4)
/// ))))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// q:
/// type: aws:sqs:Queue
/// properties:
/// name: examplequeue
/// ddl:
/// type: aws:sqs:Queue
/// properties:
/// name: examplequeue-ddl
/// redriveAllowPolicy:
/// fn::toJSON:
/// redrivePermission: byQueue
/// sourceQueueArns:
/// - ${q.arn}
/// qRedrivePolicy:
/// type: aws:sqs:RedrivePolicy
/// name: q
/// properties:
/// queueUrl: ${q.id}
/// redrivePolicy:
/// fn::toJSON:
/// deadLetterTargetArn: ${ddl.arn}
/// maxReceiveCount: 4
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import SQS Queue Redrive Policies using the queue URL. For example:
///
/// ```sh
/// $ pulumi import aws:sqs/redrivePolicy:RedrivePolicy test https://queue.amazonaws.com/123456789012/myqueue
/// ```
class RedrivePolicy extends CustomResource {
  /// The URL of the SQS Queue to which to attach the policy
  late final Output<String> queueUrl;

  /// The JSON redrive policy for the SQS queue. Accepts two key/val pairs: `deadLetterTargetArn` and `maxReceiveCount`. Learn more in the [Amazon SQS dead-letter queues documentation](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html).
  late final Output<String> redrivePolicy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  RedrivePolicy(
    String name, {
    RedrivePolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:sqs/redrivePolicy:RedrivePolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.queueUrl = registerOutput<String>('queueUrl');
    this.redrivePolicy = registerOutput<String>('redrivePolicy');
    this.region = registerOutput<String>('region');
  }
}
