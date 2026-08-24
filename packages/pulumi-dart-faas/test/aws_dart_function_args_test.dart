import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_dart_faas/pulumi_dart_faas.dart';
import 'package:test/test.dart';

void main() {
  test('validate accepts image source', () {
    final args = DartFunctionArgs(
      source: DartFunctionSource.image(context: './app'.input()),
    );

    expect(() => validateDartFunctionArgs(args), returnsNormally);
  });

  test('validate accepts zip s3 source', () {
    final args = DartFunctionArgs(
      source: DartFunctionSource.awsS3(
        bucket: 'artifacts-bucket'.input(),
        key: 'fn/function.zip'.input(),
      ),
    );

    expect(() => validateDartFunctionArgs(args), returnsNormally);
  });

  test('validate accepts binary upload source', () {
    final args = DartFunctionArgs(
      source: DartFunctionSource.archive(
        archive: pulumi.FileArchive('./build_deploy').input(),
      ),
    );

    expect(() => validateDartFunctionArgs(args), returnsNormally);
  });

  test('validate accepts an archive from S3-compatible object storage', () {
    final args = DartFunctionArgs(
      source: DartFunctionSource.archive(
        archive: pulumi.RemoteArchive(
          'https://example.r2.cloudflarestorage.com/function.zip?signature=x',
        ).input(),
      ),
    );

    expect(() => validateDartFunctionArgs(args), returnsNormally);
  });
}
