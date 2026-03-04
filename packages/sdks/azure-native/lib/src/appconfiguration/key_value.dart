import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_value_args.dart';

/// The key-value resource along with all resource properties.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-03-01.
///
/// Other available API versions: 2023-03-01, 2023-08-01-preview, 2023-09-01-preview, 2024-06-01, 2024-06-15-preview, 2025-02-01-preview, 2025-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appconfiguration [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### KeyValues_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var keyValue = new AzureNative.AppConfiguration.KeyValue("keyValue", new()
///     {
///         ConfigStoreName = "contoso",
///         KeyValueName = "myKey$myLabel",
///         ResourceGroupName = "myResourceGroup",
///         Tags =
///         {
///             { "tag1", "tagValue1" },
///             { "tag2", "tagValue2" },
///         },
///         Value = "myValue",
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
/// 	appconfiguration "github.com/pulumi/pulumi-azure-native-sdk/appconfiguration/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appconfiguration.NewKeyValue(ctx, "keyValue", &appconfiguration.KeyValueArgs{
/// 			ConfigStoreName:   pulumi.String("contoso"),
/// 			KeyValueName:      pulumi.String("myKey$myLabel"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Tags: pulumi.StringMap{
/// 				"tag1": pulumi.String("tagValue1"),
/// 				"tag2": pulumi.String("tagValue2"),
/// 			},
/// 			Value: pulumi.String("myValue"),
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
/// import com.pulumi.azurenative.appconfiguration.KeyValue;
/// import com.pulumi.azurenative.appconfiguration.KeyValueArgs;
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
///         var keyValue = new KeyValue("keyValue", KeyValueArgs.builder()
///             .configStoreName("contoso")
///             .keyValueName("myKey$myLabel")
///             .resourceGroupName("myResourceGroup")
///             .tags(Map.ofEntries(
///                 Map.entry("tag1", "tagValue1"),
///                 Map.entry("tag2", "tagValue2")
///             ))
///             .value("myValue")
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
/// const keyValue = new azure_native.appconfiguration.KeyValue("keyValue", {
///     configStoreName: "contoso",
///     keyValueName: "myKey$myLabel",
///     resourceGroupName: "myResourceGroup",
///     tags: {
///         tag1: "tagValue1",
///         tag2: "tagValue2",
///     },
///     value: "myValue",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// key_value = azure_native.appconfiguration.KeyValue("keyValue",
///     config_store_name="contoso",
///     key_value_name="myKey$myLabel",
///     resource_group_name="myResourceGroup",
///     tags={
///         "tag1": "tagValue1",
///         "tag2": "tagValue2",
///     },
///     value="myValue")
///
/// ```
///
/// ```yaml
/// resources:
///   keyValue:
///     type: azure-native:appconfiguration:KeyValue
///     properties:
///       configStoreName: contoso
///       keyValueName: myKey$myLabel
///       resourceGroupName: myResourceGroup
///       tags:
///         tag1: tagValue1
///         tag2: tagValue2
///       value: myValue
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
/// $ pulumi import azure-native:appconfiguration:KeyValue myKey$myLabel /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AppConfiguration/configurationStores/{configStoreName}/keyValues/{keyValueName}
/// ```
class KeyValue extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The content type of the key-value's value.
  /// Providing a proper content-type can enable transformations of values when they are retrieved by applications.
  late final pulumi.Output<String?> contentType;

  /// An ETag indicating the state of a key-value within a configuration store.
  late final pulumi.Output<String> eTag;

  /// The primary identifier of a key-value.
  /// The key is used in unison with the label to uniquely identify a key-value.
  late final pulumi.Output<String> key;

  /// A value used to group key-values.
  /// The label is used in unison with the key to uniquely identify a key-value.
  late final pulumi.Output<String> label;

  /// The last time a modifying operation was performed on the given key-value.
  late final pulumi.Output<String> lastModified;

  /// A value indicating whether the key-value is locked.
  /// A locked key-value may not be modified until it is unlocked.
  late final pulumi.Output<bool> locked;

  /// The name of the resource.
  late final pulumi.Output<String> name;

  /// A dictionary of tags that can help identify what a key-value may be applicable for.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// The value of the key-value.
  late final pulumi.Output<String?> value;

  /// Creates a new [KeyValue].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [KeyValue]. {@macro pulumi_appconfiguration_key_value_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  KeyValue(
    String name, {
    KeyValueArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:appconfiguration:KeyValue',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    contentType = registerOutput<String?>('contentType');
    eTag = registerOutput<String>('eTag');
    key = registerOutput<String>('key');
    label = registerOutput<String>('label');
    lastModified = registerOutput<String>('lastModified');
    locked = registerOutput<bool>('locked');
    this.name = registerOutput<String>('name');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    value = registerOutput<String?>('value');
  }
}
