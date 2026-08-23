import 'package:pulumi/pulumi.dart' as pulumi;
import 'bot_alias_args.dart';
import 'bot_alias_conversation_logs.dart';
import 'bot_alias_state.dart';

/// Provides an Amazon Lex Bot Alias resource. For more information see
/// [Amazon Lex: How It Works](https://docs.aws.amazon.com/lex/latest/dg/how-it-works.html)
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const orderFlowersProd = new aws.lex.BotAlias("order_flowers_prod", {
///     botName: "OrderFlowers",
///     botVersion: "1",
///     description: "Production Version of the OrderFlowers Bot.",
///     name: "OrderFlowersProd",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// order_flowers_prod = aws.lex.BotAlias("order_flowers_prod",
///     bot_name="OrderFlowers",
///     bot_version="1",
///     description="Production Version of the OrderFlowers Bot.",
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
///     var orderFlowersProd = new Aws.Lex.BotAlias("order_flowers_prod", new()
///     {
///         BotName = "OrderFlowers",
///         BotVersion = "1",
///         Description = "Production Version of the OrderFlowers Bot.",
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
/// 		_, err := lex.NewBotAlias(ctx, "order_flowers_prod", &lex.BotAliasArgs{
/// 			BotName:     pulumi.String("OrderFlowers"),
/// 			BotVersion:  pulumi.String("1"),
/// 			Description: pulumi.String("Production Version of the OrderFlowers Bot."),
/// 			Name:        pulumi.String("OrderFlowersProd"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_lex_botalias" "order_flowers_prod" {
///   bot_name    = "OrderFlowers"
///   bot_version = "1"
///   description = "Production Version of the OrderFlowers Bot."
///   name        = "OrderFlowersProd"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lex.BotAlias;
/// import com.pulumi.aws.lex.BotAliasArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var orderFlowersProd = new BotAlias("orderFlowersProd", BotAliasArgs.builder()
///             .botName("OrderFlowers")
///             .botVersion("1")
///             .description("Production Version of the OrderFlowers Bot.")
///             .name("OrderFlowersProd")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   orderFlowersProd:
///     type: aws:lex:BotAlias
///     name: order_flowers_prod
///     properties:
///       botName: OrderFlowers
///       botVersion: '1'
///       description: Production Version of the OrderFlowers Bot.
///       name: OrderFlowersProd
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import bot aliases using an ID with the format `bot_name:bot_alias_name`. For example:
///
/// ```sh
/// $ pulumi import aws:lex/botAlias:BotAlias order_flowers_prod OrderFlowers:OrderFlowersProd
/// ```
class BotAlias extends pulumi.CustomResource {
  /// The ARN of the bot alias.
  late final pulumi.Output<String> arn;
  /// The name of the bot.
  late final pulumi.Output<String> botName;
  /// The version of the bot.
  late final pulumi.Output<String> botVersion;
  /// Checksum of the bot alias.
  late final pulumi.Output<String> checksum;
  /// The settings that determine how Amazon Lex uses conversation logs for the alias. Attributes are documented under conversation_logs.
  late final pulumi.Output<BotAliasConversationLogs?> conversationLogs;
  /// The date that the bot alias was created.
  late final pulumi.Output<String> createdDate;
  /// A description of the alias. Must be less than or equal to 200 characters in length.
  late final pulumi.Output<String?> description;
  /// The date that the bot alias was updated. When you create a resource, the creation date and the last updated date are the same.
  late final pulumi.Output<String> lastUpdatedDate;
  /// The name of the alias. The name is not case sensitive. Must be less than or equal to 100 characters in length.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [BotAlias].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BotAlias]. {@macro pulumi_lex_bot_alias_bot_alias_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BotAlias(
    String name, {
    BotAliasArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lex/botAlias:BotAlias',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    botName = registerOutput<String>('botName');
    botVersion = registerOutput<String>('botVersion');
    checksum = registerOutput<String>('checksum');
    conversationLogs = registerOutput<BotAliasConversationLogs?>('conversationLogs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BotAliasConversationLogs.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdDate = registerOutput<String>('createdDate');
    description = registerOutput<String?>('description');
    lastUpdatedDate = registerOutput<String>('lastUpdatedDate');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [BotAlias] resource's state with the given [name] and [id].
  static BotAlias get(
    String name,
    pulumi.Input<String> id, {
    BotAliasState? state,
  }) {
    return BotAlias._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BotAlias._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lex/botAlias:BotAlias',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    botName = registerOutput<String>('botName');
    botVersion = registerOutput<String>('botVersion');
    checksum = registerOutput<String>('checksum');
    conversationLogs = registerOutput<BotAliasConversationLogs?>('conversationLogs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BotAliasConversationLogs.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdDate = registerOutput<String>('createdDate');
    description = registerOutput<String?>('description');
    lastUpdatedDate = registerOutput<String>('lastUpdatedDate');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
  }
}
