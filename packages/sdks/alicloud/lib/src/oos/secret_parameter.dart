import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_parameter_args.dart';
import 'secret_parameter_state.dart';

/// Provides a Operation Orchestration Service (OOS) Secret Parameter resource.
///
///
///
/// For information about Operation Orchestration Service (OOS) Secret Parameter and how to use it, see [What is Secret Parameter](https://www.alibabacloud.com/help/en/doc-detail/183418.html).
///
/// > **NOTE:** Available since v1.147.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const example = alicloud.resourcemanager.getResourceGroups({});
/// const exampleKey = new alicloud.kms.Key("example", {
///     description: "terraform-example",
///     status: "Enabled",
///     pendingWindowInDays: 7,
/// });
/// const exampleSecretParameter = new alicloud.oos.SecretParameter("example", {
///     secretParameterName: "terraform-example",
///     value: "terraform-example",
///     type: "Secret",
///     keyId: exampleKey.id,
///     description: "terraform-example",
///     tags: {
///         Created: "TF",
///         For: "OosSecretParameter",
///     },
///     resourceGroupId: example.then(example => example.groups?.[0]?.id),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.resourcemanager.get_resource_groups()
/// example_key = alicloud.kms.Key("example",
///     description="terraform-example",
///     status="Enabled",
///     pending_window_in_days=7)
/// example_secret_parameter = alicloud.oos.SecretParameter("example",
///     secret_parameter_name="terraform-example",
///     value="terraform-example",
///     type="Secret",
///     key_id=example_key.id,
///     description="terraform-example",
///     tags={
///         "Created": "TF",
///         "For": "OosSecretParameter",
///     },
///     resource_group_id=example.groups[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.ResourceManager.GetResourceGroups.Invoke();
///
///     var exampleKey = new AliCloud.Kms.Key("example", new()
///     {
///         Description = "terraform-example",
///         Status = "Enabled",
///         PendingWindowInDays = 7,
///     });
///
///     var exampleSecretParameter = new AliCloud.Oos.SecretParameter("example", new()
///     {
///         SecretParameterName = "terraform-example",
///         Value = "terraform-example",
///         Type = "Secret",
///         KeyId = exampleKey.Id,
///         Description = "terraform-example",
///         Tags =
///         {
///             { "Created", "TF" },
///             { "For", "OosSecretParameter" },
///         },
///         ResourceGroupId = example.Apply(getResourceGroupsResult => getResourceGroupsResult.Groups[0]?.Id),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/kms"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/oos"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKey, err := kms.NewKey(ctx, "example", &kms.KeyArgs{
/// 			Description:         pulumi.String("terraform-example"),
/// 			Status:              pulumi.String("Enabled"),
/// 			PendingWindowInDays: pulumi.Int(7),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = oos.NewSecretParameter(ctx, "example", &oos.SecretParameterArgs{
/// 			SecretParameterName: pulumi.String("terraform-example"),
/// 			Value:               pulumi.String("terraform-example"),
/// 			Type:                pulumi.String("Secret"),
/// 			KeyId:               exampleKey.ID(),
/// 			Description:         pulumi.String("terraform-example"),
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
/// 				"For":     pulumi.String("OosSecretParameter"),
/// 			},
/// 			ResourceGroupId: pulumi.String(example.Groups[0].Id),
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.kms.Key;
/// import com.pulumi.alicloud.kms.KeyArgs;
/// import com.pulumi.alicloud.oos.SecretParameter;
/// import com.pulumi.alicloud.oos.SecretParameterArgs;
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
///         final var example = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .build());
///
///         var exampleKey = new Key("exampleKey", KeyArgs.builder()
///             .description("terraform-example")
///             .status("Enabled")
///             .pendingWindowInDays(7)
///             .build());
///
///         var exampleSecretParameter = new SecretParameter("exampleSecretParameter", SecretParameterArgs.builder()
///             .secretParameterName("terraform-example")
///             .value("terraform-example")
///             .type("Secret")
///             .keyId(exampleKey.id())
///             .description("terraform-example")
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "TF"),
///                 Map.entry("For", "OosSecretParameter")
///             ))
///             .resourceGroupId(example.groups()[0].id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleKey:
///     type: alicloud:kms:Key
///     name: example
///     properties:
///       description: terraform-example
///       status: Enabled
///       pendingWindowInDays: 7
///   exampleSecretParameter:
///     type: alicloud:oos:SecretParameter
///     name: example
///     properties:
///       secretParameterName: terraform-example
///       value: terraform-example
///       type: Secret
///       keyId: ${exampleKey.id}
///       description: terraform-example
///       tags:
///         Created: TF
///         For: OosSecretParameter
///       resourceGroupId: ${example.groups[0].id}
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Operation Orchestration Service (OOS) Secret Parameter can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:oos/secretParameter:SecretParameter example <id>
/// ```
class SecretParameter extends pulumi.CustomResource {
  /// The constraints of the encryption parameter. By default, this parameter is null. Valid values:
  /// * `AllowedValues`: The value that is allowed for the encryption parameter. It must be an array string.
  /// * `AllowedPattern`: The pattern that is allowed for the encryption parameter. It must be a regular expression.
  /// * `MinLength`: The minimum length of the encryption parameter.
  /// * `MaxLength`: The maximum length of the encryption parameter.
  late final pulumi.Output<String?> constraints;
  /// Parameter creation time
  late final pulumi.Output<String> createTime;
  /// The description of the encryption parameter. The description must be `1` to `200` characters in length.
  late final pulumi.Output<String?> description;
  /// The ID of the KMS instance.
  late final pulumi.Output<String?> dkmsInstanceId;
  /// The Customer Master Key (CMK) of Key Management Service (KMS) that is used to encrypt the parameter.
  late final pulumi.Output<String?> keyId;
  /// The ID of the Resource Group.
  late final pulumi.Output<String> resourceGroupId;
  /// The name of the encryption parameter.  The name must be `2` to `180` characters in length, and can contain letters, digits, hyphens (-), forward slashes (/) and underscores (_). It cannot start with `ALIYUN`, `ACS`, `ALIBABA`, `ALICLOUD`, or `OOS`.
  late final pulumi.Output<String> secretParameterName;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>> tags;
  /// The data type of the encryption parameter. Valid values: `Secret`.
  late final pulumi.Output<String> type;
  /// The value of the encryption parameter. The value must be `1` to `4096` characters in length.
  late final pulumi.Output<String> value;

  /// Creates a new [SecretParameter].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecretParameter]. {@macro pulumi_oos_secret_parameter_secret_parameter_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecretParameter(
    String name, {
    SecretParameterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:oos/secretParameter:SecretParameter',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.constraints = registerOutput<String?>('constraints');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.dkmsInstanceId = registerOutput<String?>('dkmsInstanceId');
    this.keyId = registerOutput<String?>('keyId');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.secretParameterName = registerOutput<String>('secretParameterName');
    this.tags = registerOutput<Map<String, String>>('tags');
    this.type = registerOutput<String>('type');
    this.value = registerOutput<String>('value');
  }

  /// Gets an existing [SecretParameter] resource's state with the given [name] and [id].
  static SecretParameter get(
    String name,
    pulumi.Input<String> id, {
    SecretParameterState? state,
  }) {
    return SecretParameter._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SecretParameter._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:oos/secretParameter:SecretParameter',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.constraints = registerOutput<String?>('constraints');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.dkmsInstanceId = registerOutput<String?>('dkmsInstanceId');
    this.keyId = registerOutput<String?>('keyId');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.secretParameterName = registerOutput<String>('secretParameterName');
    this.tags = registerOutput<Map<String, String>>('tags');
    this.type = registerOutput<String>('type');
    this.value = registerOutput<String>('value');
  }
}
