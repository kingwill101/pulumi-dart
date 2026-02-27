import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_entry_datacatalog_v1beta1_args.dart';
import 'get_entry_datacatalog_v1beta1_result.dart';

/// Gets an entry.
Future<GetEntryDatacatalogV1beta1Result> getEntryDatacatalogV1beta1(
  GetEntryDatacatalogV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datacatalog/v1beta1:getEntry',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEntryDatacatalogV1beta1Result.fromMap(result);
}
