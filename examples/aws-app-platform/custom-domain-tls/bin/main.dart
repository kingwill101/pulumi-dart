import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:aws_app_platform_custom_domain_tls/main.dart' as app;

Future<void> main() async {
  await pulumi.Deployment.run(() => app.CustomDomainTlsStack());
}

