import 'package:pulumi/pulumi.dart';
import 'get_sargs2.dart';
import 'get_sresult2.dart';

/// Gets a list of all service accounts from a project.
/// See [the official documentation](https://cloud.google.com/iam/docs/service-account-overview)
/// and [API](https://cloud.google.com/iam/docs/reference/rest/v1/projects.serviceAccounts).
///
/// ## Example Usage
///
/// Get all service accounts from a project
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = gcp.serviceaccount.getS({
/// project: "example-project",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.serviceaccount.get_s(project="example-project")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Gcp.ServiceAccount.GetS.Invoke(new()
/// {
/// Project = "example-project",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := serviceaccount.GetS(ctx, &serviceaccount.GetSArgs{
/// Project: pulumi.StringRef("example-project"),
/// }, nil)
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
/// import com.pulumi.gcp.serviceaccount.ServiceaccountFunctions;
/// import com.pulumi.gcp.serviceaccount.inputs.GetSArgs;
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
/// final var example = ServiceaccountFunctions.getS(GetSArgs.builder()
/// .project("example-project")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: gcp:serviceaccount:getS
/// arguments:
/// project: example-project
/// ```
/// <!--End PulumiCodeChooser -->
///
/// Get all service accounts that are prefixed with `"foo"`
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const foo = gcp.serviceaccount.getS({
/// prefix: "foo",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// foo = gcp.serviceaccount.get_s(prefix="foo")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var foo = Gcp.ServiceAccount.GetS.Invoke(new()
/// {
/// Prefix = "foo",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := serviceaccount.GetS(ctx, &serviceaccount.GetSArgs{
/// Prefix: pulumi.StringRef("foo"),
/// }, nil)
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
/// import com.pulumi.gcp.serviceaccount.ServiceaccountFunctions;
/// import com.pulumi.gcp.serviceaccount.inputs.GetSArgs;
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
/// final var foo = ServiceaccountFunctions.getS(GetSArgs.builder()
/// .prefix("foo")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// foo:
/// fn::invoke:
/// function: gcp:serviceaccount:getS
/// arguments:
/// prefix: foo
/// ```
/// <!--End PulumiCodeChooser -->
///
/// Get all service accounts that contain `"bar"`
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const bar = gcp.serviceaccount.getS({
/// regex: ".*bar.*",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// bar = gcp.serviceaccount.get_s(regex=".*bar.*")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var bar = Gcp.ServiceAccount.GetS.Invoke(new()
/// {
/// Regex = ".*bar.*",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := serviceaccount.GetS(ctx, &serviceaccount.GetSArgs{
/// Regex: pulumi.StringRef(".*bar.*"),
/// }, nil)
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
/// import com.pulumi.gcp.serviceaccount.ServiceaccountFunctions;
/// import com.pulumi.gcp.serviceaccount.inputs.GetSArgs;
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
/// final var bar = ServiceaccountFunctions.getS(GetSArgs.builder()
/// .regex(".*bar.*")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// bar:
/// fn::invoke:
/// function: gcp:serviceaccount:getS
/// arguments:
/// regex: .*bar.*
/// ```
/// <!--End PulumiCodeChooser -->
///
/// Get all service accounts that are prefixed with `"foo"` and contain `"bar"`
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const fooBar = gcp.serviceaccount.getS({
/// prefix: "foo",
/// regex: ".*bar.*",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// foo_bar = gcp.serviceaccount.get_s(prefix="foo",
/// regex=".*bar.*")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var fooBar = Gcp.ServiceAccount.GetS.Invoke(new()
/// {
/// Prefix = "foo",
/// Regex = ".*bar.*",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := serviceaccount.GetS(ctx, &serviceaccount.GetSArgs{
/// Prefix: pulumi.StringRef("foo"),
/// Regex:  pulumi.StringRef(".*bar.*"),
/// }, nil)
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
/// import com.pulumi.gcp.serviceaccount.ServiceaccountFunctions;
/// import com.pulumi.gcp.serviceaccount.inputs.GetSArgs;
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
/// final var fooBar = ServiceaccountFunctions.getS(GetSArgs.builder()
/// .prefix("foo")
/// .regex(".*bar.*")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// fooBar:
/// fn::invoke:
/// function: gcp:serviceaccount:getS
/// arguments:
/// prefix: foo
/// regex: .*bar.*
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetSResult2> getS2(
  GetSArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:serviceaccount/getS:getS',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSResult2.fromMap(result);
}
