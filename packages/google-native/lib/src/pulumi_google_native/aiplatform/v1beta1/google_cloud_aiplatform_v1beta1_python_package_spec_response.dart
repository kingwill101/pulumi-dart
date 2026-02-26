// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_aiplatform_v1beta1_env_var_response.dart';

/// The spec of a Python packaged code.
class GoogleCloudAiplatformV1beta1PythonPackageSpecResponse {
  /// Command line arguments to be passed to the Python task.
  final List<String> args;

  /// Environment variables to be passed to the python module. Maximum limit is 100.
  final List<GoogleCloudAiplatformV1beta1EnvVarResponse> env;

  /// The URI of a container image in Artifact Registry that will run the provided Python package. Vertex AI provides a wide range of executor images with pre-installed packages to meet users' various use cases. See the list of [pre-built containers for training](https://cloud.google.com/vertex-ai/docs/training/pre-built-containers). You must use an image from this list.
  final String executorImageUri;

  /// The Google Cloud Storage location of the Python package files which are the training program and its dependent packages. The maximum number of package URIs is 100.
  final List<String> packageUris;

  /// The Python module name to run after installing the packages.
  final String pythonModule;

  GoogleCloudAiplatformV1beta1PythonPackageSpecResponse({
    required this.args,
    required this.env,
    required this.executorImageUri,
    required this.packageUris,
    required this.pythonModule,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['args'] = args;
    map['env'] = Input.encodeList<GoogleCloudAiplatformV1beta1EnvVarResponse,
        Map<String, dynamic>>(env, (value) => value.toMap());
    map['executorImageUri'] = executorImageUri;
    map['packageUris'] = packageUris;
    map['pythonModule'] = pythonModule;
    return map;
  }

  factory GoogleCloudAiplatformV1beta1PythonPackageSpecResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1PythonPackageSpecResponse(
      args: (map['args'] as List).cast<String>(),
      env: Input.decodeList<GoogleCloudAiplatformV1beta1EnvVarResponse>(
          map['env'],
          (value) => GoogleCloudAiplatformV1beta1EnvVarResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      executorImageUri: map['executorImageUri'] as String,
      packageUris: (map['packageUris'] as List).cast<String>(),
      pythonModule: map['pythonModule'] as String,
    );
  }
}
