import 'package:pulumi/pulumi.dart';

class MockEngine implements Engine {
  final List<String> errors = [];

  @override
  Future<void> log(LogRequest request) async {
    if (request.severity == LogSeverity.error) {
      errors.add(request.message);
    }
  }

  @override
  Future<void> requirePulumiVersion(String versionRange) async {}
}
