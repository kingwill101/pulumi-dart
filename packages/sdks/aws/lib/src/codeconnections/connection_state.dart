// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_timeouts.dart';

/// Input properties used for looking up and filtering Connection resources.
class ConnectionState {
  /// The codeconnections connection ARN.
  final pulumi.Input<String>? arn;
  /// The codeconnections connection status. Possible values are `PENDING`, `AVAILABLE` and `ERROR`.
  final pulumi.Input<String>? connectionStatus;
  /// The Amazon Resource Name (ARN) of the host associated with the connection. Conflicts with `provider_type`
  final pulumi.Input<String>? hostArn;
  /// The name of the connection to be created. The name must be unique in the calling AWS account. Changing `name` will create a new resource.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? ownerAccountId;
  /// The name of the external provider where your third-party code repository is configured. Changing `provider_type` will create a new resource. Conflicts with `host_arn`.
  final pulumi.Input<String>? providerType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of key-value resource tags to associate with the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<ConnectionTimeouts>? timeouts;

  /// Creates a new [ConnectionState].
  /// [arn] The codeconnections connection ARN.
  /// [connectionStatus] The codeconnections connection status. Possible values are `PENDING`, `AVAILABLE` and `ERROR`.
  /// [hostArn] The Amazon Resource Name (ARN) of the host associated with the connection. Conflicts with `provider_type`
  /// [name] The name of the connection to be created. The name must be unique in the calling AWS account. Changing `name` will create a new resource.
  /// [ownerAccountId] Optional.
  /// [providerType] The name of the external provider where your third-party code repository is configured. Changing `provider_type` will create a new resource. Conflicts with `host_arn`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of key-value resource tags to associate with the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  ConnectionState({
    this.arn,
    this.connectionStatus,
    this.hostArn,
    this.name,
    this.ownerAccountId,
    this.providerType,
    this.region,
    this.tags,
    this.tagsAll,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'connectionStatus': ?connectionStatus,
      'hostArn': ?hostArn,
      'name': ?name,
      'ownerAccountId': ?ownerAccountId,
      'providerType': ?providerType,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ConnectionTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory ConnectionState.fromMap(Map<String, dynamic> map) {
    return ConnectionState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      connectionStatus: map['connectionStatus'] == null ? null : (map['connectionStatus'] as String).input(),
      hostArn: map['hostArn'] == null ? null : (map['hostArn'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      ownerAccountId: map['ownerAccountId'] == null ? null : (map['ownerAccountId'] as String).input(),
      providerType: map['providerType'] == null ? null : (map['providerType'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      timeouts: map['timeouts'] == null ? null : (ConnectionTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

