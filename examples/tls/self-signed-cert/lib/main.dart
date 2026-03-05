import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_tls/index.dart' as tls;

class TlsSelfSignedCertStack extends pulumi.Stack {
  TlsSelfSignedCertStack() : super() {
    final privateKey = tls.PrivateKey(
      'privateKey',
      args: tls.PrivateKeyArgs(
        algorithm: 'RSA'.output(),
        rsaBits: 2048.output(),
      ),
    );

    final selfSignedCert = tls.SelfSignedCert(
      'selfSignedCert',
      args: tls.SelfSignedCertArgs(
        privateKeyPem: privateKey.privateKeyPem,
        validityPeriodHours: 24.output(),
        allowedUses: [
          'key_encipherment',
          'digital_signature',
          'server_auth',
        ].output(),
        dnsNames: ['example.internal'].output(),
        subject: tls.SelfSignedCertSubject(
          commonName: 'example.internal'.output(),
          organization: 'Pulumi Dart'.output(),
        ).output(),
      ),
    );

    registerOutputs({
      'publicKey': privateKey.publicKeyOpenssh,
      'certificatePem': selfSignedCert.certPem,
      'validityEndTime': selfSignedCert.validityEndTime,
    });
  }
}
