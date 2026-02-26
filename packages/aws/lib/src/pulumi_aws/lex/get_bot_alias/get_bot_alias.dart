import 'package:pulumi/pulumi.dart';
import 'get_bot_alias_args.dart';
import 'get_bot_alias_result.dart';

/// Provides details about a specific Amazon Lex Bot Alias.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const orderFlowersProd = aws.lex.getBotAlias({
/// botName: "OrderFlowers",
/// name: "OrderFlowersProd",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// order_flowers_prod = aws.lex.get_bot_alias(bot_name="OrderFlowers",
/// name="OrderFlowersProd")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var orderFlowersProd = Aws.Lex.GetBotAlias.Invoke(new()
/// {
/// BotName = "OrderFlowers",
/// Name = "OrderFlowersProd",
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
/// _, err := lex.LookupBotAlias(ctx, &lex.LookupBotAliasArgs{
/// BotName: "OrderFlowers",
/// Name:    "OrderFlowersProd",
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
/// import com.pulumi.aws.lex.inputs.GetBotAliasArgs;
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
/// final var orderFlowersProd = LexFunctions.getBotAlias(GetBotAliasArgs.builder()
/// .botName("OrderFlowers")
/// .name("OrderFlowersProd")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// orderFlowersProd:
/// fn::invoke:
/// function: aws:lex:getBotAlias
/// arguments:
/// botName: OrderFlowers
/// name: OrderFlowersProd
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetBotAliasResult> getBotAlias(
  GetBotAliasArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lex/getBotAlias:getBotAlias',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBotAliasResult.fromMap(result);
}
