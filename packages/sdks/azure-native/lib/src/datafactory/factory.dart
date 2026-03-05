import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_configuration_response.dart';
import 'factory_args.dart';
import 'factory_git_hub_configuration_response.dart';
import 'factory_identity_response.dart';
import 'global_parameter_specification_response.dart';
import 'purview_configuration_response.dart';

/// Factory resource type.
///
/// Uses Azure REST API version 2018-06-01. In version 2.x of the Azure Native provider, it used API version 2018-06-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Factories_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var factory = new AzureNative.DataFactory.Factory("factory", new()
///     {
///         FactoryName = "exampleFactoryName",
///         Location = "East US",
///         ResourceGroupName = "exampleResourceGroup",
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
/// 	datafactory "github.com/pulumi/pulumi-azure-native-sdk/datafactory/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datafactory.NewFactory(ctx, "factory", &datafactory.FactoryArgs{
/// 			FactoryName:       pulumi.String("exampleFactoryName"),
/// 			Location:          pulumi.String("East US"),
/// 			ResourceGroupName: pulumi.String("exampleResourceGroup"),
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
/// import com.pulumi.azurenative.datafactory.Factory;
/// import com.pulumi.azurenative.datafactory.FactoryArgs;
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
///         var factory = new Factory("factory", FactoryArgs.builder()
///             .factoryName("exampleFactoryName")
///             .location("East US")
///             .resourceGroupName("exampleResourceGroup")
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
/// const factory = new azure_native.datafactory.Factory("factory", {
///     factoryName: "exampleFactoryName",
///     location: "East US",
///     resourceGroupName: "exampleResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// factory = azure_native.datafactory.Factory("factory",
///     factory_name="exampleFactoryName",
///     location="East US",
///     resource_group_name="exampleResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   factory:
///     type: azure-native:datafactory:Factory
///     properties:
///       factoryName: exampleFactoryName
///       location: East US
///       resourceGroupName: exampleResourceGroup
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
/// $ pulumi import azure-native:datafactory:Factory exampleFactoryName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataFactory/factories/{factoryName}
/// ```
class Factory extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Time the factory was created in ISO8601 format.
  late final pulumi.Output<String> createTime;

  /// Etag identifies change in the resource.
  late final pulumi.Output<String> eTag;

  /// Properties to enable Customer Managed Key for the factory.
  late final pulumi.Output<EncryptionConfigurationResponse?> encryption;

  /// List of parameters for factory.
  late final pulumi.Output<Map<String, GlobalParameterSpecificationResponse>?>
  globalParameters;

  /// Managed service identity of the factory.
  late final pulumi.Output<FactoryIdentityResponse?> identity;

  /// The resource location.
  late final pulumi.Output<String?> location;

  /// The resource name.
  late final pulumi.Output<String> name;

  /// Factory provisioning state, example Succeeded.
  late final pulumi.Output<String> provisioningState;

  /// Whether or not public network access is allowed for the data factory.
  late final pulumi.Output<String?> publicNetworkAccess;

  /// Purview information of the factory.
  late final pulumi.Output<PurviewConfigurationResponse?> purviewConfiguration;

  /// Git repo information of the factory.
  late final pulumi.Output<FactoryGitHubConfigurationResponse?>
  repoConfiguration;

  /// The resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The resource type.
  late final pulumi.Output<String> type;

  /// Version of the factory.
  late final pulumi.Output<String> version;

  /// Creates a new [Factory].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Factory]. {@macro pulumi_datafactory_factory_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Factory(
    String name, {
    FactoryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:datafactory:Factory',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    createTime = registerOutput<String>('createTime');
    eTag = registerOutput<String>('eTag');
    encryption = registerOutput<EncryptionConfigurationResponse?>(
      'encryption',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return EncryptionConfigurationResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    globalParameters =
        registerOutput<Map<String, GlobalParameterSpecificationResponse>?>(
          'globalParameters',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return pulumi
                .Input.decodeMapValues<GlobalParameterSpecificationResponse>(
              guardedValue,
              (value) => GlobalParameterSpecificationResponse.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            );
          },
        );
    identity = registerOutput<FactoryIdentityResponse?>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return FactoryIdentityResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    purviewConfiguration = registerOutput<PurviewConfigurationResponse?>(
      'purviewConfiguration',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return PurviewConfigurationResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    repoConfiguration = registerOutput<FactoryGitHubConfigurationResponse?>(
      'repoConfiguration',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return FactoryGitHubConfigurationResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    version = registerOutput<String>('version');
  }
}
