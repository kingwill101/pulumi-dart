import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_container_args.dart';
import 'get_container_result.dart';
import 'get_secret_args.dart';
import 'get_secret_result.dart';

/// Use this data source to get the ID of an available Barbican container.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const example = openstack.keymanager.getContainer({
///     name: "my_container",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// example = openstack.keymanager.get_container(name="my_container")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = OpenStack.KeyManager.GetContainer.Invoke(new()
///     {
///         Name = "my_container",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/keymanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := keymanager.GetContainer(ctx, &keymanager.GetContainerArgs{
/// 			Name: pulumi.StringRef("my_container"),
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
/// import com.pulumi.openstack.keymanager.KeymanagerFunctions;
/// import com.pulumi.openstack.keymanager.inputs.GetContainerArgs;
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
///         final var example = KeymanagerFunctions.getContainer(GetContainerArgs.builder()
///             .name("my_container")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: openstack:keymanager:getContainer
///       arguments:
///         name: my_container
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_keymanager_get_container_get_container_args_doc}
/// [options] Invoke options controlling this call.
Future<GetContainerResult> getContainer(
  GetContainerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'openstack:keymanager/getContainer:getContainer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetContainerResult.fromMap(result);
}

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const example = openstack.keymanager.getSecret({
///     mode: "cbc",
///     secretType: "passphrase",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// example = openstack.keymanager.get_secret(mode="cbc",
///     secret_type="passphrase")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = OpenStack.KeyManager.GetSecret.Invoke(new()
///     {
///         Mode = "cbc",
///         SecretType = "passphrase",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/keymanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := keymanager.GetSecret(ctx, &keymanager.GetSecretArgs{
/// 			Mode:       pulumi.StringRef("cbc"),
/// 			SecretType: pulumi.StringRef("passphrase"),
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
/// import com.pulumi.openstack.keymanager.KeymanagerFunctions;
/// import com.pulumi.openstack.keymanager.inputs.GetSecretArgs;
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
///         final var example = KeymanagerFunctions.getSecret(GetSecretArgs.builder()
///             .mode("cbc")
///             .secretType("passphrase")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: openstack:keymanager:getSecret
///       arguments:
///         mode: cbc
///         secretType: passphrase
/// ```
///
///
/// ## Date Filters
///
/// The values for the `expiration_filter`, `created_at_filter`, and
/// `updated_at_filter` parameters are comma-separated lists of time stamps in
/// RFC3339 format. The time stamps can be prefixed with any of these comparison
/// operators: *gt:* (greater-than), *gte:* (greater-than-or-equal), *lt:*
/// (less-than), *lte:* (less-than-or-equal).
///
/// For example, to get a passphrase a Secret with CBC moda, that will expire in
/// January of 2020:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const dateFilterExample = openstack.keymanager.getSecret({
///     mode: "cbc",
///     secretType: "passphrase",
///     expirationFilter: "gt:2020-01-01T00:00:00Z",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// date_filter_example = openstack.keymanager.get_secret(mode="cbc",
///     secret_type="passphrase",
///     expiration_filter="gt:2020-01-01T00:00:00Z")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dateFilterExample = OpenStack.KeyManager.GetSecret.Invoke(new()
///     {
///         Mode = "cbc",
///         SecretType = "passphrase",
///         ExpirationFilter = "gt:2020-01-01T00:00:00Z",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/keymanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := keymanager.GetSecret(ctx, &keymanager.GetSecretArgs{
/// 			Mode:             pulumi.StringRef("cbc"),
/// 			SecretType:       pulumi.StringRef("passphrase"),
/// 			ExpirationFilter: pulumi.StringRef("gt:2020-01-01T00:00:00Z"),
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
/// import com.pulumi.openstack.keymanager.KeymanagerFunctions;
/// import com.pulumi.openstack.keymanager.inputs.GetSecretArgs;
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
///         final var dateFilterExample = KeymanagerFunctions.getSecret(GetSecretArgs.builder()
///             .mode("cbc")
///             .secretType("passphrase")
///             .expirationFilter("gt:2020-01-01T00:00:00Z")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   dateFilterExample:
///     fn::invoke:
///       function: openstack:keymanager:getSecret
///       arguments:
///         mode: cbc
///         secretType: passphrase
///         expirationFilter: gt:2020-01-01T00:00:00Z
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_keymanager_get_secret_get_secret_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecretResult> getSecret(
  GetSecretArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'openstack:keymanager/getSecret:getSecret',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecretResult.fromMap(result);
}
