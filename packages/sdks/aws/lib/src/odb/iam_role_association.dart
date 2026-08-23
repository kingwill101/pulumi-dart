import 'package:pulumi/pulumi.dart' as pulumi;
import 'iam_role_association_args.dart';
import 'iam_role_association_state.dart';
import 'iam_role_association_timeouts.dart';

/// Manages an AWS Oracle Database@AWS Associate Disassociate IAM Role.
///
/// Currently supported `resourceArn` targets are Cloud VM Clusters and Cloud Autonomous VM Clusters.
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
/// const example = new aws.odb.IamRoleAssociation("example", {
///     awsIntegration: "KmsTde",
///     iamRoleArn: "arn:aws:iam::123456789012:role/odb-iam-role-example",
///     resourceArn: "arn:aws:odb:us-east-1:123456789012:cloud-vm-cluster/odb-example-cluster-id",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.odb.IamRoleAssociation("example",
///     aws_integration="KmsTde",
///     iam_role_arn="arn:aws:iam::123456789012:role/odb-iam-role-example",
///     resource_arn="arn:aws:odb:us-east-1:123456789012:cloud-vm-cluster/odb-example-cluster-id")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Odb.IamRoleAssociation("example", new()
///     {
///         AwsIntegration = "KmsTde",
///         IamRoleArn = "arn:aws:iam::123456789012:role/odb-iam-role-example",
///         ResourceArn = "arn:aws:odb:us-east-1:123456789012:cloud-vm-cluster/odb-example-cluster-id",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/odb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := odb.NewIamRoleAssociation(ctx, "example", &odb.IamRoleAssociationArgs{
/// 			AwsIntegration: pulumi.String("KmsTde"),
/// 			IamRoleArn:     pulumi.String("arn:aws:iam::123456789012:role/odb-iam-role-example"),
/// 			ResourceArn:    pulumi.String("arn:aws:odb:us-east-1:123456789012:cloud-vm-cluster/odb-example-cluster-id"),
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
/// resource "aws_odb_iamroleassociation" "example" {
///   aws_integration = "KmsTde"
///   iam_role_arn    = "arn:aws:iam::123456789012:role/odb-iam-role-example"
///   resource_arn    = "arn:aws:odb:us-east-1:123456789012:cloud-vm-cluster/odb-example-cluster-id"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.odb.IamRoleAssociation;
/// import com.pulumi.aws.odb.IamRoleAssociationArgs;
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
///         var example = new IamRoleAssociation("example", IamRoleAssociationArgs.builder()
///             .awsIntegration("KmsTde")
///             .iamRoleArn("arn:aws:iam::123456789012:role/odb-iam-role-example")
///             .resourceArn("arn:aws:odb:us-east-1:123456789012:cloud-vm-cluster/odb-example-cluster-id")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:odb:IamRoleAssociation
///     properties:
///       awsIntegration: KmsTde
///       iamRoleArn: arn:aws:iam::123456789012:role/odb-iam-role-example
///       resourceArn: arn:aws:odb:us-east-1:123456789012:cloud-vm-cluster/odb-example-cluster-id
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import an Oracle Database@AWS Associate Disassociate IAM Role using the IAM role ARN and resource ARN, separated by a comma. Specify the IAM role ARN first and the resource ARN second. For example:
///
/// ```sh
/// $ pulumi import aws:odb/iamRoleAssociation:IamRoleAssociation example "arn:aws:iam::123456789012:role/odb-iam-role-example,arn:aws:odb:us-east-1:123456789012:cloud-vm-cluster/odb-example-cluster-id"
/// ```
class IamRoleAssociation extends pulumi.CustomResource {
  /// AWS integration configuration for the IAM role association. Valid value: `KmsTde`.
  late final pulumi.Output<String> awsIntegration;
  /// IAM role ARN to associate.
  late final pulumi.Output<String> iamRoleArn;
  /// Region where this resource is managed. Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Oracle Database@AWS resource ARN to associate the IAM role with.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> resourceArn;
  /// Current IAM role association status.
  late final pulumi.Output<String> status;
  /// Additional details about the current status, when available.
  late final pulumi.Output<String> statusReason;
  late final pulumi.Output<IamRoleAssociationTimeouts?> timeouts;

  /// Creates a new [IamRoleAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IamRoleAssociation]. {@macro pulumi_odb_iam_role_association_iam_role_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IamRoleAssociation(
    String name, {
    IamRoleAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:odb/iamRoleAssociation:IamRoleAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    awsIntegration = registerOutput<String>('awsIntegration');
    iamRoleArn = registerOutput<String>('iamRoleArn');
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String>('resourceArn');
    status = registerOutput<String>('status');
    statusReason = registerOutput<String>('statusReason');
    timeouts = registerOutput<IamRoleAssociationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IamRoleAssociationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [IamRoleAssociation] resource's state with the given [name] and [id].
  static IamRoleAssociation get(
    String name,
    pulumi.Input<String> id, {
    IamRoleAssociationState? state,
  }) {
    return IamRoleAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  IamRoleAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:odb/iamRoleAssociation:IamRoleAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    awsIntegration = registerOutput<String>('awsIntegration');
    iamRoleArn = registerOutput<String>('iamRoleArn');
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String>('resourceArn');
    status = registerOutput<String>('status');
    statusReason = registerOutput<String>('statusReason');
    timeouts = registerOutput<IamRoleAssociationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IamRoleAssociationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
