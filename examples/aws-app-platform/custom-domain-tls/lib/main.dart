import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws_app_platform/pulumi_aws_app_platform.dart'
    as app_platform;

class CustomDomainTlsStack extends pulumi.Stack {
  late final pulumi.Output<String?> url;
  late final pulumi.Output<String?> fqdn;
  late final pulumi.Output<String?> certificateArn;

  CustomDomainTlsStack() {
    final config = pulumi.Config();
    final hostedZoneId = config.require('hostedZoneId');
    final hostname = config.require('hostname');

    final service = app_platform.AwsDartWebService(
      'web',
      args: app_platform.AwsDartWebServiceArgs(
        sourcePath: './app'.input(),
        port: 8080.input(),
        domain: app_platform.AwsAppDomainArgs(
          hostedZoneId: hostedZoneId.input(),
          hostname: hostname.input(),
          createDnsRecord: true,
        ),
        tls: app_platform.AwsAppTlsArgs(autoProvisionCertificate: true),
      ),
    );

    url = service.url;
    fqdn = service.fqdn;
    certificateArn = service.certificateArn;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [
      pulumi.OutputProperty('url', url),
      pulumi.OutputProperty('fqdn', fqdn),
      pulumi.OutputProperty('certificateArn', certificateArn),
    ];
  }
}
