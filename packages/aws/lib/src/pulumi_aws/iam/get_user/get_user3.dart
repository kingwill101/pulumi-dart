import 'package:pulumi/pulumi.dart';
import 'get_user_args3.dart';
import 'get_user_result3.dart';

/// This data source can be used to fetch information about a specific
/// IAM user. By using this data source, you can reference IAM user
/// properties without having to hard code ARNs or unique IDs as input.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.iam.getUser({
/// userName: "an_example_user_name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iam.get_user(user_name="an_example_user_name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Iam.GetUser.Invoke(new()
/// {
/// UserName = "an_example_user_name",
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
/// _, err := iam.LookupUser(ctx, &iam.LookupUserArgs{
/// UserName: "an_example_user_name",
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
/// import com.pulumi.aws.iam.inputs.GetUserArgs;
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
/// final var example = IamFunctions.getUser(GetUserArgs.builder()
/// .userName("an_example_user_name")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:iam:getUser
/// arguments:
/// userName: an_example_user_name
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetUserResult3> getUser3(
  GetUserArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:iam/getUser:getUser',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetUserResult3.fromMap(result);
}
