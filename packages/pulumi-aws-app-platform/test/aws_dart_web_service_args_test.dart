import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws_app_platform/pulumi_aws_app_platform.dart';
import 'package:test/test.dart';

void main() {
  test('validate accepts minimal args', () {
    final args = AwsDartWebServiceArgs(
      sourcePath: pulumi.Output.create<String>('./app'),
    );
    expect(() => validateAwsDartWebServiceArgs(args), returnsNormally);
  });

  test('validate requires public subnets when vpc id is supplied', () {
    final args = AwsDartWebServiceArgs(
      sourcePath: pulumi.Output.create<String>('./app'),
      network: AwsAppNetworkArgs(
        vpcId: pulumi.Output.create<String>('vpc-123'),
      ),
    );

    expect(
      () => validateAwsDartWebServiceArgs(args),
      throwsA(isA<ArgumentError>()),
    );
  });

  test('validate requires domain when auto cert is enabled', () {
    final args = AwsDartWebServiceArgs(
      sourcePath: pulumi.Output.create<String>('./app'),
      tls: AwsAppTlsArgs(autoProvisionCertificate: true),
    );

    expect(
      () => validateAwsDartWebServiceArgs(args),
      throwsA(isA<ArgumentError>()),
    );
  });
}
