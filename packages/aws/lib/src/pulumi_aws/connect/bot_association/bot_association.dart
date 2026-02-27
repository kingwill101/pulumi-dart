import 'package:pulumi/pulumi.dart' as pulumi;
import '../bot_association_lex_bot/bot_association_lex_bot.dart';
import 'bot_association_args.dart';

/// Allows the specified Amazon Connect instance to access the specified Amazon Lex (V1) bot. For more information see
/// [Amazon Connect: Getting Started](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-get-started.html) and [Add an Amazon Lex bot](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-lex.html).
///
/// > **NOTE:** This resource only currently supports Amazon Lex (V1) Associations.
///
/// ## Example Usage
///
/// ### Basic
///
///
///
/// ### Including a sample Lex bot
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.connect.BotAssociation` using the Amazon Connect instance ID, Lex (V1) bot name, and Lex (V1) bot region separated by colons (`:`). For example:
///
/// ```sh
/// $ pulumi import aws:connect/botAssociation:BotAssociation example aaaaaaaa-bbbb-cccc-dddd-111111111111:Example:us-west-2
/// ```
class BotAssociation extends pulumi.CustomResource {
  /// The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.
  late final pulumi.Output<String> instanceId;

  /// Configuration information of an Amazon Lex (V1) bot. Detailed below.
  late final pulumi.Output<BotAssociationLexBot> lexBot;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  BotAssociation(
    String name, {
    BotAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:connect/botAssociation:BotAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.instanceId = registerOutput<String>('instanceId');
    this.lexBot = registerOutput<BotAssociationLexBot>('lexBot');
    this.region = registerOutput<String>('region');
  }
}
