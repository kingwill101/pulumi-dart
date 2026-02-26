import 'package:pulumi/pulumi.dart';
import 'get_entry_args3.dart';
import 'get_entry_result3.dart';

/// Gets an entry.
Future<GetEntryResult3> getEntry3(
  GetEntryArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datacatalog/v1beta1:getEntry',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEntryResult3.fromMap(result);
}
