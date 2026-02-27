import 'package:pulumi/pulumi.dart';
import 'get_kafka_version_args.dart';
import 'get_kafka_version_result.dart';

/// Get information on a Amazon MSK Kafka Version
Future<GetKafkaVersionResult> getKafkaVersion(
  GetKafkaVersionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:msk/getKafkaVersion:getKafkaVersion',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetKafkaVersionResult.fromMap(result);
}
