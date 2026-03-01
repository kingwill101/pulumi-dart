import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connector_args.dart';
import 'get_connector_result.dart';
import 'get_custom_plugin_args.dart';
import 'get_custom_plugin_result.dart';
import 'get_worker_configuration_args.dart';
import 'get_worker_configuration_result.dart';

/// Get information on an Amazon MSK Connect Connector.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.mskconnect.getConnector({
///     name: "example-mskconnector",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.mskconnect.get_connector(name="example-mskconnector")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.MskConnect.GetConnector.Invoke(new()
///     {
///         Name = "example-mskconnector",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/mskconnect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := mskconnect.LookupConnector(ctx, &mskconnect.LookupConnectorArgs{
/// 			Name: "example-mskconnector",
/// 		}, nil)
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
/// import com.pulumi.aws.mskconnect.MskconnectFunctions;
/// import com.pulumi.aws.mskconnect.inputs.GetConnectorArgs;
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
///         final var example = MskconnectFunctions.getConnector(GetConnectorArgs.builder()
///             .name("example-mskconnector")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:mskconnect:getConnector
///       arguments:
///         name: example-mskconnector
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_mskconnect_get_connector_get_connector_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectorResult> getConnector(
  GetConnectorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:mskconnect/getConnector:getConnector',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectorResult.fromMap(result);
}

/// Get information on an Amazon MSK Connect custom plugin.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.mskconnect.getCustomPlugin({
///     name: "example-debezium-1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.mskconnect.get_custom_plugin(name="example-debezium-1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.MskConnect.GetCustomPlugin.Invoke(new()
///     {
///         Name = "example-debezium-1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/mskconnect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := mskconnect.LookupCustomPlugin(ctx, &mskconnect.LookupCustomPluginArgs{
/// 			Name: "example-debezium-1",
/// 		}, nil)
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
/// import com.pulumi.aws.mskconnect.MskconnectFunctions;
/// import com.pulumi.aws.mskconnect.inputs.GetCustomPluginArgs;
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
///         final var example = MskconnectFunctions.getCustomPlugin(GetCustomPluginArgs.builder()
///             .name("example-debezium-1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:mskconnect:getCustomPlugin
///       arguments:
///         name: example-debezium-1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_mskconnect_get_custom_plugin_get_custom_plugin_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCustomPluginResult> getCustomPlugin(
  GetCustomPluginArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:mskconnect/getCustomPlugin:getCustomPlugin',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCustomPluginResult.fromMap(result);
}

/// Get information on an Amazon MSK Connect Worker Configuration.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.mskconnect.getWorkerConfiguration({
///     name: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.mskconnect.get_worker_configuration(name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.MskConnect.GetWorkerConfiguration.Invoke(new()
///     {
///         Name = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/mskconnect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := mskconnect.LookupWorkerConfiguration(ctx, &mskconnect.LookupWorkerConfigurationArgs{
/// 			Name: "example",
/// 		}, nil)
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
/// import com.pulumi.aws.mskconnect.MskconnectFunctions;
/// import com.pulumi.aws.mskconnect.inputs.GetWorkerConfigurationArgs;
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
///         final var example = MskconnectFunctions.getWorkerConfiguration(GetWorkerConfigurationArgs.builder()
///             .name("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:mskconnect:getWorkerConfiguration
///       arguments:
///         name: example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_mskconnect_get_worker_configuration_get_worker_configuration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkerConfigurationResult> getWorkerConfiguration(
  GetWorkerConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:mskconnect/getWorkerConfiguration:getWorkerConfiguration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkerConfigurationResult.fromMap(result);
}
