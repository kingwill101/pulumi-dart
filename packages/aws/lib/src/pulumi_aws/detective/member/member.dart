import 'package:pulumi/pulumi.dart';
import 'member_args.dart';

/// Provides a resource to manage an [Amazon Detective Member](https://docs.aws.amazon.com/detective/latest/APIReference/API_CreateMembers.html).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.detective.Graph("example", {});
/// const exampleMember = new aws.detective.Member("example", {
/// accountId: "AWS ACCOUNT ID",
/// emailAddress: "EMAIL",
/// graphArn: example.graphArn,
/// message: "Message of the invitation",
/// disableEmailNotification: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.detective.Graph("example")
/// example_member = aws.detective.Member("example",
/// account_id="AWS ACCOUNT ID",
/// email_address="EMAIL",
/// graph_arn=example.graph_arn,
/// message="Message of the invitation",
/// disable_email_notification=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Detective.Graph("example");
///
/// var exampleMember = new Aws.Detective.Member("example", new()
/// {
/// AccountId = "AWS ACCOUNT ID",
/// EmailAddress = "EMAIL",
/// GraphArn = example.GraphArn,
/// Message = "Message of the invitation",
/// DisableEmailNotification = true,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/detective"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := detective.NewGraph(ctx, "example", nil)
/// if err != nil {
/// return err
/// }
/// _, err = detective.NewMember(ctx, "example", &detective.MemberArgs{
/// AccountId:                pulumi.String("AWS ACCOUNT ID"),
/// EmailAddress:             pulumi.String("EMAIL"),
/// GraphArn:                 example.GraphArn,
/// Message:                  pulumi.String("Message of the invitation"),
/// DisableEmailNotification: pulumi.Bool(true),
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
/// import com.pulumi.aws.detective.Graph;
/// import com.pulumi.aws.detective.Member;
/// import com.pulumi.aws.detective.MemberArgs;
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
/// var example = new Graph("example");
///
/// var exampleMember = new Member("exampleMember", MemberArgs.builder()
/// .accountId("AWS ACCOUNT ID")
/// .emailAddress("EMAIL")
/// .graphArn(example.graphArn())
/// .message("Message of the invitation")
/// .disableEmailNotification(true)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:detective:Graph
/// exampleMember:
/// type: aws:detective:Member
/// name: example
/// properties:
/// accountId: AWS ACCOUNT ID
/// emailAddress: EMAIL
/// graphArn: ${example.graphArn}
/// message: Message of the invitation
/// disableEmailNotification: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.detective.Member`" pulumi-lang-dotnet="`aws.detective.Member`" pulumi-lang-go="`detective.Member`" pulumi-lang-python="`detective.Member`" pulumi-lang-yaml="`aws.detective.Member`" pulumi-lang-java="`aws.detective.Member`">`aws.detective.Member`</span> using the ARN of the graph followed by the account ID of the member account. For example:
///
/// ```sh
/// $ pulumi import aws:detective/member:Member example arn:aws:detective:us-east-1:123456789101:graph:231684d34gh74g4bae1dbc7bd807d02d/123456789012
/// ```
class Member extends CustomResource {
  /// AWS account ID for the account.
  late final Output<String> accountId;

  /// AWS account ID for the administrator account.
  late final Output<String> administratorId;

  /// If set to true, then the root user of the invited account will _not_ receive an email notification. This notification is in addition to an alert that the root user receives in AWS Personal Health Dashboard. By default, this is set to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> disableEmailNotification;
  late final Output<String> disabledReason;

  /// Email address for the account.
  late final Output<String> emailAddress;

  /// ARN of the behavior graph to invite the member accounts to contribute their data to.
  late final Output<String> graphArn;

  /// Date and time, in UTC and extended RFC 3339 format, when an Amazon Detective membership invitation was last sent to the account.
  late final Output<String> invitedTime;

  /// A custom message to include in the invitation. Amazon Detective adds this message to the standard content that it sends for an invitation.
  late final Output<String?> message;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Current membership status of the member account.
  late final Output<String> status;

  /// Date and time, in UTC and extended RFC 3339 format, of the most recent change to the member account's status.
  late final Output<String> updatedTime;

  /// Data volume in bytes per day for the member account.
  late final Output<String> volumeUsageInBytes;

  Member(
    String name, {
    MemberArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:detective/member:Member',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accountId = Output.createUnknown<String>();
    this.administratorId = Output.createUnknown<String>();
    this.disableEmailNotification = Output.createUnknown<bool?>();
    this.disabledReason = Output.createUnknown<String>();
    this.emailAddress = Output.createUnknown<String>();
    this.graphArn = Output.createUnknown<String>();
    this.invitedTime = Output.createUnknown<String>();
    this.message = Output.createUnknown<String?>();
    this.region = Output.createUnknown<String>();
    this.status = Output.createUnknown<String>();
    this.updatedTime = Output.createUnknown<String>();
    this.volumeUsageInBytes = Output.createUnknown<String>();
  }
}
