import 'package:pulumi/pulumi.dart';
import 'get_intent_args.dart';
import 'get_intent_result.dart';

/// Provides details about a specific Amazon Lex Intent.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const orderFlowers = aws.lex.getIntent({
/// name: "OrderFlowers",
/// version: "$LATEST",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// order_flowers = aws.lex.get_intent(name="OrderFlowers",
/// version="$LATEST")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var orderFlowers = Aws.Lex.GetIntent.Invoke(new()
/// {
/// Name = "OrderFlowers",
/// Version = "$LATEST",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lex"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := lex.LookupIntent(ctx, &lex.LookupIntentArgs{
/// Name:    "OrderFlowers",
/// Version: pulumi.StringRef("$LATEST"),
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
/// import com.pulumi.aws.lex.LexFunctions;
/// import com.pulumi.aws.lex.inputs.GetIntentArgs;
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
/// final var orderFlowers = LexFunctions.getIntent(GetIntentArgs.builder()
/// .name("OrderFlowers")
/// .version("$LATEST")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// orderFlowers:
/// fn::invoke:
/// function: aws:lex:getIntent
/// arguments:
/// name: OrderFlowers
/// version: $LATEST
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetIntentResult> getIntent(
  GetIntentArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lex/getIntent:getIntent',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetIntentResult.fromMap(result);
}
