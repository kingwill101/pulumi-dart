import 'package:pulumi/pulumi.dart' hide Config;
import 'get_consent_args.dart';
import 'get_consent_result.dart';

/// Gets the specified revision of a Consent, or the latest revision if `revision_id` is not specified in the resource name.
Future<GetConsentResult> getConsent(
  GetConsentArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1:getConsent',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConsentResult.fromMap(result);
}
