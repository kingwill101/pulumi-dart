import 'package:pulumi/pulumi.dart' hide Config;
import 'get_hl7_v2_store_args2.dart';
import 'get_hl7_v2_store_result2.dart';

/// Gets the specified HL7v2 store.
Future<GetHl7V2StoreResult2> getHl7V2Store2(
  GetHl7V2StoreArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1beta1:getHl7V2Store',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetHl7V2StoreResult2.fromMap(result);
}
