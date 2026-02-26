import 'package:pulumi/pulumi.dart';
import '../addon_pod_identity_association/addon_pod_identity_association.dart';
import 'addon_args.dart';

/// Manages an EKS add-on.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.eks.Addon("example", {
/// clusterName: exampleAwsEksCluster.name,
/// addonName: "vpc-cni",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.eks.Addon("example",
/// cluster_name=example_aws_eks_cluster["name"],
/// addon_name="vpc-cni")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Eks.Addon("example", new()
/// {
/// ClusterName = exampleAwsEksCluster.Name,
/// AddonName = "vpc-cni",
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
/// _, err := eks.NewAddon(ctx, "example", &eks.AddonArgs{
/// ClusterName: pulumi.Any(exampleAwsEksCluster.Name),
/// AddonName:   pulumi.String("vpc-cni"),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new Addon("example", AddonArgs.builder()
/// .clusterName(exampleAwsEksCluster.name())
/// .addonName("vpc-cni")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:eks:Addon
/// properties:
/// clusterName: ${exampleAwsEksCluster.name}
/// addonName: vpc-cni
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Example Update add-on usage with<span pulumi-lang-nodejs=" resolveConflictsOnUpdate " pulumi-lang-dotnet=" ResolveConflictsOnUpdate " pulumi-lang-go=" resolveConflictsOnUpdate " pulumi-lang-python=" resolve_conflicts_on_update " pulumi-lang-yaml=" resolveConflictsOnUpdate " pulumi-lang-java=" resolveConflictsOnUpdate "> resolve_conflicts_on_update </span>and PRESERVE
///
/// <span pulumi-lang-nodejs="`resolveConflictsOnUpdate`" pulumi-lang-dotnet="`ResolveConflictsOnUpdate`" pulumi-lang-go="`resolveConflictsOnUpdate`" pulumi-lang-python="`resolve_conflicts_on_update`" pulumi-lang-yaml="`resolveConflictsOnUpdate`" pulumi-lang-java="`resolveConflictsOnUpdate`">`resolve_conflicts_on_update`</span> with `PRESERVE` can be used to retain the config changes applied to the add-on with kubectl while upgrading to a newer version of the add-on.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.eks.Addon("example", {
/// clusterName: exampleAwsEksCluster.name,
/// addonName: "coredns",
/// addonVersion: "v1.10.1-eksbuild.1",
/// resolveConflictsOnUpdate: "PRESERVE",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.eks.Addon("example",
/// cluster_name=example_aws_eks_cluster["name"],
/// addon_name="coredns",
/// addon_version="v1.10.1-eksbuild.1",
/// resolve_conflicts_on_update="PRESERVE")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Eks.Addon("example", new()
/// {
/// ClusterName = exampleAwsEksCluster.Name,
/// AddonName = "coredns",
/// AddonVersion = "v1.10.1-eksbuild.1",
/// ResolveConflictsOnUpdate = "PRESERVE",
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
/// _, err := eks.NewAddon(ctx, "example", &eks.AddonArgs{
/// ClusterName:              pulumi.Any(exampleAwsEksCluster.Name),
/// AddonName:                pulumi.String("coredns"),
/// AddonVersion:             pulumi.String("v1.10.1-eksbuild.1"),
/// ResolveConflictsOnUpdate: pulumi.String("PRESERVE"),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new Addon("example", AddonArgs.builder()
/// .clusterName(exampleAwsEksCluster.name())
/// .addonName("coredns")
/// .addonVersion("v1.10.1-eksbuild.1")
/// .resolveConflictsOnUpdate("PRESERVE")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:eks:Addon
/// properties:
/// clusterName: ${exampleAwsEksCluster.name}
/// addonName: coredns
/// addonVersion: v1.10.1-eksbuild.1
/// resolveConflictsOnUpdate: PRESERVE
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Example add-on usage with custom<span pulumi-lang-nodejs=" configurationValues
/// " pulumi-lang-dotnet=" ConfigurationValues
/// " pulumi-lang-go=" configurationValues
/// " pulumi-lang-python=" configuration_values
/// " pulumi-lang-yaml=" configurationValues
/// " pulumi-lang-java=" configurationValues
/// "> configuration_values
/// </span>
/// Custom add-on configuration can be passed using <span pulumi-lang-nodejs="`configurationValues`" pulumi-lang-dotnet="`ConfigurationValues`" pulumi-lang-go="`configurationValues`" pulumi-lang-python="`configuration_values`" pulumi-lang-yaml="`configurationValues`" pulumi-lang-java="`configurationValues`">`configuration_values`</span> as a single JSON string while creating or updating the add-on.
///
/// > **Note:** <span pulumi-lang-nodejs="`configurationValues`" pulumi-lang-dotnet="`ConfigurationValues`" pulumi-lang-go="`configurationValues`" pulumi-lang-python="`configuration_values`" pulumi-lang-yaml="`configurationValues`" pulumi-lang-java="`configurationValues`">`configuration_values`</span> is a single JSON string should match the valid JSON schema for each add-on with specific version.
///
/// You can use [describe-addon-configuration](https://docs.aws.amazon.com/cli/latest/reference/eks/describe-addon-configuration.html) to extract each add-on's JSON schema.
/// Here's an example command to extract the <span pulumi-lang-nodejs="`configurationValues`" pulumi-lang-dotnet="`ConfigurationValues`" pulumi-lang-go="`configurationValues`" pulumi-lang-python="`configuration_values`" pulumi-lang-yaml="`configurationValues`" pulumi-lang-java="`configurationValues`">`configuration_values`</span> schema for <span pulumi-lang-nodejs="`coredns`" pulumi-lang-dotnet="`Coredns`" pulumi-lang-go="`coredns`" pulumi-lang-python="`coredns`" pulumi-lang-yaml="`coredns`" pulumi-lang-java="`coredns`">`coredns`</span>.
///
/// ```bash
/// aws eks describe-addon-configuration \
/// --addon-name coredns \
/// --addon-version v1.10.1-eksbuild.1 \
/// | jq -r .configurationSchema | jq .
/// ```
///
/// Example to create a <span pulumi-lang-nodejs="`coredns`" pulumi-lang-dotnet="`Coredns`" pulumi-lang-go="`coredns`" pulumi-lang-python="`coredns`" pulumi-lang-yaml="`coredns`" pulumi-lang-java="`coredns`">`coredns`</span> managed addon with custom <span pulumi-lang-nodejs="`configurationValues`" pulumi-lang-dotnet="`ConfigurationValues`" pulumi-lang-go="`configurationValues`" pulumi-lang-python="`configuration_values`" pulumi-lang-yaml="`configurationValues`" pulumi-lang-java="`configurationValues`">`configuration_values`</span>.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.eks.Addon("example", {
/// clusterName: "mycluster",
/// addonName: "coredns",
/// addonVersion: "v1.10.1-eksbuild.1",
/// resolveConflictsOnCreate: "OVERWRITE",
/// configurationValues: JSON.stringify({
/// replicaCount: 4,
/// resources: {
/// limits: {
/// cpu: "100m",
/// memory: "150Mi",
/// },
/// requests: {
/// cpu: "100m",
/// memory: "150Mi",
/// },
/// },
/// }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.eks.Addon("example",
/// cluster_name="mycluster",
/// addon_name="coredns",
/// addon_version="v1.10.1-eksbuild.1",
/// resolve_conflicts_on_create="OVERWRITE",
/// configuration_values=json.dumps({
/// "replicaCount": 4,
/// "resources": {
/// "limits": {
/// "cpu": "100m",
/// "memory": "150Mi",
/// },
/// "requests": {
/// "cpu": "100m",
/// "memory": "150Mi",
/// },
/// },
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
/// var example = new Aws.Eks.Addon("example", new()
/// {
/// ClusterName = "mycluster",
/// AddonName = "coredns",
/// AddonVersion = "v1.10.1-eksbuild.1",
/// ResolveConflictsOnCreate = "OVERWRITE",
/// ConfigurationValues = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["replicaCount"] = 4,
/// ["resources"] = new Dictionary<string, object?>
/// {
/// ["limits"] = new Dictionary<string, object?>
/// {
/// ["cpu"] = "100m",
/// ["memory"] = "150Mi",
/// },
/// ["requests"] = new Dictionary<string, object?>
/// {
/// ["cpu"] = "100m",
/// ["memory"] = "150Mi",
/// },
/// },
/// }),
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/eks"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "replicaCount": 4,
/// "resources": map[string]interface{}{
/// "limits": map[string]interface{}{
/// "cpu":    "100m",
/// "memory": "150Mi",
/// },
/// "requests": map[string]interface{}{
/// "cpu":    "100m",
/// "memory": "150Mi",
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// _, err = eks.NewAddon(ctx, "example", &eks.AddonArgs{
/// ClusterName:              pulumi.String("mycluster"),
/// AddonName:                pulumi.String("coredns"),
/// AddonVersion:             pulumi.String("v1.10.1-eksbuild.1"),
/// ResolveConflictsOnCreate: pulumi.String("OVERWRITE"),
/// ConfigurationValues:      pulumi.String(json0),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new Addon("example", AddonArgs.builder()
/// .clusterName("mycluster")
/// .addonName("coredns")
/// .addonVersion("v1.10.1-eksbuild.1")
/// .resolveConflictsOnCreate("OVERWRITE")
/// .configurationValues(serializeJson(
/// jsonObject(
/// jsonProperty("replicaCount", 4),
/// jsonProperty("resources", jsonObject(
/// jsonProperty("limits", jsonObject(
/// jsonProperty("cpu", "100m"),
/// jsonProperty("memory", "150Mi")
/// )),
/// jsonProperty("requests", jsonObject(
/// jsonProperty("cpu", "100m"),
/// jsonProperty("memory", "150Mi")
/// ))
/// ))
/// )))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:eks:Addon
/// properties:
/// clusterName: mycluster
/// addonName: coredns
/// addonVersion: v1.10.1-eksbuild.1
/// resolveConflictsOnCreate: OVERWRITE
/// configurationValues:
/// fn::toJSON:
/// replicaCount: 4
/// resources:
/// limits:
/// cpu: 100m
/// memory: 150Mi
/// requests:
/// cpu: 100m
/// memory: 150Mi
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import EKS add-on using the <span pulumi-lang-nodejs="`clusterName`" pulumi-lang-dotnet="`ClusterName`" pulumi-lang-go="`clusterName`" pulumi-lang-python="`cluster_name`" pulumi-lang-yaml="`clusterName`" pulumi-lang-java="`clusterName`">`cluster_name`</span> and <span pulumi-lang-nodejs="`addonName`" pulumi-lang-dotnet="`AddonName`" pulumi-lang-go="`addonName`" pulumi-lang-python="`addon_name`" pulumi-lang-yaml="`addonName`" pulumi-lang-java="`addonName`">`addon_name`</span> separated by a colon (`:`). For example:
///
/// ```sh
/// $ pulumi import aws:eks/addon:Addon my_eks_addon my_cluster_name:my_addon_name
/// ```
class Addon extends CustomResource {
  /// Name of the EKS add-on. The name must match one of
  /// the names returned by [describe-addon-versions](https://docs.aws.amazon.com/cli/latest/reference/eks/describe-addon-versions.html).
  late final Output<String> addonName;

  /// The version of the EKS add-on. The version must
  /// match one of the versions returned by [describe-addon-versions](https://docs.aws.amazon.com/cli/latest/reference/eks/describe-addon-versions.html).
  late final Output<String> addonVersion;

  /// Amazon Resource Name (ARN) of the EKS add-on.
  late final Output<String> arn;

  /// Name of the EKS Cluster.
  ///
  /// The following arguments are optional:
  late final Output<String> clusterName;

  /// custom configuration values for addons with single JSON string. This JSON string value must match the JSON schema derived from [describe-addon-configuration](https://docs.aws.amazon.com/cli/latest/reference/eks/describe-addon-configuration.html).
  late final Output<String> configurationValues;

  /// Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the EKS add-on was created.
  late final Output<String> createdAt;

  /// Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the EKS add-on was updated.
  late final Output<String> modifiedAt;

  /// Configuration block with EKS Pod Identity association settings. See <span pulumi-lang-nodejs="`podIdentityAssociation`" pulumi-lang-dotnet="`PodIdentityAssociation`" pulumi-lang-go="`podIdentityAssociation`" pulumi-lang-python="`pod_identity_association`" pulumi-lang-yaml="`podIdentityAssociation`" pulumi-lang-java="`podIdentityAssociation`">`pod_identity_association`</span> below for details.
  late final Output<List<AddonPodIdentityAssociation>?> podIdentityAssociations;

  /// Indicates if you want to preserve the created resources when deleting the EKS add-on.
  late final Output<bool?> preserve;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// How to resolve field value conflicts when migrating a self-managed add-on to an Amazon EKS add-on. Valid values are `NONE` and `OVERWRITE`. For more details see the [CreateAddon](https://docs.aws.amazon.com/eks/latest/APIReference/API_CreateAddon.html) API Documentation.
  late final Output<String?> resolveConflictsOnCreate;

  /// How to resolve field value conflicts for an Amazon EKS add-on if you've changed a value from the Amazon EKS default value. Valid values are `NONE`, `OVERWRITE`, and `PRESERVE`. For more details see the [UpdateAddon](https://docs.aws.amazon.com/eks/latest/APIReference/API_UpdateAddon.html) API Documentation.
  late final Output<String?> resolveConflictsOnUpdate;

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
  late final Output<String?> serviceAccountRoleArn;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// (Optional) Key-value map of resource tags, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  Addon(
    String name, {
    AddonArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:eks/addon:Addon',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
