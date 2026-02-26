import 'package:pulumi/pulumi.dart';
import 'get_user_args2.dart';
import 'get_user_result2.dart';

/// Use this data source to get information about an ElastiCache User.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const bar = aws.elasticache.getUser({
/// userId: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// bar = aws.elasticache.get_user(user_id="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var bar = Aws.ElastiCache.GetUser.Invoke(new()
/// {
/// UserId = "example",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/elasticache"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := elasticache.LookupUser(ctx, &elasticache.LookupUserArgs{
/// UserId: "example",
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
/// import com.pulumi.aws.elasticache.ElasticacheFunctions;
/// import com.pulumi.aws.elasticache.inputs.GetUserArgs;
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
/// final var bar = ElasticacheFunctions.getUser(GetUserArgs.builder()
/// .userId("example")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// bar:
/// fn::invoke:
/// function: aws:elasticache:getUser
/// arguments:
/// userId: example
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetUserResult2> getUser2(
  GetUserArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:elasticache/getUser:getUser',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetUserResult2.fromMap(result);
}
