import 'package:pulumi/pulumi.dart';
import 'get_instance_args7.dart';
import 'get_instance_result7.dart';

/// Get info about a Google Cloud Redis instance.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myInstance = gcp.redis.getInstance({
/// name: "my-redis-instance",
/// });
/// export const instanceMemorySizeGb = myInstance.then(myInstance => myInstance.memorySizeGb);
/// export const instanceConnectMode = myInstance.then(myInstance => myInstance.connectMode);
/// export const instanceAuthorizedNetwork = myInstance.then(myInstance => myInstance.authorizedNetwork);
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_instance = gcp.redis.get_instance(name="my-redis-instance")
/// pulumi.export("instanceMemorySizeGb", my_instance.memory_size_gb)
/// pulumi.export("instanceConnectMode", my_instance.connect_mode)
/// pulumi.export("instanceAuthorizedNetwork", my_instance.authorized_network)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var myInstance = Gcp.Redis.GetInstance.Invoke(new()
/// {
/// Name = "my-redis-instance",
/// });
///
/// return new Dictionary<string, object?>
/// {
/// ["instanceMemorySizeGb"] = myInstance.Apply(getInstanceResult => getInstanceResult.MemorySizeGb),
/// ["instanceConnectMode"] = myInstance.Apply(getInstanceResult => getInstanceResult.ConnectMode),
/// ["instanceAuthorizedNetwork"] = myInstance.Apply(getInstanceResult => getInstanceResult.AuthorizedNetwork),
/// };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/redis"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// myInstance, err := redis.LookupInstance(ctx, &redis.LookupInstanceArgs{
/// Name: "my-redis-instance",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// ctx.Export("instanceMemorySizeGb", myInstance.MemorySizeGb)
/// ctx.Export("instanceConnectMode", myInstance.ConnectMode)
/// ctx.Export("instanceAuthorizedNetwork", myInstance.AuthorizedNetwork)
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
/// import com.pulumi.gcp.redis.RedisFunctions;
/// import com.pulumi.gcp.redis.inputs.GetInstanceArgs;
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
/// final var myInstance = RedisFunctions.getInstance(GetInstanceArgs.builder()
/// .name("my-redis-instance")
/// .build());
///
/// ctx.export("instanceMemorySizeGb", myInstance.memorySizeGb());
/// ctx.export("instanceConnectMode", myInstance.connectMode());
/// ctx.export("instanceAuthorizedNetwork", myInstance.authorizedNetwork());
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// myInstance:
/// fn::invoke:
/// function: gcp:redis:getInstance
/// arguments:
/// name: my-redis-instance
/// outputs:
/// instanceMemorySizeGb: ${myInstance.memorySizeGb}
/// instanceConnectMode: ${myInstance.connectMode}
/// instanceAuthorizedNetwork: ${myInstance.authorizedNetwork}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetInstanceResult7> getInstance7(
  GetInstanceArgs7 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:redis/getInstance:getInstance',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceResult7.fromMap(result);
}
