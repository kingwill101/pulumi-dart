import 'package:pulumi/pulumi.dart';
import 'get_entry_args2.dart';
import 'get_entry_result2.dart';

/// Gets an entry.
Future<GetEntryResult2> getEntry2(
  GetEntryArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datacatalog/v1:getEntry',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEntryResult2.fromMap(result);
}
