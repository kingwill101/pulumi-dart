import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_kafka_version_args.dart';
import 'get_kafka_version_result.dart';

/// Get information on a Amazon MSK Kafka Version
Future<GetKafkaVersionResult> getKafkaVersion(
  GetKafkaVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:msk/getKafkaVersion:getKafkaVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKafkaVersionResult.fromMap(result);
}
