import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_entry_args.dart';
import 'access_entry_state.dart';

/// Access Entry Configurations for an EKS Cluster.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.eks.AccessEntry("example", {
///     clusterName: exampleAwsEksCluster.name,
///     principalArn: exampleAwsIamRole.arn,
///     kubernetesGroups: [
///         "group-1",
///         "group-2",
///     ],
///     type: "STANDARD",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.eks.AccessEntry("example",
///     cluster_name=example_aws_eks_cluster["name"],
///     principal_arn=example_aws_iam_role["arn"],
///     kubernetes_groups=[
///         "group-1",
///         "group-2",
///     ],
///     type="STANDARD")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Eks.AccessEntry("example", new()
///     {
///         ClusterName = exampleAwsEksCluster.Name,
///         PrincipalArn = exampleAwsIamRole.Arn,
///         KubernetesGroups = new[]
///         {
///             "group-1",
///             "group-2",
///         },
///         Type = "STANDARD",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/eks"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := eks.NewAccessEntry(ctx, "example", &eks.AccessEntryArgs{
/// 			ClusterName:  pulumi.Any(exampleAwsEksCluster.Name),
/// 			PrincipalArn: pulumi.Any(exampleAwsIamRole.Arn),
/// 			KubernetesGroups: pulumi.StringArray{
/// 				pulumi.String("group-1"),
/// 				pulumi.String("group-2"),
/// 			},
/// 			Type: pulumi.String("STANDARD"),
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
/// import com.pulumi.aws.eks.AccessEntry;
/// import com.pulumi.aws.eks.AccessEntryArgs;
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
///         var example = new AccessEntry("example", AccessEntryArgs.builder()
///             .clusterName(exampleAwsEksCluster.name())
///             .principalArn(exampleAwsIamRole.arn())
///             .kubernetesGroups(
///                 "group-1",
///                 "group-2")
///             .type("STANDARD")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:eks:AccessEntry
///     properties:
///       clusterName: ${exampleAwsEksCluster.name}
///       principalArn: ${exampleAwsIamRole.arn}
///       kubernetesGroups:
///         - group-1
///         - group-2
///       type: STANDARD
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import EKS access entry using the `cluster_name` and `principal_arn` separated by a colon (`:`). For example:
///
/// ```sh
/// $ pulumi import aws:eks/accessEntry:AccessEntry my_eks_access_entry my_cluster_name:my_principal_arn
/// ```
class AccessEntry extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the Access Entry.
  late final pulumi.Output<String> accessEntryArn;
  /// Name of the EKS Cluster.
  late final pulumi.Output<String> clusterName;
  /// Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the EKS add-on was created.
  late final pulumi.Output<String> createdAt;
  /// List of string which can optionally specify the Kubernetes groups the user would belong to when creating an access entry.
  late final pulumi.Output<List<String>> kubernetesGroups;
  /// Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the EKS add-on was updated.
  late final pulumi.Output<String> modifiedAt;
  /// The IAM Principal ARN which requires Authentication access to the EKS cluster.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> principalArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// (Optional) Key-value map of resource tags, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Defaults to STANDARD which provides the standard workflow. EC2_LINUX, EC2_WINDOWS, FARGATE_LINUX types disallow users to input a username or groups, and prevent associations.
  late final pulumi.Output<String?> type;
  /// Defaults to principal ARN if user is principal else defaults to assume-role/session-name is role is used.
  late final pulumi.Output<String> userName;

  /// Creates a new [AccessEntry].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccessEntry]. {@macro pulumi_eks_access_entry_access_entry_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccessEntry(
    String name, {
    AccessEntryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:eks/accessEntry:AccessEntry',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessEntryArn = registerOutput<String>('accessEntryArn');
    clusterName = registerOutput<String>('clusterName');
    createdAt = registerOutput<String>('createdAt');
    kubernetesGroups = registerOutput<List<String>>('kubernetesGroups');
    modifiedAt = registerOutput<String>('modifiedAt');
    principalArn = registerOutput<String>('principalArn');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    type = registerOutput<String?>('type');
    userName = registerOutput<String>('userName');
  }

  /// Gets an existing [AccessEntry] resource's state with the given [name] and [id].
  static AccessEntry get(
    String name,
    pulumi.Input<String> id, {
    AccessEntryState? state,
  }) {
    return AccessEntry._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AccessEntry._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:eks/accessEntry:AccessEntry',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessEntryArn = registerOutput<String>('accessEntryArn');
    clusterName = registerOutput<String>('clusterName');
    createdAt = registerOutput<String>('createdAt');
    kubernetesGroups = registerOutput<List<String>>('kubernetesGroups');
    modifiedAt = registerOutput<String>('modifiedAt');
    principalArn = registerOutput<String>('principalArn');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    type = registerOutput<String?>('type');
    userName = registerOutput<String>('userName');
  }
}
