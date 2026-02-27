import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dataset_translate_v3_args.dart';
import 'get_dataset_translate_v3_result.dart';

/// Gets a Dataset.
Future<GetDatasetTranslateV3Result> getDatasetTranslateV3(
  GetDatasetTranslateV3Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:translate/v3:getDataset',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatasetTranslateV3Result.fromMap(result);
}
