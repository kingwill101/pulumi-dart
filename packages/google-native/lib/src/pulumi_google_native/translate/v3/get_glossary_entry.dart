import 'package:pulumi/pulumi.dart' hide Config;
import 'get_glossary_entry_args.dart';
import 'get_glossary_entry_result.dart';

/// Gets a single glossary entry by the given id.
Future<GetGlossaryEntryResult> getGlossaryEntry(
  GetGlossaryEntryArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:translate/v3:getGlossaryEntry',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetGlossaryEntryResult.fromMap(result);
}
