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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? connectionStatus,
    pulumi.Output<String>? hostArn,
    pulumi.Output<String>? name,
    pulumi.Output<String>? ownerAccountId,
    pulumi.Output<String>? providerType,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<ConnectionTimeouts>? timeouts,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      connectionStatus = pulumi.Input.asOptionalInput<String>(connectionStatus),
      hostArn = pulumi.Input.asOptionalInput<String>(hostArn),
      name = pulumi.Input.asOptionalInput<String>(name),
      ownerAccountId = pulumi.Input.asOptionalInput<String>(ownerAccountId),
      providerType = pulumi.Input.asOptionalInput<String>(providerType),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<ConnectionTimeouts>(timeouts);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      connectionStatus: map['connectionStatus'] == null ? null : pulumi.Output.create<String>(map['connectionStatus'] as String),
      hostArn: map['hostArn'] == null ? null : pulumi.Output.create<String>(map['hostArn'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      ownerAccountId: map['ownerAccountId'] == null ? null : pulumi.Output.create<String>(map['ownerAccountId'] as String),
      providerType: map['providerType'] == null ? null : pulumi.Output.create<String>(map['providerType'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<ConnectionTimeouts>(ConnectionTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

