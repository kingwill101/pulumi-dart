import 'package:pulumi/pulumi.dart';
import 'get_user_args5.dart';
import 'get_user_result5.dart';

/// Provides information about a MemoryDB User.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.memorydb.getUser({
/// userName: "my-user",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.memorydb.get_user(user_name="my-user")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.MemoryDb.GetUser.Invoke(new()
/// {
/// UserName = "my-user",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/memorydb"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := memorydb.LookupUser(ctx, &memorydb.LookupUserArgs{
/// UserName: "my-user",
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
/// import com.pulumi.aws.memorydb.MemorydbFunctions;
/// import com.pulumi.aws.memorydb.inputs.GetUserArgs;
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
/// final var example = MemorydbFunctions.getUser(GetUserArgs.builder()
/// .userName("my-user")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:memorydb:getUser
/// arguments:
/// userName: my-user
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetUserResult5> getUser5(
  GetUserArgs5 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:memorydb/getUser:getUser',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetUserResult5.fromMap(result);
}
