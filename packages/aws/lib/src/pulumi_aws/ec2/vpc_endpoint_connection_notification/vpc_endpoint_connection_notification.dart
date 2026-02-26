import 'package:pulumi/pulumi.dart';
import 'vpc_endpoint_connection_notification_args.dart';

/// Provides a VPC Endpoint connection notification resource.
/// Connection notifications notify subscribers of VPC Endpoint events.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const topic = aws.iam.getPolicyDocument({
/// statements: [{
/// effect: "Allow",
/// principals: [{
/// type: "Service",
/// identifiers: ["vpce.amazonaws.com"],
/// }],
/// actions: ["SNS:Publish"],
/// resources: ["arn:aws:sns:*:*:vpce-notification-topic"],
/// }],
/// });
/// const topicTopic = new aws.sns.Topic("topic", {
/// name: "vpce-notification-topic",
/// policy: topic.then(topic => topic.json),
/// });
/// const foo = new aws.ec2.VpcEndpointService("foo", {
/// acceptanceRequired: false,
/// networkLoadBalancerArns: [test.arn],
/// });
/// const fooVpcEndpointConnectionNotification = new aws.ec2.VpcEndpointConnectionNotification("foo", {
/// vpcEndpointServiceId: foo.id,
/// connectionNotificationArn: topicTopic.arn,
/// connectionEvents: [
/// "Accept",
/// "Reject",
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// topic = aws.iam.get_policy_document(statements=[{
/// "effect": "Allow",
/// "principals": [{
/// "type": "Service",
/// "identifiers": ["vpce.amazonaws.com"],
/// }],
/// "actions": ["SNS:Publish"],
/// "resources": ["arn:aws:sns:*:*:vpce-notification-topic"],
/// }])
/// topic_topic = aws.sns.Topic("topic",
/// name="vpce-notification-topic",
/// policy=topic.json)
/// foo = aws.ec2.VpcEndpointService("foo",
/// acceptance_required=False,
/// network_load_balancer_arns=[test["arn"]])
/// foo_vpc_endpoint_connection_notification = aws.ec2.VpcEndpointConnectionNotification("foo",
/// vpc_endpoint_service_id=foo.id,
/// connection_notification_arn=topic_topic.arn,
/// connection_events=[
/// "Accept",
/// "Reject",
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var topic = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Effect = "Allow",
/// Principals = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
/// {
/// Type = "Service",
/// Identifiers = new[]
/// {
/// "vpce.amazonaws.com",
/// },
/// },
/// },
/// Actions = new[]
/// {
/// "SNS:Publish",
/// },
/// Resources = new[]
/// {
/// "arn:aws:sns:*:*:vpce-notification-topic",
/// },
/// },
/// },
/// });
///
/// var topicTopic = new Aws.Sns.Topic("topic", new()
/// {
/// Name = "vpce-notification-topic",
/// Policy = topic.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// });
///
/// var foo = new Aws.Ec2.VpcEndpointService("foo", new()
/// {
/// AcceptanceRequired = false,
/// NetworkLoadBalancerArns = new[]
/// {
/// test.Arn,
/// },
/// });
///
/// var fooVpcEndpointConnectionNotification = new Aws.Ec2.VpcEndpointConnectionNotification("foo", new()
/// {
/// VpcEndpointServiceId = foo.Id,
/// ConnectionNotificationArn = topicTopic.Arn,
/// ConnectionEvents = new[]
/// {
/// "Accept",
/// "Reject",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sns"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// topic, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Effect: pulumi.StringRef("Allow"),
/// Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// {
/// Type: "Service",
/// Identifiers: []string{
/// "vpce.amazonaws.com",
/// },
/// },
/// },
/// Actions: []string{
/// "SNS:Publish",
/// },
/// Resources: []string{
/// "arn:aws:sns:*:*:vpce-notification-topic",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// topicTopic, err := sns.NewTopic(ctx, "topic", &sns.TopicArgs{
/// Name:   pulumi.String("vpce-notification-topic"),
/// Policy: pulumi.String(topic.Json),
/// })
/// if err != nil {
/// return err
/// }
/// foo, err := ec2.NewVpcEndpointService(ctx, "foo", &ec2.VpcEndpointServiceArgs{
/// AcceptanceRequired: pulumi.Bool(false),
/// NetworkLoadBalancerArns: pulumi.StringArray{
/// test.Arn,
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ec2.NewVpcEndpointConnectionNotification(ctx, "foo", &ec2.VpcEndpointConnectionNotificationArgs{
/// VpcEndpointServiceId:      foo.ID(),
/// ConnectionNotificationArn: topicTopic.Arn,
/// ConnectionEvents: pulumi.StringArray{
/// pulumi.String("Accept"),
/// pulumi.String("Reject"),
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
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.sns.Topic;
/// import com.pulumi.aws.sns.TopicArgs;
/// import com.pulumi.aws.ec2.VpcEndpointService;
/// import com.pulumi.aws.ec2.VpcEndpointServiceArgs;
/// import com.pulumi.aws.ec2.VpcEndpointConnectionNotification;
/// import com.pulumi.aws.ec2.VpcEndpointConnectionNotificationArgs;
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
/// final var topic = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .effect("Allow")
/// .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
/// .type("Service")
/// .identifiers("vpce.amazonaws.com")
/// .build())
/// .actions("SNS:Publish")
/// .resources("arn:aws:sns:*:*:vpce-notification-topic")
/// .build())
/// .build());
///
/// var topicTopic = new Topic("topicTopic", TopicArgs.builder()
/// .name("vpce-notification-topic")
/// .policy(topic.json())
/// .build());
///
/// var foo = new VpcEndpointService("foo", VpcEndpointServiceArgs.builder()
/// .acceptanceRequired(false)
/// .networkLoadBalancerArns(test.arn())
/// .build());
///
/// var fooVpcEndpointConnectionNotification = new VpcEndpointConnectionNotification("fooVpcEndpointConnectionNotification", VpcEndpointConnectionNotificationArgs.builder()
/// .vpcEndpointServiceId(foo.id())
/// .connectionNotificationArn(topicTopic.arn())
/// .connectionEvents(
/// "Accept",
/// "Reject")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// topicTopic:
/// type: aws:sns:Topic
/// name: topic
/// properties:
/// name: vpce-notification-topic
/// policy: ${topic.json}
/// foo:
/// type: aws:ec2:VpcEndpointService
/// properties:
/// acceptanceRequired: false
/// networkLoadBalancerArns:
/// - ${test.arn}
/// fooVpcEndpointConnectionNotification:
/// type: aws:ec2:VpcEndpointConnectionNotification
/// name: foo
/// properties:
/// vpcEndpointServiceId: ${foo.id}
/// connectionNotificationArn: ${topicTopic.arn}
/// connectionEvents:
/// - Accept
/// - Reject
/// variables:
/// topic:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - effect: Allow
/// principals:
/// - type: Service
/// identifiers:
/// - vpce.amazonaws.com
/// actions:
/// - SNS:Publish
/// resources:
/// - arn:aws:sns:*:*:vpce-notification-topic
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import VPC Endpoint connection notifications using the VPC endpoint connection notification <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpcEndpointConnectionNotification:VpcEndpointConnectionNotification foo vpce-nfn-09e6ed3b4efba2263
/// ```
class VpcEndpointConnectionNotification extends CustomResource {
  /// One or more endpoint [events](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateVpcEndpointConnectionNotification.html#API_CreateVpcEndpointConnectionNotification_RequestParameters) for which to receive notifications.
  ///
  /// > **NOTE:** One of <span pulumi-lang-nodejs="`vpcEndpointServiceId`" pulumi-lang-dotnet="`VpcEndpointServiceId`" pulumi-lang-go="`vpcEndpointServiceId`" pulumi-lang-python="`vpc_endpoint_service_id`" pulumi-lang-yaml="`vpcEndpointServiceId`" pulumi-lang-java="`vpcEndpointServiceId`">`vpc_endpoint_service_id`</span> or <span pulumi-lang-nodejs="`vpcEndpointId`" pulumi-lang-dotnet="`VpcEndpointId`" pulumi-lang-go="`vpcEndpointId`" pulumi-lang-python="`vpc_endpoint_id`" pulumi-lang-yaml="`vpcEndpointId`" pulumi-lang-java="`vpcEndpointId`">`vpc_endpoint_id`</span> must be specified.
  late final Output<List<String>> connectionEvents;

  /// The ARN of the SNS topic for the notifications.
  late final Output<String> connectionNotificationArn;

  /// The type of notification.
  late final Output<String> notificationType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The state of the notification.
  late final Output<String> state;

  /// The ID of the VPC Endpoint to receive notifications for.
  late final Output<String?> vpcEndpointId;

  /// The ID of the VPC Endpoint Service to receive notifications for.
  late final Output<String?> vpcEndpointServiceId;

  VpcEndpointConnectionNotification(
    String name, {
    VpcEndpointConnectionNotificationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpcEndpointConnectionNotification:VpcEndpointConnectionNotification',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.connectionEvents = Output.createUnknown<List<String>>();
    this.connectionNotificationArn = Output.createUnknown<String>();
    this.notificationType = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.vpcEndpointId = Output.createUnknown<String?>();
    this.vpcEndpointServiceId = Output.createUnknown<String?>();
  }
}
