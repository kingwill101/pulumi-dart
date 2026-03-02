// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_function_connection_function_config.dart';

/// Input properties used for looking up and filtering ConnectionFunction resources.
class ConnectionFunctionState {
  /// ARN of the connection function.
  final pulumi.Input<String>? connectionFunctionArn;
  /// Code for the connection function. Maximum length is 40960 characters.
  final pulumi.Input<String>? connectionFunctionCode;
  /// Configuration information for the connection function. See `connection_function_config` below.
  final pulumi.Input<ConnectionFunctionConnectionFunctionConfig>? connectionFunctionConfig;
  /// ETag of the connection function.
  final pulumi.Input<String>? etag;
  /// ETag of the function's LIVE stage. Will be empty if the function has not been published.
  final pulumi.Input<String>? liveStageEtag;
  /// Name for the connection function. Must be 1-64 characters and can contain letters, numbers, hyphens, and underscores. Changing this forces a new resource to be created.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Whether to publish the function to the `LIVE` stage after creation or update. Defaults to `false`.
  final pulumi.Input<bool>? publish;
  /// Status of the connection function.
  final pulumi.Input<String>? status;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [ConnectionFunctionState].
  /// [connectionFunctionArn] ARN of the connection function.
  /// [connectionFunctionCode] Code for the connection function. Maximum length is 40960 characters.
  /// [connectionFunctionConfig] Configuration information for the connection function. See `connection_function_config` below.
  /// [etag] ETag of the connection function.
  /// [liveStageEtag] ETag of the function's LIVE stage. Will be empty if the function has not been published.
  /// [name] Name for the connection function. Must be 1-64 characters and can contain letters, numbers, hyphens, and underscores. Changing this forces a new resource to be created.
  /// [publish] Whether to publish the function to the `LIVE` stage after creation or update. Defaults to `false`.
  /// [status] Status of the connection function.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  ConnectionFunctionState({
    this.connectionFunctionArn,
    this.connectionFunctionCode,
    this.connectionFunctionConfig,
    this.etag,
    this.liveStageEtag,
    this.name,
    this.publish,
    this.status,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionFunctionArn': ?connectionFunctionArn,
      'connectionFunctionCode': ?connectionFunctionCode,
      'connectionFunctionConfig': ?pulumi.Input.mapOptionalInputValue<ConnectionFunctionConnectionFunctionConfig, Map<String, dynamic>>(connectionFunctionConfig, (value) => value.toMap()),
      'etag': ?etag,
      'liveStageEtag': ?liveStageEtag,
      'name': ?name,
      'publish': ?publish,
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ConnectionFunctionState.fromMap(Map<String, dynamic> map) {
    return ConnectionFunctionState(
      connectionFunctionArn: map['connectionFunctionArn'] == null ? null : (map['connectionFunctionArn'] as String).input(),
      connectionFunctionCode: map['connectionFunctionCode'] == null ? null : (map['connectionFunctionCode'] as String).input(),
      connectionFunctionConfig: map['connectionFunctionConfig'] == null ? null : (ConnectionFunctionConnectionFunctionConfig.fromMap((map['connectionFunctionConfig'] as Map).cast<String, dynamic>())).input(),
      etag: map['etag'] == null ? null : (map['etag'] as String).input(),
      liveStageEtag: map['liveStageEtag'] == null ? null : (map['liveStageEtag'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      publish: map['publish'] == null ? null : (map['publish'] as bool).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

