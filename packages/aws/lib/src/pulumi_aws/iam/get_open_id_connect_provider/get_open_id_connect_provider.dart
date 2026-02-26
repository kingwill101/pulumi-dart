import 'package:pulumi/pulumi.dart';
import 'get_open_id_connect_provider_args.dart';
import 'get_open_id_connect_provider_result.dart';

/// This data source can be used to fetch information about a specific
/// IAM OpenID Connect provider. By using this data source, you can retrieve the
/// the resource information by either its <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> or <span pulumi-lang-nodejs="`url`" pulumi-lang-dotnet="`Url`" pulumi-lang-go="`url`" pulumi-lang-python="`url`" pulumi-lang-yaml="`url`" pulumi-lang-java="`url`">`url`</span>.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.iam.getOpenIdConnectProvider({
/// arn: "arn:aws:iam::123456789012:oidc-provider/accounts.google.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iam.get_open_id_connect_provider(arn="arn:aws:iam::123456789012:oidc-provider/accounts.google.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Iam.GetOpenIdConnectProvider.Invoke(new()
/// {
/// Arn = "arn:aws:iam::123456789012:oidc-provider/accounts.google.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iam.LookupOpenIdConnectProvider(ctx, &iam.LookupOpenIdConnectProviderArgs{
/// Arn: pulumi.StringRef("arn:aws:iam::123456789012:oidc-provider/accounts.google.com"),
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
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetOpenIdConnectProviderArgs;
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
/// final var example = IamFunctions.getOpenIdConnectProvider(GetOpenIdConnectProviderArgs.builder()
/// .arn("arn:aws:iam::123456789012:oidc-provider/accounts.google.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:iam:getOpenIdConnectProvider
/// arguments:
/// arn: arn:aws:iam::123456789012:oidc-provider/accounts.google.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.iam.getOpenIdConnectProvider({
/// url: "https://accounts.google.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iam.get_open_id_connect_provider(url="https://accounts.google.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Iam.GetOpenIdConnectProvider.Invoke(new()
/// {
/// Url = "https://accounts.google.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iam.LookupOpenIdConnectProvider(ctx, &iam.LookupOpenIdConnectProviderArgs{
/// Url: pulumi.StringRef("https://accounts.google.com"),
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
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetOpenIdConnectProviderArgs;
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
/// final var example = IamFunctions.getOpenIdConnectProvider(GetOpenIdConnectProviderArgs.builder()
/// .url("https://accounts.google.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:iam:getOpenIdConnectProvider
/// arguments:
/// url: https://accounts.google.com
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetOpenIdConnectProviderResult> getOpenIdConnectProvider(
  GetOpenIdConnectProviderArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:iam/getOpenIdConnectProvider:getOpenIdConnectProvider',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOpenIdConnectProviderResult.fromMap(result);
}
