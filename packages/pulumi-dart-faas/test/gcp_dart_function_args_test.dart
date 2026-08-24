import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_dart_faas/pulumi_dart_faas.dart';
import 'package:test/test.dart';

void main() {
  test('validate accepts image source', () {
    final args = GcpDartFunctionArgs(
      source: DartFunctionSource.image(context: './app'.input()),
    );

    expect(() => validateGcpDartFunctionArgs(args), returnsNormally);
  });

  test('validate accepts binary upload source', () {
    final args = GcpDartFunctionArgs(
      source: DartFunctionSource.archive(
        archive: pulumi.FileArchive('./build_deploy').input(),
        baseImageUri: 'osonly24'.input(),
      ),
    );

    expect(() => validateGcpDartFunctionArgs(args), returnsNormally);
  });

  test('validate accepts an archive from S3-compatible object storage', () {
    final args = GcpDartFunctionArgs(
      source: DartFunctionSource.archive(
        archive: pulumi.RemoteArchive(
          'https://example.r2.cloudflarestorage.com/function.tar.gz?signature=x',
        ).input(),
        baseImageUri: 'osonly24'.input(),
      ),
    );

    expect(() => validateGcpDartFunctionArgs(args), returnsNormally);
  });

  test('validate rejects AWS S3 source', () {
    final args = GcpDartFunctionArgs(
      source: DartFunctionSource.awsS3(
        bucket: 'artifacts-bucket'.input(),
        key: 'fn/function.zip'.input(),
      ),
    );

    expect(
      () => validateGcpDartFunctionArgs(args),
      throwsA(isA<ArgumentError>()),
    );
  });

  test('validate rejects binary upload without base image', () {
    final args = GcpDartFunctionArgs(
      source: DartFunctionSource.archive(
        archive: pulumi.FileArchive('./build_deploy').input(),
      ),
    );

    expect(
      () => validateGcpDartFunctionArgs(args),
      throwsA(isA<ArgumentError>()),
    );
  });
}
