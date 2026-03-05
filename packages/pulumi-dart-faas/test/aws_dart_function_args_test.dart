import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_dart_faas/pulumi_dart_faas.dart';
import 'package:test/test.dart';

void main() {
  test('validate accepts image source', () {
    final args = DartFunctionArgs(
      source: DartFunctionSourceArgs(
        image: DartFunctionSourceImageArgs(context: './app'.input()),
      ),
    );

    expect(() => validateDartFunctionArgs(args), returnsNormally);
  });

  test('validate accepts zip s3 source', () {
    final args = DartFunctionArgs(
      source: DartFunctionSourceArgs(
        zipS3: DartFunctionSourceZipS3Args(
          bucket: 'artifacts-bucket'.input(),
          key: 'fn/function.zip'.input(),
        ),
      ),
    );

    expect(() => validateDartFunctionArgs(args), returnsNormally);
  });

  test('validate accepts binary upload source', () {
    final args = DartFunctionArgs(
      source: DartFunctionSourceArgs(
        binaryUpload: DartFunctionSourceBinaryUploadArgs(
          sourceArchive: pulumi.FileArchive('./build_deploy').input(),
        ),
      ),
    );

    expect(() => validateDartFunctionArgs(args), returnsNormally);
  });

  test('validate rejects missing source', () {
    final args = DartFunctionArgs(source: DartFunctionSourceArgs());

    expect(() => validateDartFunctionArgs(args), throwsA(isA<ArgumentError>()));
  });

  test('validate rejects mixed source modes', () {
    final args = DartFunctionArgs(
      source: DartFunctionSourceArgs(
        image: DartFunctionSourceImageArgs(context: './app'.input()),
        zipS3: DartFunctionSourceZipS3Args(
          bucket: 'artifacts-bucket'.input(),
          key: 'fn/function.zip'.input(),
        ),
      ),
    );

    expect(() => validateDartFunctionArgs(args), throwsA(isA<ArgumentError>()));
  });
}
