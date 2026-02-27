import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bot_association_args.dart';
import 'get_bot_association_result.dart';

/// Provides details about a specific Lex (V1) Bot associated with an Amazon Connect instance.
///
/// ## Example Usage
///
/// ### By name
Future<GetBotAssociationResult> getBotAssociation(
  GetBotAssociationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:connect/getBotAssociation:getBotAssociation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBotAssociationResult.fromMap(result);
}
