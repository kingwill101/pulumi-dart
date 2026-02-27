import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_certificate_privateca_v1_args.dart';
import 'get_certificate_privateca_v1_result.dart';

/// Returns a Certificate.
Future<GetCertificatePrivatecaV1Result> getCertificatePrivatecaV1(
  GetCertificatePrivatecaV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:privateca/v1:getCertificate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCertificatePrivatecaV1Result.fromMap(result);
}
