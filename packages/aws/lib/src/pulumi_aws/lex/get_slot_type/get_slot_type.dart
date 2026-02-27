import 'package:pulumi/pulumi.dart';
import 'get_slot_type_args.dart';
import 'get_slot_type_result.dart';

/// Provides details about a specific Amazon Lex Slot Type.
Future<GetSlotTypeResult> getSlotType(
  GetSlotTypeArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lex/getSlotType:getSlotType',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSlotTypeResult.fromMap(result);
}
