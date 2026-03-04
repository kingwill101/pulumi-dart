import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;

void main() {
  final args = aws.lambda.FunctionArgs(
    role: 'arn:aws:iam::123456789012:role/test-role'.input(),
    handler: 'bootstrap'.input(),
    runtime: 'provided.al2'.input(),
    code: pulumi.FileArchive('handler.zip').input(),
  );

  try {
    final m = args.toMap();
    print('ok ${m.runtimeType}');
    print(m);
  } catch (e, st) {
    print('err: $e');
    print(st);
  }
}
