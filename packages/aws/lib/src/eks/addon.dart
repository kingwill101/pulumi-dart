import 'package:pulumi/pulumi.dart' as pulumi;
import 'addon_args.dart';
import 'addon_pod_identity_association.dart';

/// Manages an EKS add-on.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.eks.Addon("example", {
///     clusterName: exampleAwsEksCluster.name,
///     addonName: "vpc-cni",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.eks.Addon("example",
///     cluster_name=example_aws_eks_cluster["name"],
///     addon_name="vpc-cni")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Eks.Addon("example", new()
///     {
///         ClusterName = exampleAwsEksCluster.Name,
///         AddonName = "vpc-cni",
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
/// 		_, err := eks.NewAddon(ctx, "example", &eks.AddonArgs{
/// 			ClusterName: pulumi.Any(exampleAwsEksCluster.Name),
/// 			AddonName:   pulumi.String("vpc-cni"),
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
/// import com.pulumi.aws.eks.Addon;
/// import com.pulumi.aws.eks.AddonArgs;
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
///         var example = new Addon("example", AddonArgs.builder()
///             .clusterName(exampleAwsEksCluster.name())
///             .addonName("vpc-cni")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:eks:Addon
///     properties:
///       clusterName: ${exampleAwsEksCluster.name}
///       addonName: vpc-cni
/// ```
///
///
/// ## Example Update add-on usage with resolve_conflicts_on_update and PRESERVE
///
/// `resolve_conflicts_on_update` with `PRESERVE` can be used to retain the config changes applied to the add-on with kubectl while upgrading to a newer version of the add-on.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.eks.Addon("example", {
///     clusterName: exampleAwsEksCluster.name,
///     addonName: "coredns",
///     addonVersion: "v1.10.1-eksbuild.1",
///     resolveConflictsOnUpdate: "PRESERVE",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.eks.Addon("example",
///     cluster_name=example_aws_eks_cluster["name"],
///     addon_name="coredns",
///     addon_version="v1.10.1-eksbuild.1",
///     resolve_conflicts_on_update="PRESERVE")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Eks.Addon("example", new()
///     {
///         ClusterName = exampleAwsEksCluster.Name,
///         AddonName = "coredns",
///         AddonVersion = "v1.10.1-eksbuild.1",
///         ResolveConflictsOnUpdate = "PRESERVE",
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
/// 		_, err := eks.NewAddon(ctx, "example", &eks.AddonArgs{
/// 			ClusterName:              pulumi.Any(exampleAwsEksCluster.Name),
/// 			AddonName:                pulumi.String("coredns"),
/// 			AddonVersion:             pulumi.String("v1.10.1-eksbuild.1"),
/// 			ResolveConflictsOnUpdate: pulumi.String("PRESERVE"),
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
/// import com.pulumi.aws.eks.Addon;
/// import com.pulumi.aws.eks.AddonArgs;
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
///         var example = new Addon("example", AddonArgs.builder()
///             .clusterName(exampleAwsEksCluster.name())
///             .addonName("coredns")
///             .addonVersion("v1.10.1-eksbuild.1")
///             .resolveConflictsOnUpdate("PRESERVE")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:eks:Addon
///     properties:
///       clusterName: ${exampleAwsEksCluster.name}
///       addonName: coredns
///       addonVersion: v1.10.1-eksbuild.1
///       resolveConflictsOnUpdate: PRESERVE
/// ```
///
///
/// ## Example add-on usage with custom configuration_values
///
/// Custom add-on configuration can be passed using `configuration_values` as a single JSON string while creating or updating the add-on.
///
/// > **Note:** `configuration_values` is a single JSON string should match the valid JSON schema for each add-on with specific version.
///
/// You can use [describe-addon-configuration](https://docs.aws.amazon.com/cli/latest/reference/eks/describe-addon-configuration.html) to extract each add-on's JSON schema.
/// Here's an example command to extract the `configuration_values` schema for `coredns`.
///
/// ```bash
/// aws eks describe-addon-configuration \
///   --addon-name coredns \
///   --addon-version v1.10.1-eksbuild.1 \
///   | jq -r .configurationSchema | jq .
/// ```
///
/// Example to create a `coredns` managed addon with custom `configuration_values`.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.eks.Addon("example", {
///     clusterName: "mycluster",
///     addonName: "coredns",
///     addonVersion: "v1.10.1-eksbuild.1",
///     resolveConflictsOnCreate: "OVERWRITE",
///     configurationValues: JSON.stringify({
///         replicaCount: 4,
///         resources: {
///             limits: {
///                 cpu: "100m",
///                 memory: "150Mi",
///             },
///             requests: {
///                 cpu: "100m",
///                 memory: "150Mi",
///             },
///         },
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.eks.Addon("example",
///     cluster_name="mycluster",
///     addon_name="coredns",
///     addon_version="v1.10.1-eksbuild.1",
///     resolve_conflicts_on_create="OVERWRITE",
///     configuration_values=json.dumps({
///         "replicaCount": 4,
///         "resources": {
///             "limits": {
///                 "cpu": "100m",
///                 "memory": "150Mi",
///             },
///             "requests": {
///                 "cpu": "100m",
///                 "memory": "150Mi",
///             },
///         },
///     }))
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
///     var example = new Aws.Eks.Addon("example", new()
///     {
///         ClusterName = "mycluster",
///         AddonName = "coredns",
///         AddonVersion = "v1.10.1-eksbuild.1",
///         ResolveConflictsOnCreate = "OVERWRITE",
///         ConfigurationValues = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["replicaCount"] = 4,
///             ["resources"] = new Dictionary<string, object?>
///             {
///                 ["limits"] = new Dictionary<string, object?>
///                 {
///                     ["cpu"] = "100m",
///                     ["memory"] = "150Mi",
///                 },
///                 ["requests"] = new Dictionary<string, object?>
///                 {
///                     ["cpu"] = "100m",
///                     ["memory"] = "150Mi",
///                 },
///             },
///         }),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/eks"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"replicaCount": 4,
/// 			"resources": map[string]interface{}{
/// 				"limits": map[string]interface{}{
/// 					"cpu":    "100m",
/// 					"memory": "150Mi",
/// 				},
/// 				"requests": map[string]interface{}{
/// 					"cpu":    "100m",
/// 					"memory": "150Mi",
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = eks.NewAddon(ctx, "example", &eks.AddonArgs{
/// 			ClusterName:              pulumi.String("mycluster"),
/// 			AddonName:                pulumi.String("coredns"),
/// 			AddonVersion:             pulumi.String("v1.10.1-eksbuild.1"),
/// 			ResolveConflictsOnCreate: pulumi.String("OVERWRITE"),
/// 			ConfigurationValues:      pulumi.String(json0),
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
/// import com.pulumi.aws.eks.Addon;
/// import com.pulumi.aws.eks.AddonArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var example = new Addon("example", AddonArgs.builder()
///             .clusterName("mycluster")
///             .addonName("coredns")
///             .addonVersion("v1.10.1-eksbuild.1")
///             .resolveConflictsOnCreate("OVERWRITE")
///             .configurationValues(serializeJson(
///                 jsonObject(
///                     jsonProperty("replicaCount", 4),
///                     jsonProperty("resources", jsonObject(
///                         jsonProperty("limits", jsonObject(
///                             jsonProperty("cpu", "100m"),
///                             jsonProperty("memory", "150Mi")
///                         )),
///                         jsonProperty("requests", jsonObject(
///                             jsonProperty("cpu", "100m"),
///                             jsonProperty("memory", "150Mi")
///                         ))
///                     ))
///                 )))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:eks:Addon
///     properties:
///       clusterName: mycluster
///       addonName: coredns
///       addonVersion: v1.10.1-eksbuild.1
///       resolveConflictsOnCreate: OVERWRITE
///       configurationValues:
///         fn::toJSON:
///           replicaCount: 4
///           resources:
///             limits:
///               cpu: 100m
///               memory: 150Mi
///             requests:
///               cpu: 100m
///               memory: 150Mi
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import EKS add-on using the `cluster_name` and `addon_name` separated by a colon (`:`). For example:
///
/// ```sh
/// $ pulumi import aws:eks/addon:Addon my_eks_addon my_cluster_name:my_addon_name
/// ```
class Addon extends pulumi.CustomResource {
  /// Name of the EKS add-on. The name must match one of
  /// the names returned by [describe-addon-versions](https://docs.aws.amazon.com/cli/latest/reference/eks/describe-addon-versions.html).
  late final pulumi.Output<String> addonName;

  /// The version of the EKS add-on. The version must
  /// match one of the versions returned by [describe-addon-versions](https://docs.aws.amazon.com/cli/latest/reference/eks/describe-addon-versions.html).
  late final pulumi.Output<String> addonVersion;

  /// Amazon Resource Name (ARN) of the EKS add-on.
  late final pulumi.Output<String> arn;

  /// Name of the EKS Cluster.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> clusterName;

  /// custom configuration values for addons with single JSON string. This JSON string value must match the JSON schema derived from [describe-addon-configuration](https://docs.aws.amazon.com/cli/latest/reference/eks/describe-addon-configuration.html).
  late final pulumi.Output<String> configurationValues;

  /// Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the EKS add-on was created.
  late final pulumi.Output<String> createdAt;

  /// Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the EKS add-on was updated.
  late final pulumi.Output<String> modifiedAt;

  /// Configuration block with EKS Pod Identity association settings. See `pod_identity_association` below for details.
  late final pulumi.Output<List<AddonPodIdentityAssociation>?>
      podIdentityAssociations;

  /// Indicates if you want to preserve the created resources when deleting the EKS add-on.
  late final pulumi.Output<bool?> preserve;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// How to resolve field value conflicts when migrating a self-managed add-on to an Amazon EKS add-on. Valid values are `NONE` and `OVERWRITE`. For more details see the [CreateAddon](https://docs.aws.amazon.com/eks/latest/APIReference/API_CreateAddon.html) API Documentation.
  late final pulumi.Output<String?> resolveConflictsOnCreate;

  /// How to resolve field value conflicts for an Amazon EKS add-on if you've changed a value from the Amazon EKS default value. Valid values are `NONE`, `OVERWRITE`, and `PRESERVE`. For more details see the [UpdateAddon](https://docs.aws.amazon.com/eks/latest/APIReference/API_UpdateAddon.html) API Documentation.
  late final pulumi.Output<String?> resolveConflictsOnUpdate;

  /// The Amazon Resource Name (ARN) of an
  /// existing IAM role to bind to the add-on's service account. The role must be
  /// assigned the IAM permissions required by the add-on. If you don't specify
  /// an existing IAM role, then the add-on uses the permissions assigned to the node
  /// IAM role. For more information, see [Amazon EKS node IAM role](https://docs.aws.amazon.com/eks/latest/userguide/create-node-role.html)
  /// in the Amazon EKS User Guide.
  ///
  /// > **Note:** To specify an existing IAM role, you must have an IAM OpenID Connect (OIDC)
  /// provider created for your cluster. For more information, [see Enabling IAM roles
  /// for service accounts on your cluster](https://docs.aws.amazon.com/eks/latest/userguide/enable-iam-roles-for-service-accounts.html)
  /// in the Amazon EKS User Guide.
  late final pulumi.Output<String?> serviceAccountRoleArn;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// (Optional) Key-value map of resource tags, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Addon].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Addon]. {@macro pulumi_eks_addon_addon_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Addon(
    String name, {
    AddonArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:eks/addon:Addon',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.addonName = registerOutput<String>('addonName');
    this.addonVersion = registerOutput<String>('addonVersion');
    this.arn = registerOutput<String>('arn');
    this.clusterName = registerOutput<String>('clusterName');
    this.configurationValues = registerOutput<String>('configurationValues');
    this.createdAt = registerOutput<String>('createdAt');
    this.modifiedAt = registerOutput<String>('modifiedAt');
    this.podIdentityAssociations =
        registerOutput<List<AddonPodIdentityAssociation>?>(
            'podIdentityAssociations');
    this.preserve = registerOutput<bool?>('preserve');
    this.region = registerOutput<String>('region');
    this.resolveConflictsOnCreate =
        registerOutput<String?>('resolveConflictsOnCreate');
    this.resolveConflictsOnUpdate =
        registerOutput<String?>('resolveConflictsOnUpdate');
    this.serviceAccountRoleArn =
        registerOutput<String?>('serviceAccountRoleArn');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
