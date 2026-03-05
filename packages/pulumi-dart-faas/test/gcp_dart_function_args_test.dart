import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_dart_faas/pulumi_dart_faas.dart';
import 'package:test/test.dart';

void main() {
  test('validate accepts image source', () {
    final args = GcpDartFunctionArgs(
      source: DartFunctionSourceArgs(
        image: DartFunctionSourceImageArgs(context: './app'.input()),
      ),
    );

    expect(() => validateGcpDartFunctionArgs(args), returnsNormally);
  });

  test('validate accepts binary upload source', () {
    final args = GcpDartFunctionArgs(
      source: DartFunctionSourceArgs(
        binaryUpload: DartFunctionSourceBinaryUploadArgs(
          sourceArchive: pulumi.FileArchive('./build_deploy').input(),
          baseImageUri: 'osonly24'.input(),
        ),
      ),
    );

    expect(() => validateGcpDartFunctionArgs(args), returnsNormally);
  });

  test('validate rejects missing source', () {
    final args = GcpDartFunctionArgs(source: DartFunctionSourceArgs());

    expect(
      () => validateGcpDartFunctionArgs(args),
      throwsA(isA<ArgumentError>()),
    );
  });

  test('validate rejects mixed source modes', () {
    final args = GcpDartFunctionArgs(
      source: DartFunctionSourceArgs(
        image: DartFunctionSourceImageArgs(context: './app'.input()),
        binaryUpload: DartFunctionSourceBinaryUploadArgs(
          sourceArchive: pulumi.FileArchive('./build_deploy').input(),
          baseImageUri: 'osonly24'.input(),
        ),
      ),
    );

    expect(
      () => validateGcpDartFunctionArgs(args),
      throwsA(isA<ArgumentError>()),
    );
  });

  test('validate rejects binary upload without base image', () {
    final args = GcpDartFunctionArgs(
      source: DartFunctionSourceArgs(
        binaryUpload: DartFunctionSourceBinaryUploadArgs(
          sourceArchive: pulumi.FileArchive('./build_deploy').input(),
        ),
      ),
    );

    expect(
      () => validateGcpDartFunctionArgs(args),
      throwsA(isA<ArgumentError>()),
    );
  });
}
