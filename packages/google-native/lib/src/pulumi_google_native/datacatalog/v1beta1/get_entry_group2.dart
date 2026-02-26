import 'package:pulumi/pulumi.dart';
import 'get_entry_group_args2.dart';
import 'get_entry_group_result2.dart';

/// Gets an EntryGroup.
Future<GetEntryGroupResult2> getEntryGroup2(
  GetEntryGroupArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datacatalog/v1beta1:getEntryGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEntryGroupResult2.fromMap(result);
}
