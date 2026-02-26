import 'package:pulumi/pulumi.dart';
import 'framework_share_args.dart';

/// Resource for managing an AWS Audit Manager Framework Share.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.auditmanager.FrameworkShare("example", {
/// destinationAccount: "123456789012",
/// destinationRegion: "us-east-1",
/// frameworkId: exampleAwsAuditmanagerFramework.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.auditmanager.FrameworkShare("example",
/// destination_account="123456789012",
/// destination_region="us-east-1",
/// framework_id=example_aws_auditmanager_framework["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Auditmanager.FrameworkShare("example", new()
/// {
/// DestinationAccount = "123456789012",
/// DestinationRegion = "us-east-1",
/// FrameworkId = exampleAwsAuditmanagerFramework.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/auditmanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := auditmanager.NewFrameworkShare(ctx, "example", &auditmanager.FrameworkShareArgs{
/// DestinationAccount: pulumi.String("123456789012"),
/// DestinationRegion:  pulumi.String("us-east-1"),
/// FrameworkId:        pulumi.Any(exampleAwsAuditmanagerFramework.Id),
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
/// import com.pulumi.aws.auditmanager.FrameworkShare;
/// import com.pulumi.aws.auditmanager.FrameworkShareArgs;
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
/// var example = new FrameworkShare("example", FrameworkShareArgs.builder()
/// .destinationAccount("123456789012")
/// .destinationRegion("us-east-1")
/// .frameworkId(exampleAwsAuditmanagerFramework.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:auditmanager:FrameworkShare
/// properties:
/// destinationAccount: '123456789012'
/// destinationRegion: us-east-1
/// frameworkId: ${exampleAwsAuditmanagerFramework.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Audit Manager Framework Share using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:auditmanager/frameworkShare:FrameworkShare example abcdef-123456
/// ```
class FrameworkShare extends CustomResource {
  /// Comment from the sender about the share request.
  late final Output<String?> comment;

  /// Amazon Web Services account of the recipient.
  late final Output<String> destinationAccount;

  /// Amazon Web Services region of the recipient.
  late final Output<String> destinationRegion;

  /// Unique identifier for the shared custom framework.
  ///
  /// The following arguments are optional:
  late final Output<String> frameworkId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Status of the share request.
  late final Output<String> status;

  FrameworkShare(
    String name, {
    FrameworkShareArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:auditmanager/frameworkShare:FrameworkShare',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.comment = Output.createUnknown<String?>();
    this.destinationAccount = Output.createUnknown<String>();
    this.destinationRegion = Output.createUnknown<String>();
    this.frameworkId = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.status = Output.createUnknown<String>();
  }
}
