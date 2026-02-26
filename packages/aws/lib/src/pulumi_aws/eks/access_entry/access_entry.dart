import 'package:pulumi/pulumi.dart';
import 'access_entry_args.dart';

/// Access Entry Configurations for an EKS Cluster.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.eks.AccessEntry("example", {
/// clusterName: exampleAwsEksCluster.name,
/// principalArn: exampleAwsIamRole.arn,
/// kubernetesGroups: [
/// "group-1",
/// "group-2",
/// ],
/// type: "STANDARD",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.eks.AccessEntry("example",
/// cluster_name=example_aws_eks_cluster["name"],
/// principal_arn=example_aws_iam_role["arn"],
/// kubernetes_groups=[
/// "group-1",
/// "group-2",
/// ],
/// type="STANDARD")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Eks.AccessEntry("example", new()
/// {
/// ClusterName = exampleAwsEksCluster.Name,
/// PrincipalArn = exampleAwsIamRole.Arn,
/// KubernetesGroups = new[]
/// {
/// "group-1",
/// "group-2",
/// },
/// Type = "STANDARD",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/eks"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := eks.NewAccessEntry(ctx, "example", &eks.AccessEntryArgs{
/// ClusterName:  pulumi.Any(exampleAwsEksCluster.Name),
/// PrincipalArn: pulumi.Any(exampleAwsIamRole.Arn),
/// KubernetesGroups: pulumi.StringArray{
/// pulumi.String("group-1"),
/// pulumi.String("group-2"),
/// },
/// Type: pulumi.String("STANDARD"),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new AccessEntry("example", AccessEntryArgs.builder()
/// .clusterName(exampleAwsEksCluster.name())
/// .principalArn(exampleAwsIamRole.arn())
/// .kubernetesGroups(
/// "group-1",
/// "group-2")
/// .type("STANDARD")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:eks:AccessEntry
/// properties:
/// clusterName: ${exampleAwsEksCluster.name}
/// principalArn: ${exampleAwsIamRole.arn}
/// kubernetesGroups:
/// - group-1
/// - group-2
/// type: STANDARD
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import EKS access entry using the <span pulumi-lang-nodejs="`clusterName`" pulumi-lang-dotnet="`ClusterName`" pulumi-lang-go="`clusterName`" pulumi-lang-python="`cluster_name`" pulumi-lang-yaml="`clusterName`" pulumi-lang-java="`clusterName`">`cluster_name`</span> and <span pulumi-lang-nodejs="`principalArn`" pulumi-lang-dotnet="`PrincipalArn`" pulumi-lang-go="`principalArn`" pulumi-lang-python="`principal_arn`" pulumi-lang-yaml="`principalArn`" pulumi-lang-java="`principalArn`">`principal_arn`</span> separated by a colon (`:`). For example:
///
/// ```sh
/// $ pulumi import aws:eks/accessEntry:AccessEntry my_eks_access_entry my_cluster_name:my_principal_arn
/// ```
class AccessEntry extends CustomResource {
  /// Amazon Resource Name (ARN) of the Access Entry.
  late final Output<String> accessEntryArn;

  /// Name of the EKS Cluster.
  late final Output<String> clusterName;

  /// Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the EKS add-on was created.
  late final Output<String> createdAt;

  /// List of string which can optionally specify the Kubernetes groups the user would belong to when creating an access entry.
  late final Output<List<String>> kubernetesGroups;

  /// Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the EKS add-on was updated.
  late final Output<String> modifiedAt;

  /// The IAM Principal ARN which requires Authentication access to the EKS cluster.
  ///
  /// The following arguments are optional:
  late final Output<String> principalArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// (Optional) Key-value map of resource tags, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Defaults to STANDARD which provides the standard workflow. EC2_LINUX, EC2_WINDOWS, FARGATE_LINUX types disallow users to input a username or groups, and prevent associations.
  late final Output<String?> type;

  /// Defaults to principal ARN if user is principal else defaults to assume-role/session-name is role is used.
  late final Output<String> userName;

  AccessEntry(
    String name, {
    AccessEntryArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:eks/accessEntry:AccessEntry',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accessEntryArn = registerOutput<String>('accessEntryArn');
    this.clusterName = registerOutput<String>('clusterName');
    this.createdAt = registerOutput<String>('createdAt');
    this.kubernetesGroups = registerOutput<List<String>>('kubernetesGroups');
    this.modifiedAt = registerOutput<String>('modifiedAt');
    this.principalArn = registerOutput<String>('principalArn');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.type = registerOutput<String?>('type');
    this.userName = registerOutput<String>('userName');
  }
}
