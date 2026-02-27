// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'build_artifact_response.dart';
import 'delivery_pipeline_response.dart';
import 'release_condition_response.dart';
import 'target_response.dart';

/// Result data returned by getRelease.
class GetReleaseResult {
  /// Indicates whether this is an abandoned release.
  final bool abandoned;

  /// User annotations. These attributes can only be set and used by the user, and not by Cloud Deploy. See https://google.aip.dev/128#annotations for more details such as format and size limitations.
  final Map<String, String> annotations;

  /// List of artifacts to pass through to Skaffold command.
  final List<BuildArtifactResponse> buildArtifacts;

  /// Information around the state of the Release.
  final ReleaseConditionResponse condition;

  /// Time at which the `Release` was created.
  final String createTime;

  /// Snapshot of the parent pipeline taken at release creation time.
  final DeliveryPipelineResponse deliveryPipelineSnapshot;

  /// Optional. The deploy parameters to use for all targets in this release.
  final Map<String, String> deployParameters;

  /// Description of the `Release`. Max length is 255 characters.
  final String description;

  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final String etag;

  /// Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be <= 128 bytes.
  final Map<String, String> labels;

  /// Optional. Name of the `Release`. Format is `projects/{project}/locations/{location}/deliveryPipelines/{deliveryPipeline}/releases/a-z{0,62}`.
  final String name;

  /// Time at which the render completed.
  final String renderEndTime;

  /// Time at which the render began.
  final String renderStartTime;

  /// Current state of the render operation.
  final String renderState;

  /// Filepath of the Skaffold config inside of the config URI.
  final String skaffoldConfigPath;

  /// Cloud Storage URI of tar.gz archive containing Skaffold configuration.
  final String skaffoldConfigUri;

  /// The Skaffold version to use when operating on this release, such as "1.20.0". Not all versions are valid; Cloud Deploy supports a specific set of versions. If unset, the most recent supported Skaffold version will be used.
  final String skaffoldVersion;

  /// Map from target ID to the target artifacts created during the render operation.
  final Map<String, String> targetArtifacts;

  /// Map from target ID to details of the render operation for that target.
  final Map<String, String> targetRenders;

  /// Snapshot of the targets taken at release creation time.
  final List<TargetResponse> targetSnapshots;

  /// Unique identifier of the `Release`.
  final String uid;

  GetReleaseResult({
    required this.abandoned,
    required this.annotations,
    required this.buildArtifacts,
    required this.condition,
    required this.createTime,
    required this.deliveryPipelineSnapshot,
    required this.deployParameters,
    required this.description,
    required this.etag,
    required this.labels,
    required this.name,
    required this.renderEndTime,
    required this.renderStartTime,
    required this.renderState,
    required this.skaffoldConfigPath,
    required this.skaffoldConfigUri,
    required this.skaffoldVersion,
    required this.targetArtifacts,
    required this.targetRenders,
    required this.targetSnapshots,
    required this.uid,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['abandoned'] = abandoned;
    map['annotations'] = annotations;
    map['buildArtifacts'] =
        Input.encodeList<BuildArtifactResponse, Map<String, dynamic>>(
            buildArtifacts, (value) => value.toMap());
    map['condition'] = condition.toMap();
    map['createTime'] = createTime;
    map['deliveryPipelineSnapshot'] = deliveryPipelineSnapshot.toMap();
    map['deployParameters'] = deployParameters;
    map['description'] = description;
    map['etag'] = etag;
    map['labels'] = labels;
    map['name'] = name;
    map['renderEndTime'] = renderEndTime;
    map['renderStartTime'] = renderStartTime;
    map['renderState'] = renderState;
    map['skaffoldConfigPath'] = skaffoldConfigPath;
    map['skaffoldConfigUri'] = skaffoldConfigUri;
    map['skaffoldVersion'] = skaffoldVersion;
    map['targetArtifacts'] = targetArtifacts;
    map['targetRenders'] = targetRenders;
    map['targetSnapshots'] =
        Input.encodeList<TargetResponse, Map<String, dynamic>>(
            targetSnapshots, (value) => value.toMap());
    map['uid'] = uid;
    return map;
  }

  factory GetReleaseResult.fromMap(Map<String, dynamic> map) {
    return GetReleaseResult(
      abandoned: map['abandoned'] as bool,
      annotations: (map['annotations'] as Map).cast<String, String>(),
      buildArtifacts: Input.decodeList<BuildArtifactResponse>(
          map['buildArtifacts'],
          (value) => BuildArtifactResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      condition: ReleaseConditionResponse.fromMap(
          (map['condition'] as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      deliveryPipelineSnapshot: DeliveryPipelineResponse.fromMap(
          (map['deliveryPipelineSnapshot'] as Map).cast<String, dynamic>()),
      deployParameters: (map['deployParameters'] as Map).cast<String, String>(),
      description: map['description'] as String,
      etag: map['etag'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      renderEndTime: map['renderEndTime'] as String,
      renderStartTime: map['renderStartTime'] as String,
      renderState: map['renderState'] as String,
      skaffoldConfigPath: map['skaffoldConfigPath'] as String,
      skaffoldConfigUri: map['skaffoldConfigUri'] as String,
      skaffoldVersion: map['skaffoldVersion'] as String,
      targetArtifacts: (map['targetArtifacts'] as Map).cast<String, String>(),
      targetRenders: (map['targetRenders'] as Map).cast<String, String>(),
      targetSnapshots: Input.decodeList<TargetResponse>(
          map['targetSnapshots'],
          (value) =>
              TargetResponse.fromMap((value as Map).cast<String, dynamic>())),
      uid: map['uid'] as String,
    );
  }
}
