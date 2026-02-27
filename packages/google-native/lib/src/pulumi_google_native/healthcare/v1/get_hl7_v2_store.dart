import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_hl7_v2_store_args.dart';
import 'get_hl7_v2_store_result.dart';

/// Gets the specified HL7v2 store.
Future<GetHl7V2StoreResult> getHl7V2Store(
  GetHl7V2StoreArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1:getHl7V2Store',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHl7V2StoreResult.fromMap(result);
}
