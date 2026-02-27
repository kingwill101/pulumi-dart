import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_detector_args.dart';
import 'get_detector_result.dart';

/// Retrieve information about a GuardDuty detector.
Future<GetDetectorResult> getDetector(
  GetDetectorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:guardduty/getDetector:getDetector',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDetectorResult.fromMap(result);
}
