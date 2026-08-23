import 'package:pulumi/pulumi.dart' as pulumi;
import 'framework_share_args.dart';
import 'framework_share_state.dart';

/// Resource for managing an AWS Audit Manager Framework Share.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.auditmanager.FrameworkShare("example", {
///     destinationAccount: "123456789012",
///     destinationRegion: "us-east-1",
///     frameworkId: exampleAwsAuditmanagerFramework.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.auditmanager.FrameworkShare("example",
///     destination_account="123456789012",
///     destination_region="us-east-1",
///     framework_id=example_aws_auditmanager_framework["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Auditmanager.FrameworkShare("example", new()
///     {
///         DestinationAccount = "123456789012",
///         DestinationRegion = "us-east-1",
///         FrameworkId = exampleAwsAuditmanagerFramework.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/auditmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := auditmanager.NewFrameworkShare(ctx, "example", &auditmanager.FrameworkShareArgs{
/// 			DestinationAccount: pulumi.String("123456789012"),
/// 			DestinationRegion:  pulumi.String("us-east-1"),
/// 			FrameworkId:        pulumi.Any(exampleAwsAuditmanagerFramework.Id),
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
/// resource "aws_auditmanager_frameworkshare" "example" {
///   destination_account = "123456789012"
///   destination_region  = "us-east-1"
///   framework_id        = exampleAwsAuditmanagerFramework.id
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
///         var example = new FrameworkShare("example", FrameworkShareArgs.builder()
///             .destinationAccount("123456789012")
///             .destinationRegion("us-east-1")
///             .frameworkId(exampleAwsAuditmanagerFramework.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:auditmanager:FrameworkShare
///     properties:
///       destinationAccount: '123456789012'
///       destinationRegion: us-east-1
///       frameworkId: ${exampleAwsAuditmanagerFramework.id}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` (String) Unique identifier for the framework share request.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Audit Manager Framework Share using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:auditmanager/frameworkShare:FrameworkShare example abcdef-123456
/// ```
class FrameworkShare extends pulumi.CustomResource {
  /// Comment from the sender about the share request.
  late final pulumi.Output<String?> comment;
  /// Amazon Web Services account of the recipient.
  late final pulumi.Output<String> destinationAccount;
  /// Amazon Web Services region of the recipient.
  late final pulumi.Output<String> destinationRegion;
  /// Unique identifier for the shared custom framework.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> frameworkId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Status of the share request.
  late final pulumi.Output<String> status;

  /// Creates a new [FrameworkShare].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FrameworkShare]. {@macro pulumi_auditmanager_framework_share_framework_share_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FrameworkShare(
    String name, {
    FrameworkShareArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:auditmanager/frameworkShare:FrameworkShare',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    comment = registerOutput<String?>('comment');
    destinationAccount = registerOutput<String>('destinationAccount');
    destinationRegion = registerOutput<String>('destinationRegion');
    frameworkId = registerOutput<String>('frameworkId');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [FrameworkShare] resource's state with the given [name] and [id].
  static FrameworkShare get(
    String name,
    pulumi.Input<String> id, {
    FrameworkShareState? state,
  }) {
    return FrameworkShare._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FrameworkShare._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:auditmanager/frameworkShare:FrameworkShare',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    comment = registerOutput<String?>('comment');
    destinationAccount = registerOutput<String>('destinationAccount');
    destinationRegion = registerOutput<String>('destinationRegion');
    frameworkId = registerOutput<String>('frameworkId');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
  }
}
