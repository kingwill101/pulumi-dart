// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_pool_v1_config.dart';

/// {@template pulumi_cloudbuild_v1_worker_pool_args_doc}
/// The set of arguments for WorkerPool.
/// {@endtemplate}
/// {@macro pulumi_cloudbuild_v1_worker_pool_args_doc}
class WorkerPoolArgs {
  /// User specified annotations. See https://google.aip.dev/128#annotations for more details such as format and size limitations.
  final pulumi.Input<Map<String, String>>? annotations;

  /// A user-specified, human-readable name for the `WorkerPool`. If provided, this value must be 1-63 characters.
  final pulumi.Input<String>? displayName;
  final pulumi.Input<String>? location;

  /// Legacy Private Pool configuration.
  final pulumi.Input<PrivatePoolV1Config>? privatePoolV1Config;
  final pulumi.Input<String>? project;

  /// Required. Immutable. The ID to use for the `WorkerPool`, which will become the final component of the resource name. This value should be 1-63 characters, and valid characters are /a-z-/.
  final pulumi.Input<String> workerPoolId;

  /// Creates a new [WorkerPoolArgs].
  /// [annotations] User specified annotations. See https://google.aip.dev/128#annotations for more details such as format and size limitations.
  /// [displayName] A user-specified, human-readable name for the `WorkerPool`. If provided, this value must be 1-63 characters.
  /// [location] Optional.
  /// [privatePoolV1Config] Legacy Private Pool configuration.
  /// [project] Optional.
  /// [workerPoolId] Required. Immutable. The ID to use for the `WorkerPool`, which will become the final component of the resource name. This value should be 1-63 characters, and valid characters are /a-z-/.
  WorkerPoolArgs({
    Map<String, String>? annotations,
    String? displayName,
    String? location,
    PrivatePoolV1Config? privatePoolV1Config,
    String? project,
    required String workerPoolId,
  }) : annotations = pulumi.Input.asOptionalInput<Map<String, String>>(
         annotations,
       ),
       displayName = pulumi.Input.asOptionalInput<String>(displayName),
       location = pulumi.Input.asOptionalInput<String>(location),
       privatePoolV1Config = pulumi.Input.asOptionalInput<PrivatePoolV1Config>(
         privatePoolV1Config,
       ),
       project = pulumi.Input.asOptionalInput<String>(project),
       workerPoolId = pulumi.Input.asInput<String>(workerPoolId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'displayName': ?displayName,
      'location': ?location,
      'privatePoolV1Config':
          ?pulumi.Input.mapOptionalInputValue<
            PrivatePoolV1Config,
            Map<String, dynamic>
          >(privatePoolV1Config, (value) => value.toMap()),
      'project': ?project,
      'workerPoolId': workerPoolId,
    };
  }

  factory WorkerPoolArgs.fromMap(Map<String, dynamic> map) {
    return WorkerPoolArgs(
      annotations: map['annotations'] == null
          ? null
          : (map['annotations'] as Map).cast<String, String>(),
      displayName: map['displayName'] == null
          ? null
          : map['displayName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      privatePoolV1Config: map['privatePoolV1Config'] == null
          ? null
          : PrivatePoolV1Config.fromMap(
              (map['privatePoolV1Config'] as Map).cast<String, dynamic>(),
            ),
      project: map['project'] == null ? null : map['project'] as String,
      workerPoolId: map['workerPoolId'] as String,
    );
  }
}
