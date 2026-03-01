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
    pulumi.Output<String>? connectionFunctionArn,
    pulumi.Output<String>? connectionFunctionCode,
    pulumi.Output<ConnectionFunctionConnectionFunctionConfig>? connectionFunctionConfig,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? liveStageEtag,
    pulumi.Output<String>? name,
    pulumi.Output<bool>? publish,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      connectionFunctionArn = pulumi.Input.asOptionalInput<String>(connectionFunctionArn),
      connectionFunctionCode = pulumi.Input.asOptionalInput<String>(connectionFunctionCode),
      connectionFunctionConfig = pulumi.Input.asOptionalInput<ConnectionFunctionConnectionFunctionConfig>(connectionFunctionConfig),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      liveStageEtag = pulumi.Input.asOptionalInput<String>(liveStageEtag),
      name = pulumi.Input.asOptionalInput<String>(name),
      publish = pulumi.Input.asOptionalInput<bool>(publish),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      connectionFunctionArn: map['connectionFunctionArn'] == null ? null : pulumi.Output.create<String>(map['connectionFunctionArn'] as String),
      connectionFunctionCode: map['connectionFunctionCode'] == null ? null : pulumi.Output.create<String>(map['connectionFunctionCode'] as String),
      connectionFunctionConfig: map['connectionFunctionConfig'] == null ? null : pulumi.Output.create<ConnectionFunctionConnectionFunctionConfig>(ConnectionFunctionConnectionFunctionConfig.fromMap((map['connectionFunctionConfig'] as Map).cast<String, dynamic>())),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      liveStageEtag: map['liveStageEtag'] == null ? null : pulumi.Output.create<String>(map['liveStageEtag'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      publish: map['publish'] == null ? null : pulumi.Output.create<bool>(map['publish'] as bool),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

