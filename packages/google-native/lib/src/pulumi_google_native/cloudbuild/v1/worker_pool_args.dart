// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'private_pool_v1_config.dart';

/// The set of arguments for WorkerPool.
class WorkerPoolArgs {
  /// User specified annotations. See https://google.aip.dev/128#annotations for more details such as format and size limitations.
  final Input<Map<String, String>>? annotations;

  /// A user-specified, human-readable name for the `WorkerPool`. If provided, this value must be 1-63 characters.
  final Input<String>? displayName;
  final Input<String>? location;

  /// Legacy Private Pool configuration.
  final Input<PrivatePoolV1Config>? privatePoolV1Config;
  final Input<String>? project;

  /// Required. Immutable. The ID to use for the `WorkerPool`, which will become the final component of the resource name. This value should be 1-63 characters, and valid characters are /a-z-/.
  final Input<String> workerPoolId;

  WorkerPoolArgs({
    this.annotations,
    this.displayName,
    this.location,
    this.privatePoolV1Config,
    this.project,
    required this.workerPoolId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final privatePoolV1ConfigValue = privatePoolV1Config;
    if (privatePoolV1ConfigValue != null) {
      map['privatePoolV1Config'] = Input.mapOptionalInputValue<
              PrivatePoolV1Config, Map<String, dynamic>>(
          privatePoolV1ConfigValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['workerPoolId'] = workerPoolId;
    return map;
  }

  factory WorkerPoolArgs.fromMap(Map<String, dynamic> map) {
    return WorkerPoolArgs(
      annotations:
          Input.asOptionalInput<Map<String, String>>(map['annotations']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      location: Input.asOptionalInput<String>(map['location']),
      privatePoolV1Config: Input.asOptionalInput<PrivatePoolV1Config>(
          map['privatePoolV1Config']),
      project: Input.asOptionalInput<String>(map['project']),
      workerPoolId: Input.asInput<String>(map['workerPoolId']),
    );
  }
}
