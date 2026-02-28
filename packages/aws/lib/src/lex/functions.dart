import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bot_alias_args.dart';
import 'get_bot_alias_result.dart';
import 'get_bot_args.dart';
import 'get_bot_result.dart';
import 'get_intent_args.dart';
import 'get_intent_result.dart';
import 'get_slot_type_args.dart';
import 'get_slot_type_result.dart';

/// Provides details about a specific Amazon Lex Bot.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const orderFlowersBot = aws.lex.getBot({
///     name: "OrderFlowers",
///     version: "$LATEST",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// order_flowers_bot = aws.lex.get_bot(name="OrderFlowers",
///     version="$LATEST")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var orderFlowersBot = Aws.Lex.GetBot.Invoke(new()
///     {
///         Name = "OrderFlowers",
///         Version = "$LATEST",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := lex.LookupBot(ctx, &lex.LookupBotArgs{
/// 			Name:    "OrderFlowers",
/// 			Version: pulumi.StringRef("$LATEST"),
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
/// import com.pulumi.aws.lex.LexFunctions;
/// import com.pulumi.aws.lex.inputs.GetBotArgs;
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
///         final var orderFlowersBot = LexFunctions.getBot(GetBotArgs.builder()
///             .name("OrderFlowers")
///             .version("$LATEST")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   orderFlowersBot:
///     fn::invoke:
///       function: aws:lex:getBot
///       arguments:
///         name: OrderFlowers
///         version: $LATEST
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_lex_get_bot_get_bot_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBotResult> getBot(
  GetBotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lex/getBot:getBot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBotResult.fromMap(result);
}

/// Provides details about a specific Amazon Lex Bot Alias.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const orderFlowersProd = aws.lex.getBotAlias({
///     botName: "OrderFlowers",
///     name: "OrderFlowersProd",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// order_flowers_prod = aws.lex.get_bot_alias(bot_name="OrderFlowers",
///     name="OrderFlowersProd")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var orderFlowersProd = Aws.Lex.GetBotAlias.Invoke(new()
///     {
///         BotName = "OrderFlowers",
///         Name = "OrderFlowersProd",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := lex.LookupBotAlias(ctx, &lex.LookupBotAliasArgs{
/// 			BotName: "OrderFlowers",
/// 			Name:    "OrderFlowersProd",
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var orderFlowersProd = LexFunctions.getBotAlias(GetBotAliasArgs.builder()
///             .botName("OrderFlowers")
///             .name("OrderFlowersProd")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   orderFlowersProd:
///     fn::invoke:
///       function: aws:lex:getBotAlias
///       arguments:
///         botName: OrderFlowers
///         name: OrderFlowersProd
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_lex_get_bot_alias_get_bot_alias_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBotAliasResult> getBotAlias(
  GetBotAliasArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lex/getBotAlias:getBotAlias',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBotAliasResult.fromMap(result);
}

/// Provides details about a specific Amazon Lex Intent.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const orderFlowers = aws.lex.getIntent({
///     name: "OrderFlowers",
///     version: "$LATEST",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// order_flowers = aws.lex.get_intent(name="OrderFlowers",
///     version="$LATEST")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var orderFlowers = Aws.Lex.GetIntent.Invoke(new()
///     {
///         Name = "OrderFlowers",
///         Version = "$LATEST",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := lex.LookupIntent(ctx, &lex.LookupIntentArgs{
/// 			Name:    "OrderFlowers",
/// 			Version: pulumi.StringRef("$LATEST"),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var orderFlowers = LexFunctions.getIntent(GetIntentArgs.builder()
///             .name("OrderFlowers")
///             .version("$LATEST")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   orderFlowers:
///     fn::invoke:
///       function: aws:lex:getIntent
///       arguments:
///         name: OrderFlowers
///         version: $LATEST
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_lex_get_intent_get_intent_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIntentResult> getIntent(
  GetIntentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lex/getIntent:getIntent',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIntentResult.fromMap(result);
}

/// Provides details about a specific Amazon Lex Slot Type.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const flowerTypes = aws.lex.getSlotType({
///     name: "FlowerTypes",
///     version: "1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// flower_types = aws.lex.get_slot_type(name="FlowerTypes",
///     version="1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var flowerTypes = Aws.Lex.GetSlotType.Invoke(new()
///     {
///         Name = "FlowerTypes",
///         Version = "1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := lex.LookupSlotType(ctx, &lex.LookupSlotTypeArgs{
/// 			Name:    "FlowerTypes",
/// 			Version: pulumi.StringRef("1"),
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
/// import com.pulumi.aws.lex.LexFunctions;
/// import com.pulumi.aws.lex.inputs.GetSlotTypeArgs;
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
///         final var flowerTypes = LexFunctions.getSlotType(GetSlotTypeArgs.builder()
///             .name("FlowerTypes")
///             .version("1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   flowerTypes:
///     fn::invoke:
///       function: aws:lex:getSlotType
///       arguments:
///         name: FlowerTypes
///         version: '1'
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_lex_get_slot_type_get_slot_type_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSlotTypeResult> getSlotType(
  GetSlotTypeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lex/getSlotType:getSlotType',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSlotTypeResult.fromMap(result);
}
