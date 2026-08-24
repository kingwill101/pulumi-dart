import 'package:pulumi/pulumi.dart' as pulumi;

import '../models.dart';

/// Cloud Run scaling options.
class GcpDartFunctionScalingArgs {
  final pulumi.Input<int>? minInstanceCount;
  final pulumi.Input<int>? maxInstanceCount;

  const GcpDartFunctionScalingArgs({
    this.minInstanceCount,
    this.maxInstanceCount,
  });
}

/// Cloud Run container compute and runtime options.
class GcpDartFunctionComputeArgs {
  final pulumi.Input<String>? cpu;
  final pulumi.Input<String>? memory;
  final pulumi.Input<int>? port;
  final pulumi.Input<int>? maxInstanceRequestConcurrency;

  const GcpDartFunctionComputeArgs({
    this.cpu,
    this.memory,
    this.port,
    this.maxInstanceRequestConcurrency,
  });
}

/// Inputs for a GCP Cloud Run Dart function.
class GcpDartFunctionArgs {
  final DartFunctionSource source;
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? repositoryId;
  final pulumi.Input<String>? serviceAccount;
  final pulumi.Input<Map<String, String>>? environment;
  final pulumi.Input<Map<String, String>>? labels;
  final GcpDartFunctionScalingArgs? scaling;
  final GcpDartFunctionComputeArgs? compute;
  final bool allowUnauthenticated;

  const GcpDartFunctionArgs({
    required this.source,
    this.name,
    this.location,
    this.project,
    this.repositoryId,
    this.serviceAccount,
    this.environment,
    this.labels,
    this.scaling,
    this.compute,
    this.allowUnauthenticated = true,
  });
}

/// Validates source requirements specific to Cloud Run.
void validateGcpDartFunctionArgs(GcpDartFunctionArgs args) {
  if (args.source is AwsLambdaS3Source) {
    throw ArgumentError('AWS S3 sources are only supported by AWS Lambda.');
  }
  if (args.source case DartFunctionArchiveSource(baseImageUri: null)) {
    throw ArgumentError(
      'source.baseImageUri is required for archive deployment to Cloud Run.',
    );
  }
}
