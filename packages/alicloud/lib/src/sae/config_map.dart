import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_map_args.dart';

/// Provides a Serverless App Engine (SAE) Config Map resource.
///
/// For information about Serverless App Engine (SAE) Config Map and how to use it, see [What is Config Map](https://www.alibabacloud.com/help/en/sae/latest/create-configmap).
///
/// > **NOTE:** Available since v1.130.0.
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
/// import * as random from "@pulumi/random";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf-example";
/// const _default = alicloud.getRegions({
///     current: true,
/// });
/// const defaultInteger = new random.index.Integer("default", {
///     max: 99999,
///     min: 10000,
/// });
/// const defaultNamespace = new alicloud.sae.Namespace("default", {
///     namespaceId: _default.then(_default => `${_default.regions?.[0]?.id}:example${defaultInteger.result}`),
///     namespaceName: name,
///     namespaceDescription: name,
///     enableMicroRegistration: false,
/// });
/// const defaultConfigMap = new alicloud.sae.ConfigMap("default", {
///     data: JSON.stringify({
///         "env.home": "/root",
///         "env.shell": "/bin/sh",
///     }),
///     name: name,
///     namespaceId: defaultNamespace.namespaceId,
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// default = alicloud.get_regions(current=True)
/// default_integer = random.index.Integer("default",
///     max=99999,
///     min=10000)
/// default_namespace = alicloud.sae.Namespace("default",
///     namespace_id=f"{default.regions[0].id}:example{default_integer['result']}",
///     namespace_name=name,
///     namespace_description=name,
///     enable_micro_registration=False)
/// default_config_map = alicloud.sae.ConfigMap("default",
///     data=json.dumps({
///         "env.home": "/root",
///         "env.shell": "/bin/sh",
///     }),
///     name=name,
///     namespace_id=default_namespace.namespace_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "tf-example";
///     var @default = AliCloud.GetRegions.Invoke(new()
///     {
///         Current = true,
///     });
///
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Max = 99999,
///         Min = 10000,
///     });
///
///     var defaultNamespace = new AliCloud.Sae.Namespace("default", new()
///     {
///         NamespaceId = @default.Apply(@default => $"{@default.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Id)}:example{defaultInteger.Result}"),
///         NamespaceName = name,
///         NamespaceDescription = name,
///         EnableMicroRegistration = false,
///     });
///
///     var defaultConfigMap = new AliCloud.Sae.ConfigMap("default", new()
///     {
///         Data = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["env.home"] = "/root",
///             ["env.shell"] = "/bin/sh",
///         }),
///         Name = name,
///         NamespaceId = defaultNamespace.NamespaceId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/sae"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := alicloud.GetRegions(ctx, &alicloud.GetRegionsArgs{
/// 			Current: pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInteger, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Max: 99999,
/// 			Min: 10000,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNamespace, err := sae.NewNamespace(ctx, "default", &sae.NamespaceArgs{
/// 			NamespaceId:             pulumi.Sprintf("%v:example%v", _default.Regions[0].Id, defaultInteger.Result),
/// 			NamespaceName:           pulumi.String(name),
/// 			NamespaceDescription:    pulumi.String(name),
/// 			EnableMicroRegistration: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"env.home":  "/root",
/// 			"env.shell": "/bin/sh",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = sae.NewConfigMap(ctx, "default", &sae.ConfigMapArgs{
/// 			Data:        pulumi.String(json0),
/// 			Name:        pulumi.String(name),
/// 			NamespaceId: defaultNamespace.NamespaceId,
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetRegionsArgs;
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.sae.Namespace;
/// import com.pulumi.alicloud.sae.NamespaceArgs;
/// import com.pulumi.alicloud.sae.ConfigMap;
/// import com.pulumi.alicloud.sae.ConfigMapArgs;
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
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("tf-example");
///         final var default = AlicloudFunctions.getRegions(GetRegionsArgs.builder()
///             .current(true)
///             .build());
///
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .max(99999)
///             .min(10000)
///             .build());
///
///         var defaultNamespace = new Namespace("defaultNamespace", NamespaceArgs.builder()
///             .namespaceId(String.format("%s:example%s", default_.regions()[0].id(),defaultInteger.result()))
///             .namespaceName(name)
///             .namespaceDescription(name)
///             .enableMicroRegistration(false)
///             .build());
///
///         var defaultConfigMap = new ConfigMap("defaultConfigMap", ConfigMapArgs.builder()
///             .data(serializeJson(
///                 jsonObject(
///                     jsonProperty("env.home", "/root"),
///                     jsonProperty("env.shell", "/bin/sh")
///                 )))
///             .name(name)
///             .namespaceId(defaultNamespace.namespaceId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf-example
/// resources:
///   defaultInteger:
///     type: random:Integer
///     name: default
///     properties:
///       max: 99999
///       min: 10000
///   defaultNamespace:
///     type: alicloud:sae:Namespace
///     name: default
///     properties:
///       namespaceId: ${default.regions[0].id}:example${defaultInteger.result}
///       namespaceName: ${name}
///       namespaceDescription: ${name}
///       enableMicroRegistration: false
///   defaultConfigMap:
///     type: alicloud:sae:ConfigMap
///     name: default
///     properties:
///       data:
///         fn::toJSON:
///           env.home: /root
///           env.shell: /bin/sh
///       name: ${name}
///       namespaceId: ${defaultNamespace.namespaceId}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getRegions
///       arguments:
///         current: true
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Serverless App Engine (SAE) Config Map can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:sae/configMap:ConfigMap example <id>
/// ```
class ConfigMap extends pulumi.CustomResource {
  /// ConfigMap instance data.
  late final pulumi.Output<String> data;
  /// The Description of ConfigMap.
  late final pulumi.Output<String?> description;
  /// ConfigMap instance name.
  late final pulumi.Output<String> name;
  /// The NamespaceId of ConfigMap.It can contain 2 to 32 lowercase characters.The value is in format `{RegionId}:{namespace}`
  late final pulumi.Output<String> namespaceId;

  /// Creates a new [ConfigMap].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConfigMap]. {@macro pulumi_sae_config_map_config_map_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConfigMap(
    String name, {
    ConfigMapArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:sae/configMap:ConfigMap',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.data = registerOutput<String>('data');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.namespaceId = registerOutput<String>('namespaceId');
  }
}
