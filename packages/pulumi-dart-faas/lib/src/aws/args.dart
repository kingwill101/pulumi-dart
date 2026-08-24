import 'package:pulumi/pulumi.dart' as pulumi;

import '../models.dart';

/// Inputs for an AWS Lambda Dart function.
class DartFunctionArgs {
  final DartFunctionSource source;
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? architecture;
  final pulumi.Input<int>? memorySize;
  final pulumi.Input<int>? timeout;
  final pulumi.Input<Map<String, String>>? environment;
  final pulumi.Input<Map<String, String>>? tags;
  final DartFunctionHttpArgs? http;

  const DartFunctionArgs({
    required this.source,
    this.name,
    this.architecture,
    this.memorySize,
    this.timeout,
    this.environment,
    this.tags,
    this.http,
  });
}

/// Validates AWS Lambda function arguments.
void validateDartFunctionArgs(DartFunctionArgs args) {}
