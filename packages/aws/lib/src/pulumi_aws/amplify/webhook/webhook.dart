import 'package:pulumi/pulumi.dart';
import 'webhook_args.dart';

/// Provides an Amplify Webhook resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.amplify.App("example", {name: "app"});
/// const master = new aws.amplify.Branch("master", {
/// appId: example.id,
/// branchName: "master",
/// });
/// const masterWebhook = new aws.amplify.Webhook("master", {
/// appId: example.id,
/// branchName: master.branchName,
/// description: "triggermaster",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.amplify.App("example", name="app")
/// master = aws.amplify.Branch("master",
/// app_id=example.id,
/// branch_name="master")
/// master_webhook = aws.amplify.Webhook("master",
/// app_id=example.id,
/// branch_name=master.branch_name,
/// description="triggermaster")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Amplify.App("example", new()
/// {
/// Name = "app",
/// });
///
/// var master = new Aws.Amplify.Branch("master", new()
/// {
/// AppId = example.Id,
/// BranchName = "master",
/// });
///
/// var masterWebhook = new Aws.Amplify.Webhook("master", new()
/// {
/// AppId = example.Id,
/// BranchName = master.BranchName,
/// Description = "triggermaster",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/amplify"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := amplify.NewApp(ctx, "example", &amplify.AppArgs{
/// Name: pulumi.String("app"),
/// })
/// if err != nil {
/// return err
/// }
/// master, err := amplify.NewBranch(ctx, "master", &amplify.BranchArgs{
/// AppId:      example.ID(),
/// BranchName: pulumi.String("master"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = amplify.NewWebhook(ctx, "master", &amplify.WebhookArgs{
/// AppId:       example.ID(),
/// BranchName:  master.BranchName,
/// Description: pulumi.String("triggermaster"),
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
/// import com.pulumi.aws.amplify.App;
/// import com.pulumi.aws.amplify.AppArgs;
/// import com.pulumi.aws.amplify.Branch;
/// import com.pulumi.aws.amplify.BranchArgs;
/// import com.pulumi.aws.amplify.Webhook;
/// import com.pulumi.aws.amplify.WebhookArgs;
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
/// var example = new App("example", AppArgs.builder()
/// .name("app")
/// .build());
///
/// var master = new Branch("master", BranchArgs.builder()
/// .appId(example.id())
/// .branchName("master")
/// .build());
///
/// var masterWebhook = new Webhook("masterWebhook", WebhookArgs.builder()
/// .appId(example.id())
/// .branchName(master.branchName())
/// .description("triggermaster")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:amplify:App
/// properties:
/// name: app
/// master:
/// type: aws:amplify:Branch
/// properties:
/// appId: ${example.id}
/// branchName: master
/// masterWebhook:
/// type: aws:amplify:Webhook
/// name: master
/// properties:
/// appId: ${example.id}
/// branchName: ${master.branchName}
/// description: triggermaster
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Amplify webhook using a webhook ID. For example:
///
/// ```sh
/// $ pulumi import aws:amplify/webhook:Webhook master a26b22a0-748b-4b57-b9a0-ae7e601fe4b1
/// ```
class Webhook extends CustomResource {
  /// Unique ID for an Amplify app.
  late final Output<String> appId;

  /// ARN for the webhook.
  late final Output<String> arn;

  /// Name for a branch that is part of the Amplify app.
  late final Output<String> branchName;

  /// Description for a webhook.
  late final Output<String?> description;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// URL of the webhook.
  late final Output<String> url;

  Webhook(
    String name, {
    WebhookArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:amplify/webhook:Webhook',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.appId = registerOutput<String>('appId');
    this.arn = registerOutput<String>('arn');
    this.branchName = registerOutput<String>('branchName');
    this.description = registerOutput<String?>('description');
    this.region = registerOutput<String>('region');
    this.url = registerOutput<String>('url');
  }
}
