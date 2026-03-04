import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_args.dart';

/// A secret.
///
/// Uses Azure REST API version 2018-09-15. In version 2.x of the Azure Native provider, it used API version 2018-09-15.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Secrets_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var secret = new AzureNative.DevTestLab.Secret("secret", new()
///     {
///         LabName = "{labName}",
///         Name = "{secretName}",
///         ResourceGroupName = "resourceGroupName",
///         UserName = "{userName}",
///         Value = "{secret}",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	devtestlab "github.com/pulumi/pulumi-azure-native-sdk/devtestlab/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := devtestlab.NewSecret(ctx, "secret", &devtestlab.SecretArgs{
/// 			LabName:           pulumi.String("{labName}"),
/// 			Name:              pulumi.String("{secretName}"),
/// 			ResourceGroupName: pulumi.String("resourceGroupName"),
/// 			UserName:          pulumi.String("{userName}"),
/// 			Value:             pulumi.String("{secret}"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.devtestlab.Secret;
/// import com.pulumi.azurenative.devtestlab.SecretArgs;
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
///         var secret = new Secret("secret", SecretArgs.builder()
///             .labName("{labName}")
///             .name("{secretName}")
///             .resourceGroupName("resourceGroupName")
///             .userName("{userName}")
///             .value("{secret}")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const secret = new azure_native.devtestlab.Secret("secret", {
///     labName: "{labName}",
///     name: "{secretName}",
///     resourceGroupName: "resourceGroupName",
///     userName: "{userName}",
///     value: "{secret}",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// secret = azure_native.devtestlab.Secret("secret",
///     lab_name="{labName}",
///     name="{secretName}",
///     resource_group_name="resourceGroupName",
///     user_name="{userName}",
///     value="{secret}")
///
/// ```
///
/// ```yaml
/// resources:
///   secret:
///     type: azure-native:devtestlab:Secret
///     properties:
///       labName: '{labName}'
///       name: '{secretName}'
///       resourceGroupName: resourceGroupName
///       userName: '{userName}'
///       value: '{secret}'
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:devtestlab:Secret {secretName} /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DevTestLab/labs/{labName}/users/{userName}/secrets/{name}
/// ```
class Secret extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The location of the resource.
  late final pulumi.Output<String?> location;

  /// The name of the resource.
  late final pulumi.Output<String> name;

  /// The provisioning status of the resource.
  late final pulumi.Output<String> provisioningState;

  /// The tags of the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// The unique immutable identifier of a resource (Guid).
  late final pulumi.Output<String> uniqueIdentifier;

  /// The value of the secret for secret creation.
  late final pulumi.Output<String?> value;

  /// Creates a new [Secret].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Secret]. {@macro pulumi_devtestlab_secret_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Secret(String name, {SecretArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure-native:devtestlab:Secret',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    uniqueIdentifier = registerOutput<String>('uniqueIdentifier');
    value = registerOutput<String?>('value');
  }
}
