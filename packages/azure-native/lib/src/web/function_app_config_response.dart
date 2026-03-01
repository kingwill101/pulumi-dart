// ignore_for_file: unused_element, unnecessary_cast

import 'functions_deployment_response.dart';
import 'functions_runtime_response.dart';
import 'functions_scale_and_concurrency_response.dart';

/// Function app configuration.
class FunctionAppConfigResponse {
  /// Function app deployment configuration.
  final FunctionsDeploymentResponse? deployment;
  /// Function app runtime settings.
  final FunctionsRuntimeResponse? runtime;
  /// Function app scale and concurrency settings.
  final FunctionsScaleAndConcurrencyResponse? scaleAndConcurrency;

  /// Creates a new [FunctionAppConfigResponse].
  /// [deployment] Function app deployment configuration.
  /// [runtime] Function app runtime settings.
  /// [scaleAndConcurrency] Function app scale and concurrency settings.
  FunctionAppConfigResponse({
    this.deployment,
    this.runtime,
    this.scaleAndConcurrency,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deployment': ?deployment == null ? null : deployment!.toMap(),
      'runtime': ?runtime == null ? null : runtime!.toMap(),
      'scaleAndConcurrency': ?scaleAndConcurrency == null ? null : scaleAndConcurrency!.toMap(),
    };
  }

  factory FunctionAppConfigResponse.fromMap(Map<String, dynamic> map) {
    return FunctionAppConfigResponse(
      deployment: map['deployment'] == null ? null : FunctionsDeploymentResponse.fromMap((map['deployment'] as Map).cast<String, dynamic>()),
      runtime: map['runtime'] == null ? null : FunctionsRuntimeResponse.fromMap((map['runtime'] as Map).cast<String, dynamic>()),
      scaleAndConcurrency: map['scaleAndConcurrency'] == null ? null : FunctionsScaleAndConcurrencyResponse.fromMap((map['scaleAndConcurrency'] as Map).cast<String, dynamic>()),
    );
  }
}

