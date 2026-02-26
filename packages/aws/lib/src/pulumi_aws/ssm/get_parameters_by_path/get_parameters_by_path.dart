import 'package:pulumi/pulumi.dart';
import 'get_parameters_by_path_args.dart';
import 'get_parameters_by_path_result.dart';

/// Use this data source to get information about one or more System Manager parameters in a specific hierarchy.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ssm.getParametersByPath({
/// path: "/site/newyork/department/",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssm.get_parameters_by_path(path="/site/newyork/department/")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Ssm.GetParametersByPath.Invoke(new()
/// {
/// Path = "/site/newyork/department/",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssm"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ssm.GetParametersByPath(ctx, &ssm.GetParametersByPathArgs{
/// Path: "/site/newyork/department/",
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
/// import com.pulumi.aws.ssm.SsmFunctions;
/// import com.pulumi.aws.ssm.inputs.GetParametersByPathArgs;
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
/// final var example = SsmFunctions.getParametersByPath(GetParametersByPathArgs.builder()
/// .path("/site/newyork/department/")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:ssm:getParametersByPath
/// arguments:
/// path: /site/newyork/department/
/// ```
/// <!--End PulumiCodeChooser -->
///
/// > **Note:** When the <span pulumi-lang-nodejs="`withDecryption`" pulumi-lang-dotnet="`WithDecryption`" pulumi-lang-go="`withDecryption`" pulumi-lang-python="`with_decryption`" pulumi-lang-yaml="`withDecryption`" pulumi-lang-java="`withDecryption`">`with_decryption`</span> argument is set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, the unencrypted values of `SecureString` parameters will be stored in the raw state as plain-text as per normal Terraform behavior. > **Note:** The data source follows the behavior of the [SSM API](https://docs.aws.amazon.com/sdk-for-go/api/service/ssm/#Parameter) to return a string value, regardless of parameter type. For `StringList` type where the value is returned as a comma-separated string with no spaces between comma, you may use the built-in split function to get values in a list. Example: `split(",", data.aws_ssm_parameter.subnets.value)`
Future<GetParametersByPathResult> getParametersByPath(
  GetParametersByPathArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ssm/getParametersByPath:getParametersByPath',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetParametersByPathResult.fromMap(result);
}
